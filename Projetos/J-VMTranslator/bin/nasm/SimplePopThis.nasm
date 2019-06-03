; 0 - POP this 0
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %S
leaw $3, %A
movw (%A), %D
leaw $0,%A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; 1 - POP this 1
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %S
leaw $3, %A
movw (%A), %D
leaw $1,%A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; 2 - POP this 2
leaw $0, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %S
leaw $3, %A
movw (%A), %D
leaw $2,%A
addw %A, %D, %D
movw %D, %A
movw %S, (%A)
; End
