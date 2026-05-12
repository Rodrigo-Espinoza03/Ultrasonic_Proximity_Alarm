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
#include <stdint.h>
#include "platform.h"
#include "xparameters.h"
#include "xparameters_ps.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xstatus.h"
#include "sleep.h"

#define  UART_CTRL_BASE      0x43C00000
#define  FPGA_REV_REG       0x00
#define  SW_RST_REG         0x04
#define  READ_EN_REG        0x08
#define  DISTANCE_REG       0x0C
#define  PACKET_VALID_REG   0x10


#define BIT0_MASK           0x00000001


static void SoftwareReset(void)
{
    Xil_Out32(UART_CTRL_BASE+SW_RST_REG, BIT0_MASK);
}

static void ReadEnable(void)
{
	Xil_Out32(UART_CTRL_BASE+READ_EN_REG,BIT0_MASK);
}

static void ReadDisable(void)
{
	Xil_Out32(UART_CTRL_BASE+READ_EN_REG,0x00000000);
}

static void ClearPacketValid(void)
{
    // Writing a 1 to offset 0x10 triggers your Verilog's Write-1-to-Clear logic
    Xil_Out32(UART_CTRL_BASE + PACKET_VALID_REG, BIT0_MASK);
}

static void ReadDistance(void)
{
    // 1. Check if the hardware has seen a valid packet
    uint32_t isValid = Xil_In32(UART_CTRL_BASE + PACKET_VALID_REG) & BIT0_MASK;

    if (isValid)
    {
        // 2. Read the distance
        uint32_t readDistance = Xil_In32(UART_CTRL_BASE + DISTANCE_REG) & 0x000000FF;
        xil_printf("distance = %d\r\n", readDistance);

        // 3. Clear the packet valid flag!
        ClearPacketValid();
        xil_printf("Packet valid flag cleared.\r\n");
    }
    else
    {
        xil_printf("No new valid packet yet. Try again later.\r\n");
    }
}

static void ReadDistanceMult(void)
{
    uint32_t count = 0;
    xil_printf("Reading 8 distance packets...\r\n");

    while (count < 8)
    {
        // 1. Check if the hardware has seen a valid packet
        uint32_t isValid = Xil_In32(UART_CTRL_BASE + PACKET_VALID_REG) & BIT0_MASK;

        // 2. Only proceed if a packet is ACTUALLY ready
        if (isValid)
        {
            // Read the distance
            uint32_t readDistance = Xil_In32(UART_CTRL_BASE + DISTANCE_REG) & 0x000000FF;
            xil_printf("Measurement %lu: distance = %lu inches\r\n", count + 1, readDistance);

            // Clear the packet valid flag so we can catch the next one!
            ClearPacketValid();

            // Increment the counter ONLY when we successfully read a packet
            count++;
        }

        // If isValid is 0, the CPU just loops again instantly.
        // We remove the "Try again later" print statement so it doesn't
        // spam your terminal millions of times while it waits for the 49ms delay!
    }

    xil_printf("Finished reading 8 packets.\r\n");
}

static void PrintRegisters(void)
{
    xil_printf("[Offset: 0x%02X] FPGA_REV_REG = 0x%08X\r\n", FPGA_REV_REG, (uint32_t)Xil_In32(UART_CTRL_BASE+FPGA_REV_REG));

    xil_printf("[Offset: 0x%02X] SW_RST_REG   = 0x%08X\r\n", SW_RST_REG,   (uint32_t)Xil_In32(UART_CTRL_BASE+SW_RST_REG));

    xil_printf("[Offset: 0x%02X] READ_EN_REG = 0x%08X\r\n", READ_EN_REG, (uint32_t)Xil_In32(UART_CTRL_BASE+READ_EN_REG));

    xil_printf("[Offset: 0x%02X] DISTANCE_REG = 0x%08X\r\n", DISTANCE_REG, (uint32_t)Xil_In32(UART_CTRL_BASE+DISTANCE_REG));

    xil_printf("[Offset: 0x%02X] PACKET_VALID_REG = 0x%08X\r\n", PACKET_VALID_REG, (uint32_t)Xil_In32(UART_CTRL_BASE+PACKET_VALID_REG));

    uint32_t isValid = Xil_In32(UART_CTRL_BASE + PACKET_VALID_REG) & BIT0_MASK;
    if (isValid)
        {
            // 2. Read the distance
            uint32_t readDistance = Xil_In32(UART_CTRL_BASE + DISTANCE_REG) & 0x000000FF;
            xil_printf("distance = %d\r\n", readDistance);

            // 3. Clear the packet valid flag!
            ClearPacketValid();
            xil_printf("Packet valid flag cleared.\r\n");
        }
}

int main()
{
    init_platform(); //Initialize platform
    usleep(490000);
    SoftwareReset(); //Perform software reset first.

    char cmd;
    xil_printf("Rodrigo Espinoza\r\n");
    while(1)
    {

    	do
    	{
    		cmd = inbyte();
    	}
    	while ((cmd == '\r') || (cmd == '\n'));
    	xil_printf("%c\r\n", cmd);

    	switch(cmd)
    	{
    		case '1':
    		{
    			xil_printf("Performing software reset...\r\n");
    			SoftwareReset();
       			xil_printf("Software reset complete.\r\n");
    			break;
    		}
    		case '2':
    		{
    			xil_printf("Enabling ultrasonic sensor...\r\n");
    			ReadEnable();
    			xil_printf("Ultrasonic sensor enabled.\r\n");
    			break;
    		}
    		case '3':
    		{
    			xil_printf("Disabling ultrasonic sensor...\r\n");
    			ReadDisable();
      			xil_printf("Ultrasonic sensor disabled.\r\n");
    			break;
    		}
    		case '4':
    		{
    			while (cmd == '4')
    			{
        			xil_printf("Printing registers...\r\n");
    			    PrintRegisters();
    			    usleep(50000);
    			}
    			//xil_printf("Printing registers...\r\n");
    			//PrintRegisters();
    			//xil_printf("Registers printed.\r\n");
    			break;
    		}
    		case '5':
    		{
    		xil_printf("Reading Distance...\r\n");
    		ReadDistance();
   			break;
    		}
    		case '6':
    		{
        		xil_printf("Reading Distance...\r\n");
    			ReadDistanceMult();
    			break;
    		}
    		case 'h':
    		{
    			xil_printf("Rodrigo Espinoza\r\n");
    			xil_printf("=======UART Controller Menu=======\r\n"
    					   "1 - Perform software reset\r\n"
    					   "2 - Enable ultrasonic sensor\r\n"
    					   "3 - Disable ultrasonic sensor\r\n"
    					   "4 - Read and print all registers\r\n"
    					   "5 - Read distance\r\n"
    					   "6 - Read distance 8 times\r\n"
    					   "h - Display menu\n");
    			break;
    		}
    		default:
    		{
    			xil_printf("Invalid command.\r\n\n");
    		}
    	}
    }
    return 0;
}
