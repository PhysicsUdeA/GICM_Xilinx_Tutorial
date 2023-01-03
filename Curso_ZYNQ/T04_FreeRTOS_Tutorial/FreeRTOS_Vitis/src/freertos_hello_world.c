/*
 Copyright (C) 2017 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 Copyright (c) 2012 - 2022 Xilinx, Inc. All Rights Reserved.
 SPDX-License-Identifier: MIT


 http://www.FreeRTOS.org
 http://aws.amazon.com/freertos


 1 tab == 4 spaces!
 */

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
/* Xilinx includes. */
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"

#include <stdlib.h>
#include <limits.h>

#define TIMER_ID	1
#define DELAY_10_SECONDS	10000UL
#define DELAY_1_SECOND		1000UL
#define TIMER_CHECK_THRESHOLD	9

#define C_BASEADDR_GPIO  0x41200000
/*-----------------------------------------------------------*/

/* The Tx and Rx tasks as described at the top of this file. */
static void prvTxTask(void *pvParameters);
static void prvRxTask(void *pvParameters);
static void vTimerCallback(TimerHandle_t pxTimer);

static void Task_01(void *pvParameters);
static void Task_02(void *pvParameters);
static void Task_03(void *pvParameters);
static void Task_04(void *pvParameters);

char *int2bin(unsigned n, char *buf);
/*-----------------------------------------------------------*/

/* The queue used by the Tx and Rx tasks, as described at the top of this
 file. */
static TaskHandle_t xTxTask;
static TaskHandle_t xRxTask;
static QueueHandle_t xQueue = NULL;
static TimerHandle_t xTimer = NULL;
char HWstring[15] = "Hello World";
long RxtaskCntr = 0;

XGpio LedInst;

static int led_data;

#if (configSUPPORT_STATIC_ALLOCATION == 1)
#define QUEUE_BUFFER_SIZE		100

uint8_t ucQueueStorageArea[ QUEUE_BUFFER_SIZE ];
StackType_t xStack1[ configMINIMAL_STACK_SIZE ];
StackType_t xStack2[ configMINIMAL_STACK_SIZE ];
StaticTask_t xTxBuffer,xRxBuffer;
StaticTimer_t xTimerBuffer;
static StaticQueue_t xStaticQueue;
#endif

