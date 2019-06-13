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
leaw $VERDADE-ac3900fe-094c-42f2-b747-d4a0ac1fa1cf,%A
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
leaw $FINISH-ac3900fe-094c-42f2-b747-d4a0ac1fa1cf,%A
jmp
nop
VERDADE-ac3900fe-094c-42f2-b747-d4a0ac1fa1cf:
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
leaw $FINISH-ac3900fe-094c-42f2-b747-d4a0ac1fa1cf,%A
jmp
nop
FINISH-ac3900fe-094c-42f2-b747-d4a0ac1fa1cf:
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
; Label (marcador)
while:
; 21 - Goto Incondicional
leaw $while, %A
jmp
nop
; End
