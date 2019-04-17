; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em (R0) e armazena o valor em (R1).

leaw $R0, %A
movw (%A), %S
decw %S

leaw $NUM_N_ZERO, %A
jge %S;
nop

leaw $R1, %A
movw %A, %D
movw %D, (%A)

leaw $END, %A
jmp
nop

NUM_N_ZERO:
incw %S
leaw $R0, %A
movw %A, %D
leaw $R2, %A
movw %S, (%A)
decw %S

SUBT:
movw %S, (%A)

MULT:
leaw $R0, %A
addw %D, (%A), %D
decw %S
leaw $MULT, %A
jg %S
nop

leaw $R2, %A
movw (%A), %S
decw %S
movw %S, (%A)
leaw $0, %A
movw %D, (%A)
movw %A, %D
leaw $SUBT, %A
jg %S
nop

leaw $R0, %A
movw (%A), %D
leaw $R1, %A
movw %D, (%A)

END:
