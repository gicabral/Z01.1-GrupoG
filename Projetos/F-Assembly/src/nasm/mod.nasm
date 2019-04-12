; ####################################################################
; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Divide o número posicionado na RAM[1] pelo número posicionado no RAM[2] e armazena o resultado do resto da divisao na RAM[0].
; ####################################################################

; S = RAM[1]
leaw $R1, %A
movw (%A), %S

LOOP:
    ; S = S - RAM[2], ou seja, S é o resto.
	leaw $R2, %A
	subw %S, (%A), %S

    ; Incrementando RAM[3]
    leaw $R3, %A
    movw (%A), %D
    incw %D
    movw %D, (%A)

    ; D = S - RAM[2].
	leaw $R2, %A
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
leaw $0, %A
movw %S, (%A)