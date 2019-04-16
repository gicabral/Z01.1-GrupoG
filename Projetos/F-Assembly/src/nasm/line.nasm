;Escrever uma linha na tela



leaw $65535, %A
movw %A, %D
leaw $18795, %A,
movw %D, (%A)