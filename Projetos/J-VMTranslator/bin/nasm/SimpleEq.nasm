; 0 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-0444b1f9-1cbe-4ba0-8caa-da20584dd4cf,%A
je %S
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
leaw $FINISH-0444b1f9-1cbe-4ba0-8caa-da20584dd4cf,%A
jmp
nop
VERDADE-0444b1f9-1cbe-4ba0-8caa-da20584dd4cf:
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
leaw $FINISH-0444b1f9-1cbe-4ba0-8caa-da20584dd4cf,%A
jmp
nop
FINISH-0444b1f9-1cbe-4ba0-8caa-da20584dd4cf:
; End
