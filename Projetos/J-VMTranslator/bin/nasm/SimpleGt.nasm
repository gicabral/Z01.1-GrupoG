; 0 - GT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-14b1da51-da27-4aaa-9487-bde0d7d44da5,%A
jg %S
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
leaw $FINISH-14b1da51-da27-4aaa-9487-bde0d7d44da5,%A
jmp
nop
VERDADE-14b1da51-da27-4aaa-9487-bde0d7d44da5:
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
leaw $FINISH-14b1da51-da27-4aaa-9487-bde0d7d44da5,%A
jmp
nop
FINISH-14b1da51-da27-4aaa-9487-bde0d7d44da5:
; End
