#include <reg51.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

#define SIZE 20
#define SW7 ((P2) & (1 << 7))

char RAM[SIZE-10];
char* ROM;

int idx = 0;

void main()
{
	TMOD=0x20;				//Choosing Timer mode as mode 2
  TH1=0xE8;   	    //Selecting Baud Rate as 1200
  SCON=0x50;    	  //Serial mode selection as 8-bit and enabling reception
  TR1=1;						//Turn on timer 1
	P1=0x00;
	P2=0xFF;
	
	// Init RAM region on stack
	memset(RAM, 0, SIZE-10);
	
	// Init ROM region on heap
	ROM = (char*)calloc(SIZE, sizeof(char));
	
	// Fill ROM region with 20 letters starting from 'a'
	{
		int i;
		for(i = 0; i < SIZE; i++)
		{
			ROM[i] = 'a' + i;
		}
	}
	
	while(1)
	{
		// Read to RAM if SW7 (P2.7) is HIGH
		if(SW7)
		{
			int i;
			for(i = 0; i < SIZE-10; i++)
			{
				RAM[i] = SBUF;
				RI=0;
				P1 = P1 | (1 << 7);
			}
		}
		// Write from ROM if SW7 (P2.7) is LOW
		else
		{
			int i;
			for(i = 0; i < SIZE; i++)
			{
				SBUF = ROM[i];
				while(TI == 0);
				TI = 0;
				P1 = P1 & ~(1 << 7);
			}
		}
	}
}
