/******************************************************************************
 *
 * Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 ******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xgpio.h"
#include "xtmrctr.h"
#include "xscugic.h"
#include "sleep.h"

XGpio LedInst;
XTmrCtr my_Timer;

static int led_data;

//-----------------------------------
// Prototype functions
//-----------------------------------
void my_interruption_Timer(void *CallbackRef);
void my_interruption_Btn_0(void *CallbackRef);
void my_interruption_Btn_1(void *CallbackRef);
void my_interruption_Sw(void *CallbackRef);

//-----------------------------------
// Initial Setup Function
//-----------------------------------

int interrupts_init() {

	int status;

	//------------ Interruption config --------------
	XScuGic my_Gic;
	XScuGic_Config *GicConfig;

	// GIC initialization (General Interrupt Controller)
	GicConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	status = XScuGic_CfgInitialize(&my_Gic, GicConfig,
			GicConfig->CpuBaseAddress); // Initialize the GIC using config information
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Timer initialization
	status = XTmrCtr_Initialize(&my_Timer, XPAR_TMRCTR_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	XTmrCtr_SetHandler(&my_Timer, (XTmrCtr_Handler) my_interruption_Timer,
			(void *) &my_Timer);
	XTmrCtr_SetResetValue(&my_Timer, 0, (2 ^ 32) - 12500000); // Time = (2^bits_timer - Counter)*Tperiod (AXI Frequency)
	XTmrCtr_SetOptions(&my_Timer, 0,
	XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);
	XTmrCtr_Start(&my_Timer, 0);

	//-------------- Priority assigment ----------------
	// 0 is highest priority, 0xFB(248) is lowest. Step of 8 (0,8,16,...248)
	XScuGic_SetPriorityTriggerType(&my_Gic, XPS_FPGA0_INT_ID, 0x18, 0x1); // AXI TIMER (Priority 24) High priority     // High level
	XScuGic_SetPriorityTriggerType(&my_Gic, XPS_FPGA1_INT_ID, 0x20, 0x2); // BTN 0 (Priority 32)                       // Falling Edge
	XScuGic_SetPriorityTriggerType(&my_Gic, XPS_FPGA2_INT_ID, 0x28, 0x3); // SW 0 (Priority 40) Low priority           // Rising Edge
	XScuGic_SetPriorityTriggerType(&my_Gic, XPS_FPGA3_INT_ID, 0x22, 0x1); // SW 0 (Priority 34) Low priority           // Rising Edge

	//--------------- Interruption correction of Drivers ------------
	// IRQ Interruption conection
	status = XScuGic_Connect(&my_Gic, XPS_FPGA0_INT_ID,
			(Xil_ExceptionHandler) my_interruption_Timer, (void *) &my_Gic); // Connect our interrupt handler for our IRQ (TIMER 0)
	if (status != XST_SUCCESS)
		return XST_FAILURE;
	XScuGic_Enable(&my_Gic, XPS_FPGA0_INT_ID); // Enable the interrupt "input" on the GIC for the external IRQ

	status = XScuGic_Connect(&my_Gic, XPS_FPGA1_INT_ID,
			(Xil_ExceptionHandler) my_interruption_Btn_0, (void *) &my_Gic); // Connect our interrupt handler for our IRQ (BTN 0)
	if (status != XST_SUCCESS)
		return XST_FAILURE;
	XScuGic_Enable(&my_Gic, XPS_FPGA1_INT_ID); // Enable the interrupt "input" on the GIC for the external IRQ

	status = XScuGic_Connect(&my_Gic, XPS_FPGA2_INT_ID,
			(Xil_ExceptionHandler) my_interruption_Sw, (void *) &my_Gic); // Connect our interrupt handler for our IRQ (SW 0)
	if (status != XST_SUCCESS)
		return XST_FAILURE;
	XScuGic_Enable(&my_Gic, XPS_FPGA2_INT_ID); // Enable the interrupt "input" on the GIC for the external IRQ

	status = XScuGic_Connect(&my_Gic, XPS_FPGA3_INT_ID,
			(Xil_ExceptionHandler) my_interruption_Btn_1, (void *) &my_Gic); // Connect our interrupt handler for our IRQ (BTN 1)
	if (status != XST_SUCCESS)
		return XST_FAILURE;
	XScuGic_Enable(&my_Gic, XPS_FPGA3_INT_ID); // Enable the interrupt "input" on the GIC for the external IRQ

	// ---------------- Interruption system configuration ------------------
	Xil_ExceptionInit(); // initialize the exception table
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler, &my_Gic); // Register the interrupt controller handler witj the exception table.
	Xil_ExceptionEnable()
	; // Enable exceptions

	return XST_SUCCESS;

}

int main() {
	init_platform();

	led_data = 0;

	int status;

	// initialize LEDs
	status = XGpio_Initialize(&LedInst, XPAR_AXI_GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Set Leds direction to outputs
	XGpio_SetDataDirection(&LedInst, 1, 0x00);

	// Initialize interrupt controller
	status = interrupts_init();
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	print("Hello World\n\r");
	print("Successfully ran Hello World application\n\r");
	print("Interrupt control by Fabian Castano\n\r");

	while (1)
		;

	cleanup_platform();
	return 0;
}

//-------------------------
// INTERRUPT HANDLER FUNTION
// - called by the timer, interrupt, performs
// - Led flashing
//-------------------------
void my_interruption_Timer(void *CallbackRef) {
	if (XTmrCtr_IsExpired(&my_Timer, 0)) {

		XTmrCtr_Stop(&my_Timer, 0);

		led_data++;
		led_data &= 0x07;
		XGpio_DiscreteWrite(&LedInst, 1, led_data);

		XTmrCtr_Reset(&my_Timer, 0);
		XTmrCtr_Start(&my_Timer, 0);
	}
}

void my_interruption_Btn_0(void *CallbackRef) {
	xil_printf("Button 0 pressed\n\r");
}

void my_interruption_Sw(void *CallbackRef) {
	xil_printf("Switch changed\n\r");
}

void my_interruption_Btn_1(void *CallbackRef) {

	led_data |= 0x08;
	XGpio_DiscreteWrite(&LedInst, 1, led_data);

	xil_printf("Button 1 pressed\n\r");
}

