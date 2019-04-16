; Arquivo: isEven.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se o valor salvo no endereço RAM[5] é
; par. Se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.

; S = RAM[5]
leaw $R5, %A
movw (%A), %D

leaw $1, %A
andw %A, %D, %D

notw %D
andw %A, %D, %D

;coloca 0 em Ram[0] casa nao seja par e 1 se for par
leaw $0, %A
movw %D, (%A)
