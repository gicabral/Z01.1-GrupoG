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
; Label (marcador)
loop:
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
leaw $VERDADE-a3036353-7fa2-4732-ad70-aa0d738da758,%A
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
leaw $FINISH-a3036353-7fa2-4732-ad70-aa0d738da758,%A
jmp
nop
VERDADE-a3036353-7fa2-4732-ad70-aa0d738da758:
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
leaw $FINISH-a3036353-7fa2-4732-ad70-aa0d738da758,%A
jmp
nop
FINISH-a3036353-7fa2-4732-ad70-aa0d738da758:
; 8 - Goto Condicional
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %S
movw %S, %A
movw (%A), %D
notw %D
leaw $end, %A
je %D
nop
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
; 17 - Goto Incondicional
leaw $loop, %A
jmp
nop
; Label (marcador)
end:
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
; 21 - PUSH constant 7
leaw $0, %A
movw (%A), %D
leaw $7, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 22 - PUSH constant 2
leaw $0, %A
movw (%A), %D
leaw $2, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 23 - ADD
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
; 24 - PUSH constant 3
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
END:
; 26 - Goto Incondicional
leaw $END, %A
jmp
nop
; End
