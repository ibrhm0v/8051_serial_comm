ORG 0000H
	LJMP 0A5BH
ORG 0800H
	MOV 89H,#20H
	MOV 8DH,#0E8H
	MOV 98H,#50H
	SETB 8EH
	CLR A
	MOV 90H,A
	MOV 0A0H,#0FFH
	MOV R6,A
	MOV R7,#0AH
	MOV R5,A
	MOV R3,#01H
	MOV R2,#00H
	MOV R1,#02H
	LCALL 0A1DH
	MOV R5,#01H
	MOV R4,#00H
	MOV R7,#14H
	MOV R6,#00H
	LCALL 0AE7H
	MOV R2,06H
	MOV R1,07H
	MOV DPTR, #000CH
	MOV A,#01H
	MOVX @DPTR,A
	INC DPTR
	MOV A,R2
	MOVX @DPTR,A
	INC DPTR
	MOV A,R1
	MOVX @DPTR,A
	CLR A
	MOV DPTR, #000FH
	MOVX @DPTR,A
	INC DPTR
	MOVX @DPTR,A
	MOV DPTR, #000FH
	MOVX A,@DPTR
	MOV R6,A
	INC DPTR
	MOVX A,@DPTR
	MOV R7,A
	ADD A,#61H
	MOV R5,A
	MOV DPTR, #000CH
	MOVX A,@DPTR
	MOV R3,A
	INC DPTR
	MOVX A,@DPTR
	MOV R2,A
	INC DPTR
	MOVX A,@DPTR
	MOV R1,A
	MOV 82H,R7
	MOV 83H,R6
	MOV A,R5
	LCALL 09FBH
	MOV DPTR, #0010H
	MOVX A,@DPTR
	INC A
	MOVX @DPTR,A
	JNZ 06H
	MOV DPTR, #000FH
	MOVX A,@DPTR
	INC A
	MOVX @DPTR,A
	MOV DPTR, #000FH
	MOVX A,@DPTR
	JNZ 04H
	INC DPTR
	MOVX A,@DPTR
	XRL A,#14H
	JNZ 0C8H
	MOV A,0A0H
	JNB 0E7H,3BH
	CLR A
	MOV DPTR, #000FH
	MOVX @DPTR,A
	INC DPTR
	MOVX @DPTR,A
	MOV DPTR, #000FH
	MOVX A,@DPTR
	MOV R6,A
	INC DPTR
	MOVX A,@DPTR
	MOV R7,A
	CLR C
	SUBB A,#0AH
	MOV A,R6
	XRL A,#80H
	SUBB A,#80H
	JNC 0E2H
	MOV A,#02H
	ADD A,R7
	MOV 82H,A
	MOV A,#00H
	ADDC A,R6
	MOV 83H,A
	MOV A,99H
	MOVX @DPTR,A
	CLR 98H
	ORL 90H,#80H
	MOV DPTR, #0010H
	MOVX A,@DPTR
	INC A
	MOVX @DPTR,A
	JNZ 0D4H
	MOV DPTR, #000FH
	MOVX A,@DPTR
	INC A
	MOVX @DPTR,A
	SJMP 0CCH
	CLR A
	MOV DPTR, #000FH
	MOVX @DPTR,A
	INC DPTR
	MOVX @DPTR,A
	MOV DPTR, #000FH
	MOVX A,@DPTR
	MOV R6,A
	INC DPTR
	MOVX A,@DPTR
	MOV R7,A
	CLR C
	SUBB A,#14H
	MOV A,R6
	XRL A,#80H
	SUBB A,#80H
	JNC 0A7H
	MOV DPTR, #000CH
	MOVX A,@DPTR
	MOV R3,A
	INC DPTR
	MOVX A,@DPTR
	MOV R2,A
	INC DPTR
	MOVX A,@DPTR
	MOV R1,A
	MOV 82H,R7
	MOV 83H,R6
	LCALL 09CEH
	MOV 99H,A
	JNB 99H,0FDH
	CLR 99H
	ANL 90H,#7FH
	MOV DPTR, #0010H
	MOVX A,@DPTR
	INC A
	MOVX @DPTR,A
	JNZ 0CAH
	MOV DPTR, #000FH
	MOVX A,@DPTR
	INC A
	MOVX @DPTR,A
	SJMP 0C2H
	MOV DPTR, #0015H
	MOV A,R6
	MOVX @DPTR,A
	INC DPTR
	MOV A,R7
	MOVX @DPTR,A
	INC DPTR
	MOV A,#00H
	MOVX @DPTR,A
	INC DPTR
	MOV A,#1BH
	MOVX @DPTR,A
	MOV DPTR, #0017H
	MOVX A,@DPTR
	MOV R6,A
	INC DPTR
	MOVX A,@DPTR
	MOV 82H,A
	MOV 83H,R6
	MOVX A,@DPTR
	MOV R6,A
	INC DPTR
	MOVX A,@DPTR
	MOV R7,A
	ORL A,R6
	JNZ 03H
	MOV R6,A
	MOV R7,A
	RET
	MOV 82H,R7
	MOV 83H,R6
	INC DPTR
	INC DPTR
	MOVX A,@DPTR
	MOV R4,A
	INC DPTR
	MOVX A,@DPTR
	MOV R5,A
	MOV DPTR, #0015H
	MOVX A,@DPTR
	MOV R2,A
	INC DPTR
	MOVX A,@DPTR
	MOV R3,A
	CLR C
	MOV A,R5
	SUBB A,R3
	MOV A,R4
	SUBB A,R2
	JNC 0AH
	MOV DPTR, #0017H
	MOV A,R6
	MOVX @DPTR,A
	INC DPTR
	MOV A,R7
	MOVX @DPTR,A
	SJMP 0C6H
	MOV 82H,R7
	MOV 83H,R6
	INC DPTR
	INC DPTR
	MOVX A,@DPTR
	MOV R4,A
	INC DPTR
	MOVX A,@DPTR
	CLR C
	SUBB A,R3
	MOV R5,A
	MOV A,R4
	SUBB A,R2
	MOV R4,A
	MOV DPTR, #0019H
	MOVX @DPTR,A
	INC DPTR
	MOV A,R5
	MOVX @DPTR,A
	CLR C
	SUBB A,#10H
	MOV A,R4
	SUBB A,#00H
	JNC 17H
	MOV 82H,R7
	MOV 83H,R6
	MOVX A,@DPTR
	MOV R4,A
	INC DPTR
	MOVX A,@DPTR
	MOV R5,A
	MOV DPTR, #0017H
	MOVX A,@DPTR
	MOV R2,A
	INC DPTR
	MOVX A,@DPTR
	MOV 82H,A
	MOV 83H,R2
	MOV A,R4
	SJMP 45H
	MOV DPTR, #001AH
	MOVX A,@DPTR
	ADD A,#0FCH
	MOVX @DPTR,A
	MOV DPTR, #0019H
	MOVX A,@DPTR
	ADDC A,#0FFH
	MOVX @DPTR,A
	MOVX A,@DPTR
	MOV R5,A
	INC DPTR
	MOVX A,@DPTR
	MOV 82H,R7
	MOV 83H,R6
	INC DPTR
	INC DPTR
	XCH A,R5
	MOVX @DPTR,A
	INC DPTR
	MOV A,R5
	MOVX @DPTR,A
	MOV A,R7
	ADD A,#04H
	MOV R7,A
	CLR A
	ADDC A,R6
	MOV R6,A
	MOV DPTR, #001AH
	MOVX A,@DPTR
	ADD A,R7
	MOV R7,A
	MOV DPTR, #0019H
	MOVX A,@DPTR
	ADDC A,R6
	MOV R6,A
	MOV DPTR, #0017H
	MOVX @DPTR,A
	INC DPTR
	MOV A,R7
	MOVX @DPTR,A
	MOV DPTR, #0015H
	MOVX A,@DPTR
	MOV R5,A
	INC DPTR
	MOVX A,@DPTR
	MOV 82H,R7
	MOV 83H,R6
	INC DPTR
	INC DPTR
	XCH A,R5
	MOVX @DPTR,A
	INC DPTR
	MOV A,R5
	MOVX @DPTR,A
	MOV A,R7
	ADD A,#04H
	MOV R7,A
	CLR A
	ADDC A,R6
	MOV R6,A
	RET
	CJNE R3,#01H,0CH
	MOV A,82H
	ADD A,R1
	MOV 82H,A
	MOV A,83H
	ADDC A,R2
	MOV 83H,A
	MOVX A,@DPTR
	RET
	JNC 06H
	MOV A,R1
	ADD A,82H
	MOV R0,A
	MOV A,@R0
	RET
	CJNE R3,#0FEH,06H
	MOV A,R1
	ADD A,82H
	MOV R0,A
	MOVX A,@R0
	RET
	MOV A,82H
	ADD A,R1
	MOV 82H,A
	MOV A,83H
	ADDC A,R2
	MOV 83H,A
	CLR A
	MOVC A,@A+DPTR
	RET
	MOV R0,A
	CJNE R3,#01H,0DH
	MOV A,82H
	ADD A,R1
	MOV 82H,A
	MOV A,83H
	ADDC A,R2
	MOV 83H,A
	MOV A,R0
	MOVX @DPTR,A
	RET
	JNC 06H
	MOV A,R1
	ADD A,82H
	XCH A,R0
	MOV @R0,A
	RET
	CJNE R3,#0FEH,05H
	MOV A,R1
	ADD A,82H
	XCH A,R0
	MOVX @R0,A
	RET
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
	MOV A,R7
	MOV 0F0H,R5
	MUL AB
	MOV R0,0F0H
	XCH A,R7
	MOV 0F0H,R4
	MUL AB
	ADD A,R0
	XCH A,R6
	MOV 0F0H,R5
	MUL AB
	ADD A,R6
	MOV R6,A
	RET
	MOV R0,#7FH
	CLR A
	MOV @R0,A
	DJNZ R0,0FDH
	MOV 81H,#07H
	LJMP 0AA2H
	LJMP 0800H
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
	INC R3
	XRL A,0E4H
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
	MOV DPTR, #0011H
	MOV A,R6
	MOVX @DPTR,A
	INC DPTR
	MOV A,R7
	MOVX @DPTR,A
	LCALL 0A49H
	MOV DPTR, #0011H
	MOV A,R6
	MOVX @DPTR,A
	INC DPTR
	MOV A,R7
	MOVX @DPTR,A
	LCALL 08FDH
	MOV DPTR, #0013H
	MOV A,R6
	MOVX @DPTR,A
	INC DPTR
	MOV A,R7
	MOVX @DPTR,A
	ORL A,R6
	JNZ 03H
	MOV R6,A
	MOV R7,A
	RET
	MOV DPTR, #0011H
	MOVX A,@DPTR
	MOV R6,A
	INC DPTR
	MOVX A,@DPTR
	MOV R7,A
	MOV R5,#00H
	INC DPTR
	MOVX A,@DPTR
	MOV R2,A
	INC DPTR
	MOVX A,@DPTR
	MOV R1,A
	MOV R3,#01H
	LCALL 0A1DH
	MOV DPTR, #0013H
	MOVX A,@DPTR
	MOV R6,A
	INC DPTR
	MOVX A,@DPTR
	MOV R7,A
	RET
	MOV A,R7
	ORL A,R6
	JNZ 08H
	MOV R6,A
	MOV R7,#01H
	MOV A,R5
	DEC R5
	JNZ 01H
	DEC R4
	MOV DPTR, #001BH
	MOV A,R6
	MOVX @DPTR,A
	INC DPTR
	MOV A,R7
	MOVX @DPTR,A
	INC DPTR
	MOV A,R4
	MOVX @DPTR,A
	INC DPTR
	MOV A,R5
	MOVX @DPTR,A
	MOV DPTR, #001BH
	MOVX A,@DPTR
	MOV R6,A
	INC DPTR
	MOVX A,@DPTR
	MOV R7,A
	MOV 82H,A
	MOV 83H,R6
	CLR A
	MOVX @DPTR,A
	INC DPTR
	MOVX @DPTR,A
	MOV A,R5
	ADD A,#0FCH
	MOV R5,A
	MOV A,R4
	ADDC A,#0FFH
	MOV 82H,R7
	MOV 83H,R6
	INC DPTR
	INC DPTR
	MOVX @DPTR,A
	INC DPTR
	MOV A,R5
	MOVX @DPTR,A
	RET
	ORL 00H,A
	NOP
	NOP
	NOP
	NOP
	ORL A,R0
	NOP
	DEC R3
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	END