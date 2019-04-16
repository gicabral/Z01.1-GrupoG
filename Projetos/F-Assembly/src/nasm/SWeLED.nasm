; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = ON ON ON ON ON !SW3 !SW2 !SW1 0
; Mesma questão da prova


leaw $14, %A
movw %A, %D

leaw $21185, %A
movw (%A), %S
andw %S, %D, %A
movw %A, %D

leaw $496, %A
orw (%A), %D, %S
notw %S
leaw $1022, %A
andw %A, %S, %S

leaw $21184, %A
movw %S, (%A)

