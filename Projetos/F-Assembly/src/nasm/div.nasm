; ####################################################################
; Arquivo: Div.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Divide R0 por R1 e armazena o resultado em R2.
; (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
;
; Divisao entre numeros inteiros positivos
; ####################################################################

; S = RAM[1]
leaw $R0, %A
movw (%A), %S

LOOP:
    ; S = S - RAM[2], ou seja, S é o resto.
	leaw $R1, %A
	subw %S, (%A), %S

    ; Incrementando RAM[3]
    leaw $R2, %A
    movw (%A), %D
    incw %D
    movw %D, (%A)

    ; D = S - RAM[1].
	leaw $R1, %A
	subw %S, (%A), %D

    ; Pular se D < 0.
	leaw $END, %A
	jl %D
    nop

    ; Voltar ao início do LOOP caso contrário.
	leaw $LOOP, %A
	jmp
    nop
END: 
; Guardar S (resto) em RAM[0].
leaw $3, %A
movw %S, (%A)
