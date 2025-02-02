/**
* This file consists of a interrupt mode design example to demonstrate the use
* of repeated start using the XIic driver.
*
* The XIic_MasterSend() API is used to transmit the data and XIic_MasterRecv()
* API is used to receive the data.
*
* The IIC devices that are present on the Xilinx boards do not support the
* repeated start option. These examples have been tested with an IIC
* device external to the boards.
*
******************************************************************************/

/***************************** Include Files *********************************/

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xparameters.h"
#include "xiic.h"
#include "xil_exception.h"
#include "xinterrupt_wrap.h"
#include "sleep.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define	XIIC_BASEADDRESS	XPAR_XIIC_0_BASEADDR

/*
 * The following constant defines the address of the IIC
 * device on the IIC bus. Note that since the address is only 7 bits, this
 * constant is the address divided by 2.
 */
#define SLAVE_ADDRESS	0x53
#define BUFFER_SIZE     80

/************************** Variable Definitions *****************************/

XIic IicInstance;

u8 WriteBuffer[BUFFER_SIZE];	/* Write buffer for writing a page. */
u8 ReadBuffer[BUFFER_SIZE];	/* Read buffer for reading a page. */

volatile u8 TransmitComplete;
volatile u8 ReceiveComplete;

/************************** Function Prototypes ******************************/

void init_Sil9022A();
static int WriteData(u16 ByteCount);
static int ReadData(u8 *BufferPtr, u16 ByteCount);
static void SendHandler(XIic *InstancePtr);
static void ReceiveHandler(XIic *InstancePtr);
static void StatusHandler(XIic *InstancePtr, int Event);

/************************** Function Definitions ******************************/

int main()
{
    init_platform();

    print("Hello World\r\n");

    init_Sil9022A();
    
    print("Successfully ran Hello World application\r\n");

    cleanup_platform();
    return 0;
}

/*****************************************************************************/
/**
* This function writes and reads the data to the IIC Slave.
*
******************************************************************************/
void init_Sil9022A(void)
{
	u8 Index;
	int Status;
	XIic_Config *ConfigPtr;	/* Pointer to configuration data */

	/*
	 * Initialize the data to write and the read buffer.
	 */
	// for (Index = 0; Index < BUFFER_SIZE; Index++) {
	// 	WriteBuffer[Index] = Index;
	// 	ReadBuffer[Index] = 0;
	// }

	/*
	 * Initialize the IIC driver so that it is ready to use.
	 */
	ConfigPtr = XIic_LookupConfig(XIIC_BASEADDRESS);
	if (ConfigPtr == NULL) {
        printf("ERROR %d\r\n", __LINE__);
		return;
	}

	Status = XIic_CfgInitialize(&IicInstance, ConfigPtr,
				    ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
        printf("ERROR %d\r\n", __LINE__);
		return;
	}

	/*
	 * Setup the Interrupt System.
	 */
	Status = XSetupInterruptSystem(&IicInstance, &XIic_InterruptHandler,
				       ConfigPtr->IntrId, ConfigPtr->IntrParent,
				       XINTERRUPT_DEFAULT_PRIORITY);
	if (Status != XST_SUCCESS) {
        printf("ERROR %d\r\n", __LINE__);
		return;
	}

	/*
	 * Set the Transmit, Receive and Status handlers.
	 */
	XIic_SetSendHandler(&IicInstance, &IicInstance,
			    (XIic_Handler) SendHandler);
	XIic_SetRecvHandler(&IicInstance, &IicInstance,
			    (XIic_Handler) ReceiveHandler);
	XIic_SetStatusHandler(&IicInstance, &IicInstance,
			      (XIic_StatusHandler) StatusHandler);

    /*
    * Set the Address of the Slave.
    */
    Status = XIic_SetAddress(&IicInstance, XII_ADDR_TO_SEND_TYPE, SLAVE_ADDRESS);
    if (Status != XST_SUCCESS) {
        printf("ERROR %d\r\n", __LINE__);
        return;
    }

    // enable TPI
    // -
    // WriteBuffer[0]  = 0xC7;
    // WriteBuffer[0]  = 0x2C;
    // WriteBuffer[1]  = 0x00;

    for (int i = 0 + 0x10; i < 3 + 0x10; ++i)
    {
        usleep(1300000);
        WriteBuffer[0]  = 0x1D;
        WriteBuffer[1]  = i;
        // printf(":%d\r\n", __LINE__);
        // Status = WriteData(2);
        // if (Status != XST_SUCCESS) {
        //     printf("ERROR %d\r\n", __LINE__);
        //     return;
        // }

        TransmitComplete = 1;
        IicInstance.Options = 0x0;

        do {
            if (!XIic_IsIicBusy(&IicInstance))
            {
                Status = XIic_Start(&IicInstance);
                if (Status != XST_SUCCESS) {
                    printf("ERROR %d\r\n", __LINE__);
                }

                Status = XIic_MasterSend(&IicInstance, WriteBuffer, 2);
                if (Status != XST_SUCCESS) {
                    printf("ERROR %d\r\n", __LINE__);
                }

                printf("waiting to transmit..\r\n");
                usleep(1300000);
            }
        } while (TransmitComplete || (XIic_IsIicBusy(&IicInstance) == TRUE));

        Status = XIic_Stop(&IicInstance);
        if (Status != XST_SUCCESS) {
            printf("ERROR %d\r\n", __LINE__);
        }


        // printf("0x%02x: ", SLAVE_ADDRESS);
        // if (Status == XST_SUCCESS)
        // {
        //     printf("OK\r\n");
        // }
        // else
        // {
        //     printf("ERROR\r\n");
        // }

        // Status = WriteData(1);
        // if (Status != XST_SUCCESS) {
        //     printf("ERROR %d\r\n", __LINE__);
        //     return;
        // }

        TransmitComplete = 1;
        IicInstance.Options = 0x0;

        do {
            if (!XIic_IsIicBusy(&IicInstance))
            {
                Status = XIic_Start(&IicInstance);
                if (Status != XST_SUCCESS) {
                    printf("ERROR %d\r\n", __LINE__);
                }

                Status = XIic_MasterSend(&IicInstance, WriteBuffer, 1);
                if (Status != XST_SUCCESS) {
                    printf("ERROR %d\r\n", __LINE__);
                }

                printf("waiting to transmit..\r\n");
                usleep(1300000);
            }
        } while (TransmitComplete || (XIic_IsIicBusy(&IicInstance) == TRUE));

        Status = XIic_Stop(&IicInstance);
        if (Status != XST_SUCCESS) {
            printf("ERROR %d\r\n", __LINE__);
        }

    	ReceiveComplete = 1;
        ReadBuffer[0] = 0x00;
        IicInstance.Options = 0x0;

        // Status = ReadData(ReadBuffer, 1);
        // if (Status != XST_SUCCESS) {
        //     printf("ERROR %d\r\n", __LINE__);
        //     return;
        // }

        do {
            if (!XIic_IsIicBusy(&IicInstance))
            {
                Status = XIic_Start(&IicInstance);
                if (Status != XST_SUCCESS) {
                    printf("ERROR %d\r\n", __LINE__);
                }

                Status = XIic_MasterRecv(&IicInstance, ReadBuffer, 2);
                if (Status != XST_SUCCESS) {
                    printf("ERROR %d\r\n", __LINE__);
                }

                printf("waiting to receive..\r\n");
                usleep(1300000);
            }
        } while ((ReceiveComplete) || (XIic_IsIicBusy(&IicInstance) == TRUE));

        Status = XIic_Stop(&IicInstance);
        if (Status != XST_SUCCESS) {
            printf("ERROR %d\r\n", __LINE__);
        }

        printf("ID: %02x\r\n", ReadBuffer[0]);
    }

    // ReadBuffer[0] = 0x00;
    // printf(":%d\r\n", __LINE__);
    // while (ReadBuffer[0] != 0xB0)
    // {
        // read ID (wait for); 1B-1D <- B0'02'03
        // -
    //     WriteBuffer[0]  = 0x1B;
    //     Status = WriteData(1);
    //     if (Status != XST_SUCCESS) {
    //         printf("ERROR %d\r\n", __LINE__);
    //         return;
    //     }
        // Status = ReadData(ReadBuffer, 1);
        // if (Status != XST_SUCCESS) {
        //     printf("ERROR %d\r\n", __LINE__);
        //     return;
        // }
        // printf("ID: %02x\r\n", ReadBuffer[0]);
    //     usleep(100000);
    // }
    // printf(":%d\r\n", __LINE__);
}

/*****************************************************************************/
/**
* This function writes a buffer of data to IIC Slave.
*
* @param	ByteCount contains the number of bytes in the buffer to be
*		written.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
******************************************************************************/
static int WriteData(u16 ByteCount)
{
	int Status;

	/*
	 * Set the defaults.
	 */
	// TransmitComplete = 1;

	/*
	 * Start the IIC device.
	 */
	Status = XIic_Start(&IicInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the Repeated Start option.
	 */
	// IicInstance.Options = XII_REPEATED_START_OPTION;

	/*
	 * Send the data.
	 */
	// Status = XIic_MasterSend(&IicInstance, WriteBuffer, ByteCount);
	// if (Status != XST_SUCCESS) {
	// 	return XST_FAILURE;
	// }

	/*
	 * Wait till data is transmitted.
	 */
    // printf(":%d\r\n", __LINE__);
	// while (TransmitComplete) {

	// }
    // printf(":%d\r\n", __LINE__);

	/*
	 * This is for verification that Bus is not released and still Busy.
	 */
	// XIic_IsIicBusy(&IicInstance);

	TransmitComplete = 1;
	IicInstance.Options = 0x0;

	/*
	 * Send the Data.
	 */
	Status = XIic_MasterSend(&IicInstance, WriteBuffer, ByteCount);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait till data is transmitted.
	 */
    // printf(":%d\r\n", __LINE__);
	// while ((TransmitComplete) || (XIic_IsIicBusy(&IicInstance) == TRUE)) {
	while (XIic_IsIicBusy(&IicInstance) == TRUE) {
        printf("waiting to transmit..\r\n");
        usleep(1300000);
	}
    // printf(":%d\r\n", __LINE__);

	/*
	 * Stop the IIC device.
	 */
	Status = XIic_Stop(&IicInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function reads a data from the IIC Slave into a specified buffer.
*
* @param	BufferPtr contains the address of the data buffer to be filled.
* @param	ByteCount contains the number of bytes to be read.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
******************************************************************************/
static int ReadData(u8 *BufferPtr, u16 ByteCount)
{
	int Status;

	/*
	 * Set the defaults.
	 */
	// ReceiveComplete = 1;

	/*
	 * Start the IIC device.
	 */
	Status = XIic_Start(&IicInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the Repeated Start option.
	 */
	// IicInstance.Options = XII_REPEATED_START_OPTION;

	/*
	 * Receive the data.
	 */
	// Status = XIic_MasterRecv(&IicInstance, BufferPtr, ByteCount);
	// if (Status != XST_SUCCESS) {
	// 	return XST_FAILURE;
	// }

	/*
	 * Wait till all the data is received.
	 */
	// while (ReceiveComplete) {

	// }

	/*
	 * This is for verification that Bus is not released and still Busy.
	 */
	// BusBusy = XIic_IsIicBusy(&IicInstance);

	ReceiveComplete = 1;
	IicInstance.Options = 0x0;

	/*
	 * Receive the Data.
	 */
	Status = XIic_MasterRecv(&IicInstance, BufferPtr, ByteCount);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait till all the data is received.
	 */
	while ((ReceiveComplete) || (XIic_IsIicBusy(&IicInstance) == TRUE)) {
        printf("waiting to receive..\r\n");
        usleep(1300000);
	}

	/*
	 * Stop the IIC device.
	 */
	Status = XIic_Stop(&IicInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This Send handler is called asynchronously from an interrupt context and
* indicates that data in the specified buffer has been sent.
*
* @param	InstancePtr is a pointer to the IIC driver instance for which
* 		the handler is being called for.
*
******************************************************************************/
static void SendHandler(XIic *InstancePtr)
{
	TransmitComplete = 0;
    printf("SendHandler()\r\n");
}

/*****************************************************************************/
/**
* This Receive handler is called asynchronously from an interrupt context and
* indicates that data in the specified buffer has been Received.
*
* @param	InstancePtr is a pointer to the IIC driver instance for which
* 		the handler is being called for.
*
******************************************************************************/
static void ReceiveHandler(XIic *InstancePtr)
{
	ReceiveComplete = 0;
    printf("ReceiveHandler()\r\n");
}

/*****************************************************************************/
/**
* This Status handler is called asynchronously from an interrupt
* context and indicates the events that have occurred.
*
* @param	InstancePtr is a pointer to the IIC driver instance for which
*		the handler is being called for.
* @param	Event indicates the condition that has occurred.
*
******************************************************************************/
static void StatusHandler(XIic *InstancePtr, int Event)
{

}
