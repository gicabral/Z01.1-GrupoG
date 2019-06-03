; 0 - LT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-5c8014cf-bf57-429c-8fb9-04b8340305dd,%A
jl %S
nop
movw $0,%D
leaw $SP,%A
movw (%A),%A
decw %A
decw %A
movw %D,(%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
leaw $FINISH-5c8014cf-bf57-429c-8fb9-04b8340305dd,%A
jmp
nop
VERDADE-5c8014cf-bf57-429c-8fb9-04b8340305dd:
leaw $131071,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
decw %A
decw %A
movw %D,(%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
leaw $FINISH-5c8014cf-bf57-429c-8fb9-04b8340305dd,%A
jmp
nop
FINISH-5c8014cf-bf57-429c-8fb9-04b8340305dd:
; End
