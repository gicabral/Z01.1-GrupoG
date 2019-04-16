; Arquivo: LCDnomeGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD o nome do grupo


; G

leaw $65535, %A
movw %A, %D
leaw $16405, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16425, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16445, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16465, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16485, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16505, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16525, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16545, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16565, %A,
movw %D, (%A)

leaw $64515, %A
movw %A, %D
leaw $16585, %A,
movw %D, (%A)

leaw $64515, %A
movw %A, %D
leaw $16605, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16625, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16645, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16665, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16685, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16705, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16725, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16745, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16765, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16785, %A,
movw %D, (%A)

; R

leaw $65280, %A
movw %A, %D
leaw $16406, %A,
movw %D, (%A)

leaw $65280, %A
movw %A, %D
leaw $16426, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16446, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16466, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16486, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16506, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16526, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16546, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16566, %A,
movw %D, (%A)

leaw $65280, %A
movw %A, %D
leaw $16586, %A,
movw %D, (%A)

leaw $65280, %A
movw %A, %D
leaw $16606, %A,
movw %D, (%A)





leaw $768, %A
movw %A, %D
leaw $16626, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16646, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16666, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16686, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16706, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16726, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16746, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16766, %A,
movw %D, (%A)

leaw $768, %A
movw %A, %D
leaw $16786, %A,
movw %D, (%A)




leaw $1539, %A
movw %A, %D
leaw $16427, %A,
movw %D, (%A)

leaw $1542, %A
movw %A, %D
leaw $16447, %A,
movw %D, (%A)

leaw $1542, %A
movw %A, %D
leaw $16467, %A,
movw %D, (%A)

leaw $1548, %A
movw %A, %D
leaw $16487, %A,
movw %D, (%A)

leaw $1548, %A
movw %A, %D
leaw $16507, %A,
movw %D, (%A)

leaw $1548, %A
movw %A, %D
leaw $16527, %A,
movw %D, (%A)

leaw $1542, %A
movw %A, %D
leaw $16547, %A,
movw %D, (%A)

leaw $1542, %A
movw %A, %D
leaw $16567, %A,
movw %D, (%A)

leaw $1539, %A
movw %A, %D
leaw $16587, %A,
movw %D, (%A)


;ATE AQUI E O P

leaw $1536, %A
movw %A, %D
leaw $16407, %A,
movw %D, (%A)

leaw $1536, %A
movw %A, %D
leaw $16607, %A,
movw %D, (%A)

leaw $1539, %A
movw %A, %D
leaw $16627, %A,
movw %D, (%A)

leaw $1542, %A
movw %A, %D
leaw $16647, %A,
movw %D, (%A)

leaw $1542, %A
movw %A, %D
leaw $16667, %A,
movw %D, (%A)

leaw $1548, %A
movw %A, %D
leaw $16687, %A,
movw %D, (%A)

leaw $1548, %A
movw %A, %D
leaw $16707, %A,
movw %D, (%A)

leaw $1548, %A
movw %A, %D
leaw $16727, %A,
movw %D, (%A)

leaw $1548, %A
movw %A, %D
leaw $16747, %A,
movw %D, (%A)

leaw $65036, %A
movw %A, %D
leaw $16767, %A,
movw %D, (%A)

leaw $65036, %A
movw %A, %D
leaw $16787, %A,
movw %D, (%A)

;U





leaw $65292, %A
movw %A, %D
leaw $16408, %A,
movw %D, (%A)

leaw $65292, %A
movw %A, %D
leaw $16428, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16448, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16468, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16488, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16508, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16528, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16548, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16568, %A,
movw %D, (%A)

leaw $65292, %A
movw %A, %D
leaw $16588, %A,
movw %D, (%A)

leaw $65292, %A
movw %A, %D
leaw $16608, %A,
movw %D, (%A)





leaw $780, %A
movw %A, %D
leaw $16628, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16648, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16668, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16688, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16708, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16728, %A,
movw %D, (%A)

