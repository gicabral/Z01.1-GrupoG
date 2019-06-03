; 0 - GT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-7afec9af-4a31-4ebc-9a11-5eed94061871,%A
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
leaw $FINISH-7afec9af-4a31-4ebc-9a11-5eed94061871,%A
jmp
nop
VERDADE-7afec9af-4a31-4ebc-9a11-5eed94061871:
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
leaw $FINISH-7afec9af-4a31-4ebc-9a11-5eed94061871,%A
jmp
nop
FINISH-7afec9af-4a31-4ebc-9a11-5eed94061871:
; End
