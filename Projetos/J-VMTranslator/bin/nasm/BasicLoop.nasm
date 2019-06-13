; 0 - PUSH constant 0
leaw $0, %A
movw (%A), %D
leaw $0, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 1 - POP temp 0
leaw $0,%A 
movw (%A),%D 
movw %D,%A
decw %A
movw (%A),%D
movw %A,%S 
leaw $0,%A 
movw %S,(%A)
leaw $5,%A 
movw %A,%S
leaw $0,%A
addw %S,%A,%A
movw %D,(%A)
; 2 - PUSH constant 1
leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 3 - POP temp 1
leaw $0,%A 
movw (%A),%D 
movw %D,%A
decw %A
movw (%A),%D
movw %A,%S 
leaw $0,%A 
movw %S,(%A)
leaw $5,%A 
movw %A,%S
leaw $1,%A
addw %S,%A,%A
movw %D,(%A)
; Label (marcador)
LOOP_START:
; 4 - PUSH temp 0
leaw $5,%A
movw %A,%D
leaw $0,%A
addw %D,%A,%S
movw %S,%A
movw (%A),%S
leaw $0,%A
movw (%A),%D
movw %D,%A 
movw %S,(%A)
incw %A
movw %A,%D
leaw $0,%A
movw %D,(%A)
; 5 - PUSH constant 10
leaw $0, %A
movw (%A), %D
leaw $10, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 6 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-d08cfc27-eade-4da3-bf46-566b7f2c34d3,%A
je %S
nop
movw $0,%D
leaw $SP,%A
movw (%A),%A
decw %A
decw %A
movw %D,(%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
leaw $FINISH-d08cfc27-eade-4da3-bf46-566b7f2c34d3,%A
jmp
nop
VERDADE-d08cfc27-eade-4da3-bf46-566b7f2c34d3:
leaw $131071,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
decw %A
decw %A
movw %D,(%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
leaw $FINISH-d08cfc27-eade-4da3-bf46-566b7f2c34d3,%A
jmp
nop
FINISH-d08cfc27-eade-4da3-bf46-566b7f2c34d3:
; 7 - Goto Condicional
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %S
movw %S, %A
movw (%A), %D
notw %D
leaw $END, %A
je %D
nop
; 8 - PUSH temp 0
leaw $5,%A
movw %A,%D
leaw $0,%A
addw %D,%A,%S
movw %S,%A
movw (%A),%S
leaw $0,%A
movw (%A),%D
movw %D,%A 
movw %S,(%A)
incw %A
movw %A,%D
leaw $0,%A
movw %D,(%A)
; 9 - PUSH constant 1
leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 10 - ADD
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
addw %S, %D, %S
movw %S, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; 11 - POP temp 0
leaw $0,%A 
movw (%A),%D 
movw %D,%A
decw %A
movw (%A),%D
movw %A,%S 
leaw $0,%A 
movw %S,(%A)
leaw $5,%A 
movw %A,%S
leaw $0,%A
addw %S,%A,%A
movw %D,(%A)
; 12 - PUSH temp 1
leaw $5,%A
movw %A,%D
leaw $1,%A
addw %D,%A,%S
movw %S,%A
movw (%A),%S
leaw $0,%A
movw (%A),%D
movw %D,%A 
movw %S,(%A)
incw %A
movw %A,%D
leaw $0,%A
movw %D,(%A)
; 13 - PUSH temp 1
leaw $5,%A
movw %A,%D
leaw $1,%A
addw %D,%A,%S
movw %S,%A
movw (%A),%S
leaw $0,%A
movw (%A),%D
movw %D,%A 
movw %S,(%A)
incw %A
movw %A,%D
leaw $0,%A
movw %D,(%A)
; 14 - ADD
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
addw %S, %D, %S
movw %S, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; 15 - POP temp 1
leaw $0,%A 
movw (%A),%D 
movw %D,%A
decw %A
movw (%A),%D
movw %A,%S 
leaw $0,%A 
movw %S,(%A)
leaw $5,%A 
movw %A,%S
leaw $1,%A
addw %S,%A,%A
movw %D,(%A)
; 16 - Goto Incondicional
leaw $LOOP_START, %A
jmp
nop
; Label (marcador)
END:
; End
