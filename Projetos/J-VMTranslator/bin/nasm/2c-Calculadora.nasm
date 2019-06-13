; Inicialização para VM
leaw $Main.main, %A
jmp
nop
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
; 2 - PUSH constant 5
leaw $0, %A
movw (%A), %D
leaw $5, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 4 - POP temp 1
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
while:
; 5 - Goto Incondicional
leaw $while, %A
jmp
nop
; End
