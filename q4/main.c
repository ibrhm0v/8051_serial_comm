#include <reg51.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

/*
 *	User selection is connected to SW7 (Port 2 bit 7)
 *	if it is 0, then baudrate is 9600. Else, it is 19200
 *
 * We assume that mine is a kind of an 8-bit decoding device. 
 * Therefore user will select the P1 0-7 bits as their character
 * to be printed.
 */
 
#define SW7 ((P2) & (1 << 7))
#define BUTTON ((P2) & (1 << 6))

const char* msg = "Please set your baudrate via SW7 (0: 9600, 1: 19200). "
									"Then press button on port 2.6";

void send_data(const char* tx, len)
{
	int i;
	for(i = 0; i < len; i++)
	{
		SBUF = tx[i];
		while(TI == 0);
		TI = 0;
	}
}

void main()
{
	TMOD=0x20;				//Choosing Timer mode as mode 2
  TH1=0xFD;   	    //Selecting Baud Rate as 9600 by default
  SCON=0x50;    	  //Serial mode selection as 8-bit and enabling reception
  TR1=1;						//Turn on timer 1
	P1=0x00;					//Set P1 as input
	P2=0xFF;					//Set P2 as output
	
	//Print user informative message
	send_data(msg, strlen(msg));
	
	//Wait until user presses selection ready button
	while(BUTTON == 0);
	
	//Read user input and set SMOD1 bit according to user selection
	//to change baudrate divisor
	{			
		if(SW7 == 0)
		{
			PCON = PCON & ~(1 << 7);
		}
		else
		{
			PCON = PCON | (1 << 7);
		}
	}

	while(1)
	{
		//Read MINE input from Port 1 (1 byte) and print it directly
		//through serial port
		const char c = P1;
		send_data(&c, 1);
	}
}