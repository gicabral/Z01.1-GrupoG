; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH argument 0
leaw $2,%A
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
; 2 - POP static 0
leaw $0,%A
movw (%A),%D
movw %D,%A
decw %A
movw (%A),%D
movw %A,%S
leaw $0,%A
movw %S,(%A)
leaw $16,%A
movw %A,%S
leaw $0,%A
addw %S,%A,%A
movw %D,(%A)
; 3 - PUSH argument 1
leaw $2,%A
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
; 4 - POP static 1
leaw $0,%A
movw (%A),%D
movw %D,%A
decw %A
movw (%A),%D
movw %A,%S
leaw $0,%A
movw %S,(%A)
leaw $16,%A
movw %A,%S
leaw $1,%A
addw %S,%A,%A
movw %D,(%A)
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
; 8 - PUSH static 0
leaw $16,%A
movw %A,%D 
leaw $0,%A
addw %D,%A,%D
movw %D,%A
movw (%A),%D
leaw $0,%A
movw (%A),%S
movw %S,%A
movw %D,(%A)
incw %A
movw %A,%S
leaw $0,%A
movw %S,(%A)
; 9 - PUSH static 1
leaw $16,%A
movw %A,%D 
leaw $1,%A
addw %D,%A,%D
movw %D,%A
movw (%A),%D
leaw $0,%A
movw (%A),%S
movw %S,%A
movw %D,(%A)
incw %A
movw %A,%S
leaw $0,%A
movw %S,(%A)
; 10 - SUB
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
; 13 - PUSH constant 6
leaw $0, %A
movw (%A), %D
leaw $6, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 14 - PUSH constant 8
leaw $0, %A
movw (%A), %D
leaw $8, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 16 - POP temp 0
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
; 17 - PUSH constant 23
leaw $0, %A
movw (%A), %D
leaw $23, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 18 - PUSH constant 15
leaw $0, %A
movw (%A), %D
leaw $15, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 20 - POP temp 0
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
; Label (marcador)
WHILE:
; 23 - Goto Incondicional
leaw $WHILE, %A
jmp
nop
; 25 - PUSH argument 0
leaw $2,%A
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
; 26 - POP static 0
leaw $0,%A
movw (%A),%D
movw %D,%A
decw %A
movw (%A),%D
movw %A,%S
leaw $0,%A
movw %S,(%A)
leaw $16,%A
movw %A,%S
leaw $0,%A
addw %S,%A,%A
movw %D,(%A)
; 27 - PUSH argument 1
leaw $2,%A
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
; 28 - POP static 1
leaw $0,%A
movw (%A),%D
movw %D,%A
decw %A
movw (%A),%D
movw %A,%S
leaw $0,%A
movw %S,(%A)
leaw $16,%A
movw %A,%S
leaw $1,%A
addw %S,%A,%A
movw %D,(%A)
; 29 - PUSH constant 0
leaw $0, %A
movw (%A), %D
leaw $0, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 32 - PUSH static 0
leaw $16,%A
movw %A,%D 
leaw $0,%A
addw %D,%A,%D
movw %D,%A
movw (%A),%D
leaw $0,%A
movw (%A),%S
movw %S,%A
movw %D,(%A)
incw %A
movw %A,%S
leaw $0,%A
movw %S,(%A)
; 33 - PUSH static 1
leaw $16,%A
movw %A,%D 
leaw $1,%A
addw %D,%A,%D
movw %D,%A
movw (%A),%D
leaw $0,%A
movw (%A),%S
movw %S,%A
movw %D,(%A)
incw %A
movw %A,%S
leaw $0,%A
movw %S,(%A)
; 34 - SUB
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
; End
