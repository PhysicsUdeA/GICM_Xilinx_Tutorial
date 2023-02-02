/*
* AXI DMA in Simple Mode by interrupts
*
* Author(s):
* * Rodrigo A. Melo
* * L. Garcia
* Copyright (c) 2018 Authors and INTI
* Distributed under the BSD 3-Clause License
*/

#include "xaxidma.h"
#include "xscugic.h"

#define DDR_BASE_ADDR  XPAR_PS7_DDR_0_S_AXI_BASEADDR
#define TX_BASE_ADDR   DDR_BASE_ADDR + 0x01000000
#define RX_BASE_ADDR   TX_BASE_ADDR + 0x04000000 // 64M

//Select one or add your own size
//#define data_t         u8
//#define data_t         u16
#define data_t         u32
//#define data_t         u64

// Max when "Width of buffer length register" is 26 bits
#define BYTES          (64*1024*1024-1)
#define SAMPLES        BYTES / sizeof(data_t)

XAxiDma dma;
XScuGic intc;

volatile int tx_int, rx_int, err_int;

//Define TX Interruption Handler
void tx_isr_handler(void *callback) {
   int status;
   XAxiDma *axidma = (XAxiDma *)callback;

   xil_printf("INFO: TX interrupt!\r\n");
   // Disable interrupts
   XAxiDma_IntrDisable(axidma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
   XAxiDma_IntrDisable(axidma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
   // Read pending interrupts
   status = XAxiDma_IntrGetIrq(axidma, XAXIDMA_DMA_TO_DEVICE);
   // Acknowledge pending interrupts
   XAxiDma_IntrAckIrq(axidma, status, XAXIDMA_DMA_TO_DEVICE);
   // If no interrupt is asserted, nothing to do
   if (!(status & XAXIDMA_IRQ_ALL_MASK)) return;
   // Reset DMA engine if there was an error
   if (status & XAXIDMA_IRQ_ERROR_MASK) {
      err_int = 1;
      XAxiDma_Reset(axidma);
      while (!XAxiDma_ResetIsDone(axidma))
      return;
   }
   if (status & XAXIDMA_IRQ_IOC_MASK) {
      tx_int = 1;
   }
   XAxiDma_IntrEnable(axidma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
   XAxiDma_IntrEnable(axidma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
}

//Define RX Interruption Handler
void rx_isr_handler(void *callback) {
   int status;
   XAxiDma *axidma = (XAxiDma *)callback;

   xil_printf("INFO: RX interrupt!\r\n");
   // Disable interrupts
   XAxiDma_IntrDisable(axidma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
   XAxiDma_IntrDisable(axidma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
   // Read pending interrupts
   status = XAxiDma_IntrGetIrq(axidma, XAXIDMA_DEVICE_TO_DMA);
   // Acknowledge pending interrupts
   XAxiDma_IntrAckIrq(axidma, status, XAXIDMA_DEVICE_TO_DMA);
   // If no interrupt is asserted, nothing to do
   if (!(status & XAXIDMA_IRQ_ALL_MASK)) return;
   // Reset DMA engine if there was an error
   if (status & XAXIDMA_IRQ_ERROR_MASK) {
      err_int = 1;
      XAxiDma_Reset(axidma);
      while (!XAxiDma_ResetIsDone(axidma))
      return;
   }
   if (status & XAXIDMA_IRQ_IOC_MASK) {
      rx_int = 1;
   }
   XAxiDma_IntrEnable(axidma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
   XAxiDma_IntrEnable(axidma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
}

//Interruption initialization function
int intc_init(int device_id, int tx_int_id, int rx_int_id) {
    int status;
    XScuGic_Config *cfg;

    cfg = XScuGic_LookupConfig(device_id);
    if (cfg == NULL) {
       xil_printf("No configuration found for INT Controller with device ID %d\r\n", device_id);
       return XST_FAILURE;
    }
    status = XScuGic_CfgInitialize(&intc, cfg, cfg->CpuBaseAddress);
    if (status != XST_SUCCESS) {
       xil_printf("INT Controller configuration failed\r\n");
       return XST_FAILURE;
    }
    XScuGic_SetPriorityTriggerType(&intc, tx_int_id, 0xA0, 0x3);
    XScuGic_SetPriorityTriggerType(&intc, rx_int_id, 0xA0, 0x3);

    status = XScuGic_Connect(&intc, tx_int_id, (Xil_InterruptHandler)tx_isr_handler, &dma);
    if (status != XST_SUCCESS) {
       xil_printf("INT TX connection failed\r\n");
       return XST_FAILURE;
    }
    status = XScuGic_Connect(&intc, rx_int_id, (Xil_InterruptHandler)rx_isr_handler, &dma);
    if (status != XST_SUCCESS) {
       xil_printf("INT RX connection failed\r\n");
       return XST_FAILURE;
    }

    XScuGic_Enable(&intc, tx_int_id);
    XScuGic_Enable(&intc, rx_int_id);

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &intc);
    Xil_ExceptionEnable();

    XAxiDma_IntrEnable(&dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_IntrEnable(&dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

    return XST_SUCCESS;
}

//Disconnect Interruptions
void intc_stop(int tx_int_id, int rx_int_id) {
     XScuGic_Disconnect(&intc, tx_int_id);
     XScuGic_Disconnect(&intc, rx_int_id);
}

//Running DMA initialization
int dma_init(int device_id) {
    XAxiDma_Config *cfg;
    int status;
    //Get DMA Configuration
    cfg = XAxiDma_LookupConfig(device_id);
    if (!cfg) {
       xil_printf("No configuration found for AXI DMA with device ID %d\r\n", device_id);
       return XST_FAILURE;
    }
    //Set up DMA Configuration
    status = XAxiDma_CfgInitialize(&dma, cfg);
    if (status != XST_SUCCESS) {
       xil_printf("ERROR: DMA configuration failed\r\n");
       return XST_FAILURE;
    }
    //Check for scatter-gather configuration
    if (! XAxiDma_HasSg(&dma)) {
       xil_printf("INFO: Device configured in Simple Mode.\r\n");
    } else {
       xil_printf("ERROR: Device configured in Scatter Gather Mode.\r\n");
       return XST_FAILURE;
    }
    return XST_SUCCESS;
}

//Running DMA example
int dma_example() {
    int i, status, try;
    data_t *tx_buf, *rx_buf;

    tx_buf = (data_t *)TX_BASE_ADDR;
    rx_buf = (data_t *)RX_BASE_ADDR;

    //Write a counter into a buffer and send it trough DMA, try 10 times.
    for (try = 1; try <= 10; try++) {
        xil_printf("Try %d\r\n", try);
        for (i = 0; i < SAMPLES; i++) {
            tx_buf[i] = i+try;
        }
        //Flush Data cache for the given addres range
        Xil_DCacheFlushRange((UINTPTR)tx_buf, BYTES);
        Xil_DCacheFlushRange((UINTPTR)rx_buf, BYTES);

        err_int = 0;
        tx_int  = 0;
        rx_int  = 0;
        //Start Simple Data Transmission from MEMORY to FPGA
        status = XAxiDma_SimpleTransfer(&dma,(UINTPTR)tx_buf, BYTES, XAXIDMA_DMA_TO_DEVICE);
        if (status != XST_SUCCESS) {
           xil_printf("DMA TX SimpleTransfer failed\r\n");
           return XST_FAILURE;
        }
        //Start Simple Data Transmission from FPGA to MEMORY
        status = XAxiDma_SimpleTransfer(&dma,(UINTPTR)rx_buf, BYTES, XAXIDMA_DEVICE_TO_DMA);
        if (status != XST_SUCCESS) {
           xil_printf("DMA RX SimpleTransfer failed\r\n");
           return XST_FAILURE;
        }
        //Wait for both interruptions are asserted
        while ((!tx_int | !rx_int) & !err_int) {};
        if (err_int) {
            xil_printf("ERROR: interrupt not asserted (TX=%d - RX=%d)\r\n", tx_int, rx_int);
            return XST_FAILURE;
        }
        //Check if rx is equal to tx
        for (i = 0; i < SAMPLES; i++) {
            if (rx_buf[i] != tx_buf[i]) {
               xil_printf("ERROR: mismatch (data %d) between TX(%d) and RX(%d)\r\n", i+1, tx_buf[i], rx_buf[i]);
               return XST_FAILURE;
            }
        }
        xil_printf("Try %d passed\r\n", try);
    }
    return XST_SUCCESS;
}
/*****************************************************************************/
int main() {
    int status;
    xil_printf("* DMA Simple Mode by Interrupt Example\r\n");
    xil_printf("* Initializing DMA\n");
    status = dma_init(XPAR_AXIDMA_0_DEVICE_ID);
    if (status != XST_SUCCESS) {
       xil_printf("DMA initialization failed\r\n");
       return XST_FAILURE;
    }

    //Init Interrupts
    xil_printf("* Initializing Interrupts\r\n");
    status = intc_init(
        XPAR_SCUGIC_SINGLE_DEVICE_ID,
        XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR,
        XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR
    );
    if (status != XST_SUCCESS) {
       xil_printf("Interrupts initialization failed\r\n");
       return XST_FAILURE;
    }

    //Run DMA example
    xil_printf("* Playing with DMA\r\n");
    status = dma_example();
    if (status != XST_SUCCESS) {
       xil_printf("* Example Failed\r\n");
       return XST_FAILURE;
    }

    //Stop Interruptions
    intc_stop(
        XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR,
        XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR
    );
    xil_printf("* Example Passed\r\n");
    return XST_SUCCESS;
}

