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
#include "xparameters.h"
#include "sleep.h"

#define C_BASEADDR 0x43C00000

int main() {
	init_platform();

	u16 data = 1;
	u16 data6 = 0;
	u16 data7 = 0;
	u16 data14 = 0;
	u16 data15 = 0;

	print("Hello World\n\r");
	print("Successfully ran Hello World application\n\r");

	while (1) {
		data6 = Xil_In32(C_BASEADDR + 0x258);
		data7 = Xil_In32(C_BASEADDR + 0x25C);
		data14 = Xil_In32(C_BASEADDR + 0x278);
		data15 = Xil_In32(C_BASEADDR + 0x27C);
		data = Xil_In32(C_BASEADDR + 0x20C);  // VP/VN register

		data = (data * 0.0152588);
		data6 = (data6 * 0.0152588);
		data7 = (data7 * 0.0152588);
		data14 = (data14 * 0.0152588);
		data15 = (data15 * 0.0152588);

		xil_printf("Input Voltage = %03dmv\n\r", data);
		xil_printf("data6 = %03dmv\n\r", data6);
		xil_printf("data7 = %03dmv\n\r", data7);
		xil_printf("data14 = %03dmv\n\r", data14);
		xil_printf("data15 = %03dmv\n\r", data15);

		usleep(500000);

	}

	cleanup_platform();
	return 0;
}
