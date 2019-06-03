; 0 - POP pointer 0
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %S
leaw $3, %A
movw %S, (%A)
; 1 - POP pointer 1
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %S
leaw $4, %A
movw %S, (%A)
; End
