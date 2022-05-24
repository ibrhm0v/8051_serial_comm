#include <reg51.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define SIZE 20
char buf[SIZE];
int idx = 0;

void main()
{
	TMOD=0x20;				//Choosing Timer mode as mode 2
	PCON = PCON | (1 << 7);					//Setting PCON bit 7 to double baudrate
  TH1=0xFD;   	    //Selecting Baud Rate as 19200
  SCON=0x50;    	  //Serial mode selection as 8-bit and enabling reception
  TR1=1;						//Turn on timer 1
	IE=0x90;        	//Enabling global interrupts and serial
	
	memset(buf, 0, SIZE);
	
   while(1)
	{
		//Do nothing
	}
}

void ser_intr(void)	interrupt 4        //Subroutine for Interrupt
{
	char c;
	c=SBUF;  
  IE=0x90;
	RI=0;
	
	if(idx >= SIZE - 1)
	{
		idx = 0;
	}
	
	SBUF = c;
	while(TI == 0);
	TI = 0;
	
	buf[idx] = tolower(c);
	
	IE=0x90;                            //Reactivating the interrupt
}