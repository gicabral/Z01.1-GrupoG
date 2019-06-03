; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 0
leaw $0, %A
movw (%A), %D
leaw $0, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 2 - POP local 0
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %S
leaw $1, %A
movw (%A), %D
leaw $0,%A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; 3 - PUSH argument 1
; 4 - POP local 1
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %S
leaw $1, %A
movw (%A), %D
leaw $1,%A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; 5 - PUSH constant 0
leaw $0, %A
movw (%A), %D
leaw $0, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 6 - PUSH local 1
leaw $1,%A
movw (%A),%D
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
; 7 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-c8374eca-b562-4d29-b86e-14177186705c,%A
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
leaw $FINISH-c8374eca-b562-4d29-b86e-14177186705c,%A
jmp
nop
VERDADE-c8374eca-b562-4d29-b86e-14177186705c:
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
leaw $FINISH-c8374eca-b562-4d29-b86e-14177186705c,%A
jmp
nop
FINISH-c8374eca-b562-4d29-b86e-14177186705c:
; 9 - PUSH local 0
leaw $1,%A
movw (%A),%D
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
; 10 - PUSH argument 0
; 11 - ADD
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
; 12 - POP local 0
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %S
leaw $1, %A
movw (%A), %D
leaw $0,%A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; 13 - PUSH local 1
leaw $1,%A
movw (%A),%D
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
; 14 - PUSH constant 1
leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 15 - SUB
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
movw %S, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; 16 - POP local 1
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %S
leaw $1, %A
movw (%A), %D
leaw $1,%A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; 18 - PUSH local 0
leaw $1,%A
movw (%A),%D
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
; 21 - PUSH constant 3
leaw $0, %A
movw (%A), %D
leaw $3, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 22 - PUSH constant 3
leaw $0, %A
movw (%A), %D
leaw $3, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 24 - POP temp 2
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
leaw $2,%A
addw %S,%A,%A
movw %D,(%A)
; End
