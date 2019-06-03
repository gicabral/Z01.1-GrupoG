; 0 - PUSH constant 17
leaw $0, %A
movw (%A), %D
leaw $17, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 1 - PUSH constant 17
leaw $0, %A
movw (%A), %D
leaw $17, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 2 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-39c8f71c-c368-497f-9e61-5d0143ca640d,%A
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
leaw $FINISH-39c8f71c-c368-497f-9e61-5d0143ca640d,%A
jmp
nop
VERDADE-39c8f71c-c368-497f-9e61-5d0143ca640d:
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
leaw $FINISH-39c8f71c-c368-497f-9e61-5d0143ca640d,%A
jmp
nop
FINISH-39c8f71c-c368-497f-9e61-5d0143ca640d:
; 3 - PUSH constant 17
leaw $0, %A
movw (%A), %D
leaw $17, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 4 - PUSH constant 16
leaw $0, %A
movw (%A), %D
leaw $16, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 5 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-02b19acf-f7bc-45e7-9485-cdf429da3e96,%A
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
leaw $FINISH-02b19acf-f7bc-45e7-9485-cdf429da3e96,%A
jmp
nop
VERDADE-02b19acf-f7bc-45e7-9485-cdf429da3e96:
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
leaw $FINISH-02b19acf-f7bc-45e7-9485-cdf429da3e96,%A
jmp
nop
FINISH-02b19acf-f7bc-45e7-9485-cdf429da3e96:
; 6 - PUSH constant 16
leaw $0, %A
movw (%A), %D
leaw $16, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 7 - PUSH constant 17
leaw $0, %A
movw (%A), %D
leaw $17, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 8 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-708cef44-4428-4e99-a598-4fccf3830e10,%A
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
leaw $FINISH-708cef44-4428-4e99-a598-4fccf3830e10,%A
jmp
nop
VERDADE-708cef44-4428-4e99-a598-4fccf3830e10:
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
leaw $FINISH-708cef44-4428-4e99-a598-4fccf3830e10,%A
jmp
nop
FINISH-708cef44-4428-4e99-a598-4fccf3830e10:
; 9 - PUSH constant 892
leaw $0, %A
movw (%A), %D
leaw $892, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 10 - PUSH constant 891
leaw $0, %A
movw (%A), %D
leaw $891, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 11 - LT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-3a1023a0-2eaa-49e6-b5fe-87609f49273a,%A
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
leaw $FINISH-3a1023a0-2eaa-49e6-b5fe-87609f49273a,%A
jmp
nop
VERDADE-3a1023a0-2eaa-49e6-b5fe-87609f49273a:
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
leaw $FINISH-3a1023a0-2eaa-49e6-b5fe-87609f49273a,%A
jmp
nop
FINISH-3a1023a0-2eaa-49e6-b5fe-87609f49273a:
; 12 - PUSH constant 891
leaw $0, %A
movw (%A), %D
leaw $891, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 13 - PUSH constant 892
leaw $0, %A
movw (%A), %D
leaw $892, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 14 - LT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-ee55667e-08dd-4983-af19-1e2019c216f9,%A
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
leaw $FINISH-ee55667e-08dd-4983-af19-1e2019c216f9,%A
jmp
nop
VERDADE-ee55667e-08dd-4983-af19-1e2019c216f9:
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
leaw $FINISH-ee55667e-08dd-4983-af19-1e2019c216f9,%A
jmp
nop
FINISH-ee55667e-08dd-4983-af19-1e2019c216f9:
; 15 - PUSH constant 891
leaw $0, %A
movw (%A), %D
leaw $891, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 16 - PUSH constant 891
leaw $0, %A
movw (%A), %D
leaw $891, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 17 - LT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-f9e0fcf5-78bc-4679-96bb-af10c8937f95,%A
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
leaw $FINISH-f9e0fcf5-78bc-4679-96bb-af10c8937f95,%A
jmp
nop
VERDADE-f9e0fcf5-78bc-4679-96bb-af10c8937f95:
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
leaw $FINISH-f9e0fcf5-78bc-4679-96bb-af10c8937f95,%A
jmp
nop
FINISH-f9e0fcf5-78bc-4679-96bb-af10c8937f95:
; 18 - PUSH constant 32767
leaw $0, %A
movw (%A), %D
leaw $32767, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 19 - PUSH constant 32766
leaw $0, %A
movw (%A), %D
leaw $32766, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 20 - GT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-0cc5c204-40dc-44fa-be5d-2c9807f77a1d,%A
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
leaw $FINISH-0cc5c204-40dc-44fa-be5d-2c9807f77a1d,%A
jmp
nop
VERDADE-0cc5c204-40dc-44fa-be5d-2c9807f77a1d:
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
leaw $FINISH-0cc5c204-40dc-44fa-be5d-2c9807f77a1d,%A
jmp
nop
FINISH-0cc5c204-40dc-44fa-be5d-2c9807f77a1d:
; 21 - PUSH constant 32766
leaw $0, %A
movw (%A), %D
leaw $32766, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 22 - PUSH constant 32767
leaw $0, %A
movw (%A), %D
leaw $32767, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 23 - GT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-719a43c8-13d1-42fd-9d27-3bf6c8859047,%A
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
leaw $FINISH-719a43c8-13d1-42fd-9d27-3bf6c8859047,%A
jmp
nop
VERDADE-719a43c8-13d1-42fd-9d27-3bf6c8859047:
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
leaw $FINISH-719a43c8-13d1-42fd-9d27-3bf6c8859047,%A
jmp
nop
FINISH-719a43c8-13d1-42fd-9d27-3bf6c8859047:
; 24 - PUSH constant 32766
leaw $0, %A
movw (%A), %D
leaw $32766, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 25 - PUSH constant 32766
leaw $0, %A
movw (%A), %D
leaw $32766, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 26 - GT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
leaw $VERDADE-fef85697-6cbb-41ad-89e1-859c9fa208cc,%A
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
leaw $FINISH-fef85697-6cbb-41ad-89e1-859c9fa208cc,%A
jmp
nop
VERDADE-fef85697-6cbb-41ad-89e1-859c9fa208cc:
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
leaw $FINISH-fef85697-6cbb-41ad-89e1-859c9fa208cc,%A
jmp
nop
FINISH-fef85697-6cbb-41ad-89e1-859c9fa208cc:
; 27 - PUSH constant 57
leaw $0, %A
movw (%A), %D
leaw $57, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 28 - PUSH constant 31
leaw $0, %A
movw (%A), %D
leaw $31, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 29 - PUSH constant 53
leaw $0, %A
movw (%A), %D
leaw $53, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 30 - ADD
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
addw %S, %D, %S
movw %S, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; 31 - PUSH constant 112
leaw $0, %A
movw (%A), %D
leaw $112, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 32 - SUB
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S, %D, %S
movw %S, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; 33 - NEG
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
negw %D
movw %D, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; 34 - AND
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
andw %S, %D, %S
movw %S, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; 35 - PUSH constant 82
leaw $0, %A
movw (%A), %D
leaw $82, %A
movw %A, %S
movw %D, %A
movw %S, (%A)
incw %D
leaw $SP,%A
movw %D, (%A)
; 36 - OR
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
orw %S, %D, %S
movw %S, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; 37 - NOT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
notw %D
movw %D, (%A)
movw %A, %D
incw %D
leaw $SP,%A
movw %D,(%A)
; End
