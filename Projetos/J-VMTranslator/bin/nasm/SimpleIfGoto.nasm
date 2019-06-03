; 0 - PUSH constant 5
leaw $0, %A
movw (%A), %D
leaw $5, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 1 - PUSH constant 15
leaw $0, %A
movw (%A), %D
leaw $15, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 2 - PUSH constant 15
leaw $0, %A
movw (%A), %D
leaw $15, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 3 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-9e33dce4-828b-4f61-9d17-f65b14631b86,%A
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
leaw $FINISH-9e33dce4-828b-4f61-9d17-f65b14631b86,%A
jmp
nop
VERDADE-9e33dce4-828b-4f61-9d17-f65b14631b86:
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
leaw $FINISH-9e33dce4-828b-4f61-9d17-f65b14631b86,%A
jmp
nop
FINISH-9e33dce4-828b-4f61-9d17-f65b14631b86:
; 5 - PUSH constant 3
leaw $0, %A
movw (%A), %D
leaw $3, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 6 - POP temp 0
leaw $0,%A 
movw (%A),%D 
movw %D,%A
decw %A
movw (%A),%D
movw %A,%S 
leaw $0,%A 
movw %S,(%A)
leaw $5,%A 
movw %A,%S
leaw $0,%A
addw %S,%A,%A
movw %D,(%A)
; 7 - PUSH constant 15
leaw $0, %A
movw (%A), %D
leaw $15, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 8 - PUSH constant 9
leaw $0, %A
movw (%A), %D
leaw $9, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 9 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-2b7e9dc5-0dbb-444a-972c-65d65456238a,%A
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
leaw $FINISH-2b7e9dc5-0dbb-444a-972c-65d65456238a,%A
jmp
nop
VERDADE-2b7e9dc5-0dbb-444a-972c-65d65456238a:
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
leaw $FINISH-2b7e9dc5-0dbb-444a-972c-65d65456238a,%A
jmp
nop
FINISH-2b7e9dc5-0dbb-444a-972c-65d65456238a:
; 11 - PUSH constant 2
leaw $0, %A
movw (%A), %D
leaw $2, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 12 - POP temp 1
leaw $0,%A 
movw (%A),%D 
movw %D,%A
decw %A
movw (%A),%D
movw %A,%S 
leaw $0,%A 
movw %S,(%A)
leaw $5,%A 
movw %A,%S
leaw $1,%A
addw %S,%A,%A
movw %D,(%A)
; End
