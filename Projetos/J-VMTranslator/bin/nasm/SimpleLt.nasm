; 0 - LT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-fa773825-992e-48bd-ba89-f0261ef9e86a,%A
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
leaw $FINISH-fa773825-992e-48bd-ba89-f0261ef9e86a,%A
jmp
nop
VERDADE-fa773825-992e-48bd-ba89-f0261ef9e86a:
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
leaw $FINISH-fa773825-992e-48bd-ba89-f0261ef9e86a,%A
jmp
nop
FINISH-fa773825-992e-48bd-ba89-f0261ef9e86a:
; End
