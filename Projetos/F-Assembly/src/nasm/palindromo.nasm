; Arquivo: palindromo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se uma palavra salva na memória
; é um palíndromo ou não. Se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.
; 
; A palavra possui tamanho fixo de 5 caracteres,
; começando no endereço 10 da RAM e terminando no
; endereço 14 da RAM. A palavra é codificado em
; ASCII.

; exemplo:
;  RAM[10] = a
;  RAM[11] = r
;  RAM[12] = a
;  RAM[13] = r
;  RAM[14] = a
; 

leaw $10, %A
movw (%A), %S

leaw $14, %A
movw (%A), %A
subw %S, %A, %S

leaw $NPALINDROMO, %A
jne %S
nop


leaw $11, %A
movw (%A), %D

leaw $13, %A
movw (%A), %A
subw %D, %A, %D

leaw $NPALINDROMO, %A
jne %D
nop

PALINDROMO:
leaw $1, %A
movw %A, %D
leaw $R0, %A
movw %D, (%A)
leaw $FIM, %A
jmp
nop


NPALINDROMO:
leaw $0, %A
movw %A, (%A)

FIM:
leaw $FIM, %A
jmp
nop















