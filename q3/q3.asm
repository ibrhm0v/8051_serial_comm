ORG 0000H
	LJMP 0800H
ORG 0023H
	LJMP 088CH
ORG 0800H
	MOV R0,#7FH
	CLR A
	MOV @R0,A
	DJNZ R0,0FDH
	MOV 81H,#07H
	LJMP 0847H
	LJMP 092BH
	CLR A
	MOVC A,@A+DPTR
	INC DPTR
	MOV R0,A
	CLR A
	MOVC A,@A+DPTR
	INC DPTR
	JC 03H
	MOV @R0,A
	SJMP 01H
	MOVX @R0,A
	INC R0
	DJNZ R7,0F4H
	SJMP 29H
	CLR A
	MOVC A,@A+DPTR
	INC DPTR
	MOV R0,A
	ANL A,#07H
	ADD A,#0CH
	XCH A,R0
	CLR C
	RLC A
	SWAP A
	ANL A,#0FH
	ORL A,#20H
	XCH A,R0
	MOVC A,@A+PC
	JC 04H
	CPL A
	ANL A,@R0
	SJMP 01H
	ORL A,@R0
	MOV @R0,A
	DJNZ R7,0E4H
	SJMP 0BH
	AJMP 002H
	INC A
	INC R0
	JBC 20H,40H
	SJMP 90H
	INC R1
	ANL A,R6
	CLR A
	MOV R6,#01H
	MOVC A,@A+DPTR
	JZ 0BCH
	INC DPTR
	MOV R7,A
	ANL A,#3FH
	JNB 0E5H,09H
	ANL A,#1FH
	MOV R6,A
	CLR A
	MOVC A,@A+DPTR
	INC DPTR
	JZ 01H
	INC R6
	XCH A,R7
	ANL A,#0C0H
	ADD A,0E0H
	JZ 0A8H
	JC 0B8H
	CLR A
	MOVC A,@A+DPTR
	INC DPTR
	MOV R2,A
	CLR A
	MOVC A,@A+DPTR
	INC DPTR
	MOV R0,A
	CLR A
	MOVC A,@A+DPTR
	INC DPTR
	XCH A,R0
	XCH A,82H
	XCH A,R0
	XCH A,R2
	XCH A,83H
	XCH A,R2
	MOVX @DPTR,A
	INC DPTR
	XCH A,R0
	XCH A,82H
	XCH A,R0
	XCH A,R2
	XCH A,83H
	XCH A,R2
	DJNZ R7,0E9H
	DJNZ R6,0E7H
	SJMP 0BEH
	PUSH 0E0H
	PUSH 0F0H
	PUSH 83H
	PUSH 82H
	PUSH 0D0H
	MOV 0D0H,#00H
	PUSH 00H
	PUSH 01H
	PUSH 02H
	PUSH 03H
	PUSH 04H
	PUSH 05H
	PUSH 06H
	PUSH 07H
	MOV R7,99H
	MOV 0A8H,#90H
	CLR 98H
	CLR C
	MOV DPTR, #0015H
	MOVX A,@DPTR
	SUBB A,#13H
	MOV DPTR, #0014H
	MOVX A,@DPTR
	XRL A,#80H
	SUBB A,#80H
	JC 04H
	CLR A
	MOVX @DPTR,A
	INC DPTR
	MOVX @DPTR,A
	MOV 99H,R7
	JNB 99H,0FDH
	CLR 99H
	LCALL 094DH
	MOV DPTR, #0014H
	MOVX A,@DPTR
	MOV R4,A
	INC DPTR
	MOVX A,@DPTR
	ADD A,#00H
	MOV 82H,A
	MOV A,#00H
	ADDC A,R4
	MOV 83H,A
	MOV A,R7
	MOVX @DPTR,A
	MOV 0A8H,#90H
	POP 07H
	POP 06H
	POP 05H
	POP 04H
	POP 03H
	POP 02H
	POP 01H
	POP 00H
	POP 0D0H
	POP 82H
	POP 83H
	POP 0F0H
	POP 0E0H
	RETI
	MOV A,R7
	ORL A,R6
	JZ 12H
	MOV A,R7
	JZ 01H
	INC R6
	MOV A,R5
	CJNE R3,#01H,0BH
	MOV 82H,R1
	MOV 83H,R2
	MOVX @DPTR,A
	INC DPTR
	DJNZ R7,0FCH
	DJNZ R6,0FAH
	RET
	MOV 0F0H,R1
	JNC 07H
	MOV @R1,A
	INC R1
	DJNZ R7,0FCH
	MOV R1,0F0H
	RET
	CJNE R3,#0FEH,0FCH
	MOVX @R1,A
	INC R1
	DJNZ R7,0FCH
	MOV R1,0F0H
	RET
	MOV 89H,#20H
	ORL 87H,#80H
	MOV 8DH,#0FDH
	MOV 98H,#50H
	SETB 8EH
	MOV 0A8H,#90H
	MOV R6,#00H
	MOV R7,#14H
	MOV R5,#00H
	MOV R3,#01H
	MOV R2,#00H
	MOV R1,#00H
	LCALL 08FFH
	SJMP 0FEH
	MOV A,R7
	CLR C
	SUBB A,#41H
	JC 0AH
	MOV A,R7
	SUBB A,#5BH
	JNC 05H
	MOV A,R7
	ADD A,#20H
	MOV R7,A
	RET
	RET
	ORL 00H,A
	DEC A
	NOP
	NOP
	NOP
	END
