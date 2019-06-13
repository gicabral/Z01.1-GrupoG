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
leaw $VERDADE-d49fca25-5032-43dc-831e-96aeef322112,%A
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
leaw $FINISH-d49fca25-5032-43dc-831e-96aeef322112,%A
jmp
nop
VERDADE-d49fca25-5032-43dc-831e-96aeef322112:
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
leaw $FINISH-d49fca25-5032-43dc-831e-96aeef322112,%A
jmp
nop
FINISH-d49fca25-5032-43dc-831e-96aeef322112:
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
leaw $VERDADE-66d85cb0-de31-4163-930c-efa17bd79bf7,%A
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
leaw $FINISH-66d85cb0-de31-4163-930c-efa17bd79bf7,%A
jmp
nop
VERDADE-66d85cb0-de31-4163-930c-efa17bd79bf7:
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
leaw $FINISH-66d85cb0-de31-4163-930c-efa17bd79bf7,%A
jmp
nop
FINISH-66d85cb0-de31-4163-930c-efa17bd79bf7:
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
leaw $VERDADE-1795efd9-7273-41c5-9aec-c70fac21a85c,%A
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
leaw $FINISH-1795efd9-7273-41c5-9aec-c70fac21a85c,%A
jmp
nop
VERDADE-1795efd9-7273-41c5-9aec-c70fac21a85c:
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
leaw $FINISH-1795efd9-7273-41c5-9aec-c70fac21a85c,%A
jmp
nop
FINISH-1795efd9-7273-41c5-9aec-c70fac21a85c:
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
leaw $VERDADE-e5c9d6de-4ac5-47cd-9128-b91ccbe422ce,%A
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
leaw $FINISH-e5c9d6de-4ac5-47cd-9128-b91ccbe422ce,%A
jmp
nop
VERDADE-e5c9d6de-4ac5-47cd-9128-b91ccbe422ce:
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
leaw $FINISH-e5c9d6de-4ac5-47cd-9128-b91ccbe422ce,%A
jmp
nop
FINISH-e5c9d6de-4ac5-47cd-9128-b91ccbe422ce:
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
leaw $VERDADE-be869c4f-d678-4318-b4e4-42a7585f25f5,%A
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
leaw $FINISH-be869c4f-d678-4318-b4e4-42a7585f25f5,%A
jmp
nop
VERDADE-be869c4f-d678-4318-b4e4-42a7585f25f5:
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
leaw $FINISH-be869c4f-d678-4318-b4e4-42a7585f25f5,%A
jmp
nop
FINISH-be869c4f-d678-4318-b4e4-42a7585f25f5:
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
leaw $VERDADE-d5f571f2-3c0c-461e-8767-89e6bd6a9c29,%A
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
leaw $FINISH-d5f571f2-3c0c-461e-8767-89e6bd6a9c29,%A
jmp
nop
VERDADE-d5f571f2-3c0c-461e-8767-89e6bd6a9c29:
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
leaw $FINISH-d5f571f2-3c0c-461e-8767-89e6bd6a9c29,%A
jmp
nop
FINISH-d5f571f2-3c0c-461e-8767-89e6bd6a9c29:
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
leaw $VERDADE-db4bb8b4-ad74-4c2e-a52c-cd7b8d6fe1e2,%A
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
leaw $FINISH-db4bb8b4-ad74-4c2e-a52c-cd7b8d6fe1e2,%A
jmp
nop
VERDADE-db4bb8b4-ad74-4c2e-a52c-cd7b8d6fe1e2:
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
leaw $FINISH-db4bb8b4-ad74-4c2e-a52c-cd7b8d6fe1e2,%A
jmp
nop
FINISH-db4bb8b4-ad74-4c2e-a52c-cd7b8d6fe1e2:
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
leaw $VERDADE-bc663df7-bd90-4e82-92bf-7c0d683836c0,%A
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
leaw $FINISH-bc663df7-bd90-4e82-92bf-7c0d683836c0,%A
jmp
nop
VERDADE-bc663df7-bd90-4e82-92bf-7c0d683836c0:
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
leaw $FINISH-bc663df7-bd90-4e82-92bf-7c0d683836c0,%A
jmp
nop
FINISH-bc663df7-bd90-4e82-92bf-7c0d683836c0:
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
leaw $VERDADE-f9c6fea0-c4ef-4785-9ba9-e54a9c5bbe47,%A
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
leaw $FINISH-f9c6fea0-c4ef-4785-9ba9-e54a9c5bbe47,%A
jmp
nop
VERDADE-f9c6fea0-c4ef-4785-9ba9-e54a9c5bbe47:
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
leaw $FINISH-f9c6fea0-c4ef-4785-9ba9-e54a9c5bbe47,%A
jmp
nop
FINISH-f9c6fea0-c4ef-4785-9ba9-e54a9c5bbe47:
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
