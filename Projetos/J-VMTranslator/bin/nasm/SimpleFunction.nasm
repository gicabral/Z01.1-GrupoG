; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 1
leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 2 - PUSH constant 2
leaw $0, %A
movw (%A), %D
leaw $2, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; Label (marcador)
loop:
; 4 - Goto Incondicional
leaw $loop, %A
jmp
nop
; 6 - PUSH argument 0
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
; 7 - PUSH argument 1
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
; 8 - ADD
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
; End
