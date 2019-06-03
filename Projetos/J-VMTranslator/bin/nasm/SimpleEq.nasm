; 0 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-b15bbce0-29b9-44ab-b93a-7ce50e320ea8,%A
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
leaw $FINISH-b15bbce0-29b9-44ab-b93a-7ce50e320ea8,%A
jmp
nop
VERDADE-b15bbce0-29b9-44ab-b93a-7ce50e320ea8:
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
leaw $FINISH-b15bbce0-29b9-44ab-b93a-7ce50e320ea8,%A
jmp
nop
FINISH-b15bbce0-29b9-44ab-b93a-7ce50e320ea8:
; End