leaw $780, %A
movw %A, %D
leaw $16748, %A,
movw %D, (%A)

leaw $783, %A
movw %A, %D
leaw $16768, %A,
movw %D, (%A)

leaw $783, %A
movw %A, %D
leaw $16788, %A,
movw %D, (%A)






leaw $65024, %A
movw %A, %D
leaw $16409, %A,
movw %D, (%A)

leaw $65027, %A
movw %A, %D
leaw $16429, %A,
movw %D, (%A)

leaw $1542, %A
movw %A, %D
leaw $16449, %A,
movw %D, (%A)

leaw $1542, %A
movw %A, %D
leaw $16469, %A,
movw %D, (%A)

leaw $1548, %A
movw %A, %D
leaw $16489, %A,
movw %D, (%A)

leaw $1548, %A
movw %A, %D
leaw $16509, %A,
movw %D, (%A)

leaw $1548, %A
movw %A, %D
leaw $16529, %A,
movw %D, (%A)

leaw $1542, %A
movw %A, %D
leaw $16549, %A,
movw %D, (%A)

leaw $1542, %A
movw %A, %D
leaw $16569, %A,
movw %D, (%A)

leaw $1539, %A
movw %A, %D
leaw $16589, %A,
movw %D, (%A)

leaw $1536, %A
movw %A, %D
leaw $16609, %A,
movw %D, (%A)

leaw $1536, %A
movw %A, %D
leaw $16629, %A,
movw %D, (%A)

leaw $1536, %A
movw %A, %D
leaw $16649, %A,
movw %D, (%A)

leaw $1536, %A
movw %A, %D
leaw $16669, %A,
movw %D, (%A)

leaw $1536, %A
movw %A, %D
leaw $16689, %A,
movw %D, (%A)

leaw $1536, %A
movw %A, %D
leaw $16709, %A,
movw %D, (%A)

leaw $1536, %A
movw %A, %D
leaw $16729, %A,
movw %D, (%A)

leaw $1536, %A
movw %A, %D
leaw $16749, %A,
movw %D, (%A)

leaw $65024, %A
movw %A, %D
leaw $16769, %A,
movw %D, (%A)

leaw $65024, %A
movw %A, %D
leaw $16789, %A,
movw %D, (%A)












leaw $63, %A
movw %A, %D
leaw $16410, %A,
movw %D, (%A)

leaw $63, %A
movw %A, %D
leaw $16430, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16450, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16470, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16490, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16510, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16530, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16550, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16570, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16590, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16610, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16630, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16650, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16670, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16690, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16710, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16730, %A,
movw %D, (%A)

leaw $48, %A
movw %A, %D
leaw $16750, %A,
movw %D, (%A)

leaw $63, %A
movw %A, %D
leaw $16770, %A,
movw %D, (%A)

leaw $63, %A
movw %A, %D
leaw $16790, %A,
movw %D, (%A)










leaw $0, %A
movw %A, %D
leaw $16411, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16431, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16451, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16471, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16491, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16511, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16531, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16551, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16571, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16591, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16611, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16631, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16651, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16671, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16691, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16711, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16731, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16751, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16771, %A,
movw %D, (%A)

leaw $0, %A
movw %A, %D
leaw $16791, %A,
movw %D, (%A)








leaw $65535, %A
movw %A, %D
leaw $16412, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16432, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16452, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16472, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16492, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16512, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16532, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16552, %A,
movw %D, (%A)

leaw $3, %A
movw %A, %D
leaw $16572, %A,
movw %D, (%A)

leaw $64515, %A
movw %A, %D
leaw $16592, %A,
movw %D, (%A)

leaw $64515, %A
movw %A, %D
leaw $16612, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16632, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16652, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16672, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16692, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16712, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16732, %A,
movw %D, (%A)

leaw $49155, %A
movw %A, %D
leaw $16752, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16772, %A,
movw %D, (%A)

leaw $65535, %A
movw %A, %D
leaw $16792, %A,
movw %D, (%A)