int main(void) {
	const TickType_t x10seconds = pdMS_TO_TICKS(DELAY_10_SECONDS);

	xil_printf("Hello from Freertos example main\r\n");

	int status;

	// initialize LEDs
	status = XGpio_Initialize(&LedInst, XPAR_AXI_GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// Set Leds direction to outputs
	XGpio_SetDataDirection(&LedInst, 1, 0x00);

	// Initialize interrupt controller

#if ( configSUPPORT_STATIC_ALLOCATION == 0 ) /* Normal or standard use case */
	/* Create the two tasks.  The Tx task is given a lower priority than the
	 Rx task, so the Rx task will leave the Blocked state and pre-empt the Tx
	 task as soon as the Tx task places an item in the queue. */
	xTaskCreate(prvTxTask, /* The function that implements the task. */
	(const char *) "Tx", /* Text name for the task, provided to assist debugging only. */
	configMINIMAL_STACK_SIZE, /* The stack allocated to the task. */
	NULL, /* The task parameter is not used, so set to NULL. */
	tskIDLE_PRIORITY, /* The task runs at the idle priority. */
	&xTxTask);

	xTaskCreate(prvRxTask, (const char *) "GB",
	configMINIMAL_STACK_SIZE,
	NULL,
	tskIDLE_PRIORITY + 1, &xRxTask);

	xTaskCreate(Task_01, "Task 01", 256, NULL, 1, NULL);
	xTaskCreate(Task_02, "Task 02", 256, NULL, 1, NULL);
	xTaskCreate(Task_03, "Task 03", 256, NULL, 1, NULL);
	xTaskCreate(Task_04, "Task 04", 256, NULL, 1, NULL);

	/* Create the queue used by the tasks.  The Rx task has a higher priority
	 than the Tx task, so will preempt the Tx task and remove values from the
	 queue as soon as the Tx task writes to the queue - therefore the queue can
	 never have more than one item in it. */
	xQueue = xQueueCreate(1, /* There is only one space in the queue. */
	sizeof(HWstring)); /* Each space in the queue is large enough to hold a uint32_t. */

	/* Check the queue was created. */
	configASSERT(xQueue);

	/* Create a timer with a timer expiry of 10 seconds. The timer would expire
	 after 10 seconds and the timer call back would get called. In the timer call back
	 checks are done to ensure that the tasks have been running properly till then.
	 The tasks are deleted in the timer call back and a message is printed to convey that
	 the example has run successfully.
	 The timer expiry is set to 10 seconds and the timer set to not auto reload. */
	xTimer = xTimerCreate((const char *) "Timer", x10seconds,
	pdFALSE, (void *) TIMER_ID, vTimerCallback);
	/* Check the timer was created. */
	configASSERT(xTimer);

#else /* Use case where memories for tasks/queues/timers etc are provided statically by the users */
	xil_printf( "Using static memory for tasks, queue and timer creations. \r\n" );
	xTxTask = xTaskCreateStatic( prvTxTask, /* The function that implements the task. */
			( const char * ) "Tx", /* Text name for the task, provided to assist debugging only. */
			configMINIMAL_STACK_SIZE, /* The stack allocated to the task. */
			( void * ) NULL, /* The task parameter is not used, so set to NULL. */
			tskIDLE_PRIORITY, /* The task runs at the idle priority. */
			xStack1, /* Array to use the task's stack  */
			&xTxBuffer ); /* variable to hold the task data structure */
	xRxTask = xTaskCreateStatic( prvRxTask,
			( const char * ) "Rx",
			configMINIMAL_STACK_SIZE,
			( void * ) NULL,
			tskIDLE_PRIORITY + 1,
			xStack2,
			&xRxBuffer );

	xQueue = xQueueCreateStatic( 1, /* Number of items in the queue. */
			sizeof( HWstring ), /*size for each item to be stored in queue */
			ucQueueStorageArea, /* Buffer to store the queue items*/
			&xStaticQueue); /* Each space in the queue is large enough to hold a 1 byte. */
	/* Check the queue was created. */
	configASSERT( xQueue );
	xTimer = xTimerCreateStatic( (const char *) "Timer",
			x10seconds,
			pdFALSE,
			(void *) TIMER_ID,
			vTimerCallback,
			&xTimerBuffer);
	/* Check the timer was created. */
	configASSERT( xTimer );

#endif

	/* start the timer with a block time of 0 ticks. This means as soon
	 as the schedule starts the timer will start running and will expire after
	 10 seconds */
	xTimerStart(xTimer, 0);

	/* Start the tasks and timer running. */
	vTaskStartScheduler();

	/* If all is well, the scheduler will now be running, and the following line
	 will never be reached.  If the following line does execute, then there was
	 insufficient FreeRTOS heap memory available for the idle and/or timer tasks
	 to be created.  See the memory management section on the FreeRTOS web site
	 for more details. */
	for (;;)
		;
}

/*-----------------------------------------------------------*/
static void prvTxTask(void *pvParameters) {
	const TickType_t x1second = pdMS_TO_TICKS(DELAY_1_SECOND);

	for (;;) {
		/* Delay for 1 second. */
		vTaskDelay(x1second);

		/* Send the next value on the queue.  The queue should always be
		 empty at this point so a block time of 0 is used. */
		xQueueSend(xQueue, /* The queue being written to. */
		HWstring, /* The address of the data being sent. */
		0UL); /* The block time. */
	}
}

/*-----------------------------------------------------------*/
static void prvRxTask(void *pvParameters) {
	char Recdstring[15] = "";

	for (;;) {
		/* Block to wait for data arriving on the queue. */
		xQueueReceive(xQueue, /* The queue being read. */
		Recdstring, /* Data is read into this address. */
		portMAX_DELAY); /* Wait without a timeout for data. */

		/* Print the received data. */
		xil_printf("Rx task received string from Tx task: %s\r\n", Recdstring);
		RxtaskCntr++;
	}
}

/*-----------------------------------------------------------*/
static void Task_01(void *pvParameters) {

	while (1) {

		led_data |= 0x1;
		XGpio_DiscreteWrite(&LedInst, 1, led_data);
		vTaskDelay(pdMS_TO_TICKS(250));
		led_data &= 0xE;
		XGpio_DiscreteWrite(&LedInst, 1, led_data);
		vTaskDelay(pdMS_TO_TICKS(250));

		xil_printf("LED_1 = %s\n\r", int2bin(led_data, NULL));
	}
}

/*-----------------------------------------------------------*/
static void Task_02(void *pvParameters) {

	while (1) {

		led_data |= 0x2;
		XGpio_DiscreteWrite(&LedInst, 1, led_data);
		vTaskDelay(pdMS_TO_TICKS(500));
		led_data &= 0xD;
		XGpio_DiscreteWrite(&LedInst, 1, led_data);
		vTaskDelay(pdMS_TO_TICKS(500));

		xil_printf("LED_2 = %s\n\r", int2bin(led_data, NULL));
	}
}

/*-----------------------------------------------------------*/
static void Task_03(void *pvParameters) {

	while (1) {

		led_data |= 0x4;
		XGpio_DiscreteWrite(&LedInst, 1, led_data);
		vTaskDelay(pdMS_TO_TICKS(1000));
		led_data &= 0xB;
		XGpio_DiscreteWrite(&LedInst, 1, led_data);
		vTaskDelay(pdMS_TO_TICKS(1000));

		xil_printf("LED_3 = %s\n\r", int2bin(led_data, NULL));
	}
}

/*-----------------------------------------------------------*/
static void Task_04(void *pvParameters) {

	while (1) {

		led_data |= 0x8;
		XGpio_DiscreteWrite(&LedInst, 1, led_data);
		vTaskDelay(pdMS_TO_TICKS(2000));
		led_data &= 0x7;
		XGpio_DiscreteWrite(&LedInst, 1, led_data);
		vTaskDelay(pdMS_TO_TICKS(2000));

		xil_printf("LED_4 = %s\n\r", int2bin(led_data, NULL));
	}
}

/*-----------------------------------------------------------*/
static void vTimerCallback(TimerHandle_t pxTimer) {
	long lTimerId;
	configASSERT(pxTimer);

	lTimerId = (long) pvTimerGetTimerID(pxTimer);

	if (lTimerId != TIMER_ID) {
		xil_printf("FreeRTOS Hello World Example FAILED");
	}

	/* If the RxtaskCntr is updated every time the Rx task is called. The
	 Rx task is called every time the Tx task sends a message. The Tx task
	 sends a message every 1 second.
	 The timer expires after 10 seconds. We expect the RxtaskCntr to at least
	 have a value of 9 (TIMER_CHECK_THRESHOLD) when the timer expires. */
	if (RxtaskCntr >= TIMER_CHECK_THRESHOLD) {
		xil_printf("Successfully ran FreeRTOS Hello World Example");
	} else {
		xil_printf("FreeRTOS Hello World Example FAILED");
	}

	vTaskDelete(xRxTask);
	vTaskDelete(xTxTask);
}

/*-----------------------------------------------------------*/
char *int2bin(unsigned n, char *buf) {
#define BITS 4 // (sizeof(n) * CHAR_BIT)

	static char static_buf[BITS + 1];
	int i;

	if (buf == NULL)
		buf = static_buf;

	for (i = BITS - 1; i >= 0; --i) {
		buf[i] = (n & 1) ? '1' : '0';
		n >>= 1;
	}

	buf[BITS] = '\0';
	return buf;

#undef BITS
}

