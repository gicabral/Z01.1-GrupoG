; 0 - PUSH constant 5
leaw $0, %A
movw (%A), %D
leaw $5, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 1 - PUSH constant 15
leaw $0, %A
movw (%A), %D
leaw $15, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 2 - PUSH constant 15
leaw $0, %A
movw (%A), %D
leaw $15, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 3 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-f3420f86-96af-47c1-9f8d-77c1432e63a2,%A
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
leaw $FINISH-f3420f86-96af-47c1-9f8d-77c1432e63a2,%A
jmp
nop
VERDADE-f3420f86-96af-47c1-9f8d-77c1432e63a2:
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
leaw $FINISH-f3420f86-96af-47c1-9f8d-77c1432e63a2,%A
jmp
nop
FINISH-f3420f86-96af-47c1-9f8d-77c1432e63a2:
; 4 - Goto Condicional
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %S
movw %S, %A
movw (%A), %D
notw %D
leaw $IF1, %A
je %D
nop
; Label (marcador)
ELSE1:
; 5 - PUSH constant 3
leaw $0, %A
movw (%A), %D
leaw $3, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; Label (marcador)
IF1:
; 6 - POP temp 0
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
; 7 - PUSH constant 15
leaw $0, %A
movw (%A), %D
leaw $15, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 8 - PUSH constant 9
leaw $0, %A
movw (%A), %D
leaw $9, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 9 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-5291b985-6691-4fdd-bf1d-9c72c2e3490f,%A
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
leaw $FINISH-5291b985-6691-4fdd-bf1d-9c72c2e3490f,%A
jmp
nop
VERDADE-5291b985-6691-4fdd-bf1d-9c72c2e3490f:
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
leaw $FINISH-5291b985-6691-4fdd-bf1d-9c72c2e3490f,%A
jmp
nop
FINISH-5291b985-6691-4fdd-bf1d-9c72c2e3490f:
; 10 - Goto Condicional
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %S
movw %S, %A
movw (%A), %D
notw %D
leaw $IF2, %A
je %D
nop
; Label (marcador)
ELSE2:
; 11 - PUSH constant 2
leaw $0, %A
movw (%A), %D
leaw $2, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 12 - POP temp 1
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
IF2:
; End
