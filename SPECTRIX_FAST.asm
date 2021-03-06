; Imported symbols
	.global AUDCTL
	.global SKCTL
	.globalzp CLS
	.globalzp COLOR
	.globalzp DRAWLN

; Exported symbols
	.export bytecode_start
	.exportzp NUM_VARS

	.include "atari.inc"

; TOKENS:
	.importzp	TOK_NUM
	.importzp	TOK_BYTE
	.importzp	TOK_CSTRING
	.importzp	TOK_VAR_SADDR
	.importzp	TOK_VAR_LOAD
	.importzp	TOK_SHL8
	.importzp	TOK_0
	.importzp	TOK_1
	.importzp	TOK_PUSH
	.importzp	TOK_PUSH_VAR_LOAD
	.importzp	TOK_PUSH_NUM
	.importzp	TOK_PUSH_BYTE
	.importzp	TOK_PUSH_0
	.importzp	TOK_PUSH_1
	.importzp	TOK_NEG
	.importzp	TOK_ADD
	.importzp	TOK_SUB
	.importzp	TOK_MUL
	.importzp	TOK_DIV
	.importzp	TOK_ADD_VAR
	.importzp	TOK_BIT_AND
	.importzp	TOK_PEEK
	.importzp	TOK_DPEEK
	.importzp	TOK_BYTE_PEEK
	.importzp	TOK_RAND
	.importzp	TOK_L_NOT
	.importzp	TOK_L_OR
	.importzp	TOK_L_AND
	.importzp	TOK_LT
	.importzp	TOK_GT
	.importzp	TOK_NEQ
	.importzp	TOK_EQ
	.importzp	TOK_COMP_0
	.importzp	TOK_POKE
	.importzp	TOK_DPOKE
	.importzp	TOK_VAR_STORE
	.importzp	TOK_SADDR
	.importzp	TOK_DECVAR
	.importzp	TOK_BYTE_POKE
	.importzp	TOK_NUM_POKE
	.importzp	TOK_VAR_STORE_0
	.importzp	TOK_POSITION
	.importzp	TOK_GRAPHICS
	.importzp	TOK_DRAWTO
	.importzp	TOK_PMGRAPHICS
	.importzp	TOK_PRINT_STR
	.importzp	TOK_CLOSE
	.importzp	TOK_PUT
	.importzp	TOK_IOCHN
	.importzp	TOK_JUMP
	.importzp	TOK_CJUMP
	.importzp	TOK_CNJUMP
	.importzp	TOK_CALL
	.importzp	TOK_RET
	.importzp	TOK_CRET
	.importzp	TOK_CNRET
	.importzp	TOK_FOR
	.importzp	TOK_FOR_NEXT
	.importzp	TOK_FOR_EXIT
	.importzp	TOK_DIM
	.importzp	TOK_USHL
	.importzp	TOK_COPY_STR
	.importzp	TOK_CMP_STR
	.importzp	TOK_INT_STR
	.importzp	TOK_STR_IDX
	.importzp	TOK_PAUSE
	.importzp	TOK_INT_FP
	.importzp	TOK_FLOAT
	.importzp	TOK_FP_MUL
	.importzp	TOK_FP_SUB
	.importzp	TOK_FP_INT
	.importzp	TOK_FP_RND
;-----------------------------
; Variables
NUM_VARS = 38
	.import heap_start
	.export fb_var_A
	.export fb_var_B
	.export fb_var_BE
	.export fb_var_C
	.export fb_var_C1
	.export fb_var_CDX
	.export fb_var_CDY
	.export fb_var_CF
	.export fb_var_CM
	.export fb_var_CURRENT_ROOM
	.export fb_var_CX
	.export fb_var_CY
	.export fb_var_D
	.export fb_var_E
	.export fb_var_ENEMY_DELAY_ADD
	.export fb_var_ENEMY_DELAY_SUM
	.export fb_var_ENEMY_TYPE
	.export fb_var_EXIG_FLAG
	.export fb_var_EXIT_FLAG
	.export fb_var_F
	.export fb_var_HISC
	.export fb_var_LE
	.export fb_var_M
	.export fb_var_MX
	.export fb_var_N
	.export fb_var_P
	.export fb_var_PRIOR_SAME
	.export fb_var_RE
	.export fb_var_RM
	.export fb_var_RN
	.export fb_var_ROOM_SCREEN_DATA
	.export fb_var_RX
	.export fb_var_RY
	.export fb_var_SC
	.export fb_var_TE
	.export fb_var_TR
	.export fb_var_X
	.export fb_var_Y
fb_var_A	= heap_start + 14	; Word variable
fb_var_B	= heap_start + 16	; Word variable
fb_var_BE	= heap_start + 32	; String variable
fb_var_C	= heap_start + 36	; Word variable
fb_var_C1	= heap_start + 6	; Word Array variable
fb_var_CDX	= heap_start + 48	; Word variable
fb_var_CDY	= heap_start + 50	; Word variable
fb_var_CF	= heap_start + 66	; Word variable
fb_var_CM	= heap_start + 44	; Word variable
fb_var_CURRENT_ROOM	= heap_start + 12	; String variable
fb_var_CX	= heap_start + 2	; Word Array variable
fb_var_CY	= heap_start + 4	; Word Array variable
fb_var_D	= heap_start + 38	; Word variable
fb_var_E	= heap_start + 40	; Word variable
fb_var_ENEMY_DELAY_ADD	= heap_start + 52	; Word variable
fb_var_ENEMY_DELAY_SUM	= heap_start + 56	; Word variable
fb_var_ENEMY_TYPE	= heap_start + 34	; Word variable
fb_var_EXIG_FLAG	= heap_start + 62	; Word variable
fb_var_EXIT_FLAG	= heap_start + 54	; Word variable
fb_var_F	= heap_start + 42	; Word variable
fb_var_HISC	= heap_start + 8	; Word variable
fb_var_LE	= heap_start + 28	; String variable
fb_var_M	= heap_start + 68	; Word variable
fb_var_MX	= heap_start + 46	; Word variable
fb_var_N	= heap_start + 64	; Word variable
fb_var_P	= heap_start + 74	; Word variable
fb_var_PRIOR_SAME	= heap_start + 72	; Word variable
fb_var_RE	= heap_start + 30	; String variable
fb_var_RM	= heap_start + 70	; Word variable
fb_var_RN	= heap_start + 18	; Word variable
fb_var_ROOM_SCREEN_DATA	= heap_start + 0	; String Array variable
fb_var_RX	= heap_start + 20	; Word variable
fb_var_RY	= heap_start + 22	; Word variable
fb_var_SC	= heap_start + 10	; Word variable
fb_var_TE	= heap_start + 26	; String variable
fb_var_TR	= heap_start + 24	; Word variable
fb_var_X	= heap_start + 58	; Word variable
fb_var_Y	= heap_start + 60	; Word variable
;-----------------------------
; Bytecode
	.segment "BYTECODE"
bytecode_start:
@FastBasic_LINE_12:	; LINE 12
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_DIM
	.byte	0
@FastBasic_LINE_13:	; LINE 13
	.byte	TOK_0
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	44, "                    0001                    "
	.byte	TOK_COPY_STR
@FastBasic_LINE_14:	; LINE 14
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	44, "0010 0111 0100 0011 1110 0101 0010 0111 0101"
	.byte	TOK_COPY_STR
@FastBasic_LINE_15:	; LINE 15
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	44, "0001 1011 0101 1011 0100 1011 0100 1001 1001"
	.byte	TOK_COPY_STR
@FastBasic_LINE_16:	; LINE 16
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	44, "1001 1001 1010 1110 0100 1001 0010 1100 1001"
	.byte	TOK_COPY_STR
@FastBasic_LINE_17:	; LINE 17
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	44, "1001 1010 0111 0100 0001 1011 0110 0111 1101"
	.byte	TOK_COPY_STR
@FastBasic_LINE_18:	; LINE 18
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	44, "1010 0101 1001 0011 1100 1001 0001 1001 1000"
	.byte	TOK_COPY_STR
@FastBasic_LINE_19:	; LINE 19
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	44, "0001 1011 1110 1111 0110 1111 1101 1011 0101"
	.byte	TOK_COPY_STR
@FastBasic_LINE_20:	; LINE 20
	.byte	TOK_BYTE
	.byte	14
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	44, "1011 1101 0001 1011 0101 1001 1000 1001 1001"
	.byte	TOK_COPY_STR
@FastBasic_LINE_21:	; LINE 21
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	44, "1001 1000 1001 1000 1000 1000 0010 1101 1000"
	.byte	TOK_COPY_STR
@FastBasic_LINE_22:	; LINE 22
	.byte	TOK_BYTE
	.byte	18
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	44, "1010 0110 1110 0100 0010 0110 0110 1110 0100"
	.byte	TOK_COPY_STR
@FastBasic_LINE_23:	; LINE 23
	.byte	TOK_BYTE
	.byte	66
	.byte	TOK_DIM
	.byte	1
@FastBasic_LINE_24:	; LINE 24
	.byte	TOK_BYTE
	.byte	66
	.byte	TOK_DIM
	.byte	2
@FastBasic_LINE_25:	; LINE 25
	.byte	TOK_BYTE
	.byte	66
	.byte	TOK_DIM
	.byte	3
@FastBasic_LINE_30:	; LINE 30
	.byte	TOK_VAR_STORE_0
	.byte	4
@FastBasic_LINE_31:	; LINE 31
	.byte	TOK_VAR_STORE_0
	.byte	5
@FastBasic_LINE_32:	; LINE 32
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_CSTRING
	.byte	0
	.byte	TOK_COPY_STR
@FastBasic_LINE_33:	; LINE 33
	.export	jump_lbl_1
jump_lbl_1:
@FastBasic_LINE_34:	; LINE 34
	.byte	TOK_CALL
	.word	fb_lbl_TITLE_SCREEN
@FastBasic_LINE_35:	; LINE 35
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	27
	.byte	TOK_GRAPHICS
@FastBasic_LINE_36:	; LINE 36
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_VAR_STORE
	.byte	7
@FastBasic_LINE_37:	; LINE 37
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_38:	; LINE 38
	.byte	TOK_VAR_STORE_0
	.byte	9
@FastBasic_LINE_39:	; LINE 39
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	10
@FastBasic_LINE_40:	; LINE 40
	.byte	TOK_VAR_STORE_0
	.byte	11
@FastBasic_LINE_41:	; LINE 41
	.byte	TOK_VAR_STORE_0
	.byte	12
@FastBasic_LINE_42:	; LINE 42
	.byte	TOK_VAR_SADDR
	.byte	13
	.byte	TOK_CSTRING
	.byte	1, "0"
	.byte	TOK_COPY_STR
@FastBasic_LINE_43:	; LINE 43
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_CSTRING
	.byte	1, "0"
	.byte	TOK_COPY_STR
@FastBasic_LINE_44:	; LINE 44
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_CSTRING
	.byte	1, "0"
	.byte	TOK_COPY_STR
@FastBasic_LINE_45:	; LINE 45
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_CSTRING
	.byte	1, "0"
	.byte	TOK_COPY_STR
@FastBasic_LINE_46:	; LINE 46
	.byte	TOK_VAR_STORE_0
	.byte	17
@FastBasic_LINE_47:	; LINE 47
	.byte	TOK_VAR_STORE_0
	.byte	18
@FastBasic_LINE_48:	; LINE 48
	.byte	TOK_VAR_STORE_0
	.byte	19
@FastBasic_LINE_49:	; LINE 49
	.byte	TOK_VAR_STORE_0
	.byte	20
@FastBasic_LINE_50:	; LINE 50
	.byte	TOK_VAR_STORE_0
	.byte	21
@FastBasic_LINE_51:	; LINE 51
	.byte	TOK_VAR_STORE_0
	.byte	22
@FastBasic_LINE_52:	; LINE 52
	.byte	TOK_VAR_STORE_0
	.byte	23
@FastBasic_LINE_53:	; LINE 53
	.byte	TOK_VAR_STORE_0
	.byte	24
@FastBasic_LINE_54:	; LINE 54
	.byte	TOK_VAR_STORE_0
	.byte	25
@FastBasic_LINE_56:	; LINE 56
	.byte	TOK_CALL
	.word	fb_lbl_AT_2000
@FastBasic_LINE_57:	; LINE 57
	.byte	TOK_BYTE
	.byte	160
	.byte	TOK_VAR_STORE
	.byte	26
@FastBasic_LINE_58:	; LINE 58
	.byte	TOK_VAR_STORE_0
	.byte	27
@FastBasic_LINE_60:	; LINE 60
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_ROOM_SCREEN
@FastBasic_LINE_68:	; LINE 68
	.export	jump_lbl_2
jump_lbl_2:
@FastBasic_LINE_70:	; LINE 70
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	9
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_3
@FastBasic_LINE_71:	; LINE 71
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_ROOM_SCREEN
@FastBasic_LINE_72:	; LINE 72
	.byte	TOK_VAR_STORE_0
	.byte	27
@FastBasic_LINE_73:	; LINE 73
	.export	jump_lbl_3
jump_lbl_3:
@FastBasic_LINE_74:	; LINE 74
	.byte	TOK_VAR_STORE_0
	.byte	28
@FastBasic_LINE_75:	; LINE 75
	.export	jump_lbl_4
jump_lbl_4:
@FastBasic_LINE_76:	; LINE 76
	.byte	TOK_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	11
	.byte	TOK_EQ
	.byte	TOK_NEG
	.byte	TOK_PUSH_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	29
@FastBasic_LINE_77:	; LINE 77
	.byte	TOK_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	14
	.byte	TOK_EQ
	.byte	TOK_NEG
	.byte	TOK_PUSH_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	13
	.byte	TOK_EQ
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	30
@FastBasic_LINE_78:	; LINE 78
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_79:	; LINE 79
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_80:	; LINE 80
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_81:	; LINE 81
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_5
@FastBasic_LINE_82:	; LINE 82
	.byte	TOK_CALL
	.word	fb_lbl_AT_220
@FastBasic_LINE_83:	; LINE 83
	.export	jump_lbl_5
jump_lbl_5:
@FastBasic_LINE_84:	; LINE 84
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	7
@FastBasic_LINE_85:	; LINE 85
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	30
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_87:	; LINE 87
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH
	.byte	TOK_CSTRING
	.byte	1, "1"
	.byte	TOK_CMP_STR
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_6
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_VAR_STORE
	.byte	27
	.export	jump_lbl_6
jump_lbl_6:
@FastBasic_LINE_88:	; LINE 88
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH
	.byte	TOK_CSTRING
	.byte	1, "1"
	.byte	TOK_CMP_STR
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_7
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	27
	.export	jump_lbl_7
jump_lbl_7:
@FastBasic_LINE_89:	; LINE 89
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	72
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	15
	.byte	TOK_PUSH
	.byte	TOK_CSTRING
	.byte	1, "1"
	.byte	TOK_CMP_STR
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_8
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_VAR_STORE
	.byte	27
	.export	jump_lbl_8
jump_lbl_8:
@FastBasic_LINE_90:	; LINE 90
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	166
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	16
	.byte	TOK_PUSH
	.byte	TOK_CSTRING
	.byte	1, "1"
	.byte	TOK_CMP_STR
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_9
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_VAR_STORE
	.byte	27
	.export	jump_lbl_9
jump_lbl_9:
@FastBasic_LINE_92:	; LINE 92
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	72
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_10
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_MUL
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	7
	.export	jump_lbl_10
jump_lbl_10:
@FastBasic_LINE_93:	; LINE 93
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	166
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_11
	.byte	TOK_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	30
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_MUL
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	8
	.export	jump_lbl_11
jump_lbl_11:
@FastBasic_LINE_94:	; LINE 94
	.byte	TOK_1
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_95:	; LINE 95
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_96:	; LINE 96
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_97:	; LINE 97
	.byte	TOK_BYTE
	.byte	11
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_98:	; LINE 98
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_99:	; LINE 99
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_100:	; LINE 100
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_101:	; LINE 101
	.byte	TOK_VAR_LOAD
	.byte	28
	.byte	TOK_ADD_VAR
	.byte	26
	.byte	TOK_VAR_STORE
	.byte	28
@FastBasic_LINE_102:	; LINE 102
	.byte	TOK_VAR_LOAD
	.byte	28
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_12
@FastBasic_LINE_103:	; LINE 103
	.byte	TOK_VAR_LOAD
	.byte	28
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_BIT_AND
	.byte	TOK_VAR_STORE
	.byte	28
@FastBasic_LINE_104:	; LINE 104
	.byte	TOK_1
	.byte	TOK_PAUSE
@FastBasic_LINE_105:	; LINE 105
	.byte	TOK_JUMP
	.word	jump_lbl_13
	.export	jump_lbl_12
jump_lbl_12:
@FastBasic_LINE_106:	; LINE 106
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_14
@FastBasic_LINE_107:	; LINE 107
	.byte	TOK_1
	.byte	TOK_PAUSE
@FastBasic_LINE_108:	; LINE 108
	.byte	TOK_JUMP
	.word	jump_lbl_13
	.export	jump_lbl_14
jump_lbl_14:
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_16
@FastBasic_LINE_109:	; LINE 109
	.byte	TOK_CALL
	.word	fb_lbl_AT_250
@FastBasic_LINE_110:	; LINE 110
	.byte	TOK_JUMP
	.word	jump_lbl_13
	.export	jump_lbl_16
jump_lbl_16:
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_18
@FastBasic_LINE_111:	; LINE 111
	.byte	TOK_CALL
	.word	fb_lbl_AT_300
@FastBasic_LINE_112:	; LINE 112
	.byte	TOK_JUMP
	.word	jump_lbl_13
	.export	jump_lbl_18
jump_lbl_18:
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_20
@FastBasic_LINE_113:	; LINE 113
	.byte	TOK_CALL
	.word	fb_lbl_AT_350
@FastBasic_LINE_114:	; LINE 114
	.byte	TOK_JUMP
	.word	jump_lbl_13
	.export	jump_lbl_20
jump_lbl_20:
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_22
@FastBasic_LINE_115:	; LINE 115
	.byte	TOK_CALL
	.word	fb_lbl_AT_400
@FastBasic_LINE_116:	; LINE 116
	.byte	TOK_JUMP
	.word	jump_lbl_13
	.export	jump_lbl_22
jump_lbl_22:
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_13
@FastBasic_LINE_117:	; LINE 117
	.byte	TOK_CALL
	.word	fb_lbl_AT_450
@FastBasic_LINE_119:	; LINE 119
	.export	jump_lbl_13
jump_lbl_13:
@FastBasic_LINE_120:	; LINE 120
	.byte	TOK_NUM
	.word	644
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_25
	.byte	TOK_CALL
	.word	fb_lbl_AT_500
	.export	jump_lbl_25
jump_lbl_25:
@FastBasic_LINE_121:	; LINE 121
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_COMP_0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	30
	.byte	TOK_COMP_0
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_26
@FastBasic_LINE_122:	; LINE 122
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	18672
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_123:	; LINE 123
	.byte	TOK_CALL
	.word	fb_lbl_AT_200
@FastBasic_LINE_124:	; LINE 124
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_125:	; LINE 125
	.export	jump_lbl_26
jump_lbl_26:
@FastBasic_LINE_126:	; LINE 126
	.byte	TOK_VAR_LOAD
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	32
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	48
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	80
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	100
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_27
@FastBasic_LINE_127:	; LINE 127
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_VAR_STORE
	.byte	31
@FastBasic_LINE_128:	; LINE 128
	.export	jump_lbl_27
jump_lbl_27:
@FastBasic_LINE_131:	; LINE 131
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_4
@FastBasic_LINE_132:	; LINE 132
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_28
@FastBasic_LINE_133:	; LINE 133
	.byte	TOK_CALL
	.word	fb_lbl_SHOOT_ENEMY_LASER
@FastBasic_LINE_134:	; LINE 134
	.export	jump_lbl_28
jump_lbl_28:
@FastBasic_LINE_135:	; LINE 135
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_29
@FastBasic_LINE_136:	; LINE 136
	.byte	TOK_CALL
	.word	fb_lbl_CHARACTER_DIE
@FastBasic_LINE_137:	; LINE 137
	.export	jump_lbl_29
jump_lbl_29:
@FastBasic_LINE_138:	; LINE 138
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_30
@FastBasic_LINE_139:	; LINE 139
	.byte	TOK_CALL
	.word	fb_lbl_GOT_SPECTRIX
@FastBasic_LINE_140:	; LINE 140
	.export	jump_lbl_30
jump_lbl_30:
@FastBasic_LINE_141:	; LINE 141
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	11
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_31
@FastBasic_LINE_142:	; LINE 142
	.byte	TOK_CALL
	.word	fb_lbl_SHOW_GAME_OVER
@FastBasic_LINE_143:	; LINE 143
	.export	jump_lbl_31
jump_lbl_31:
@FastBasic_LINE_144:	; LINE 144
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_2
@FastBasic_LINE_145:	; LINE 145
	.byte	TOK_JUMP
	.word	jump_lbl_1
@FastBasic_LINE_147:	; LINE 147
	.export	fb_lbl_AT_200
fb_lbl_AT_200:
@FastBasic_LINE_148:	; LINE 148
	.byte	TOK_BYTE
	.byte	11
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	9
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_149:	; LINE 149
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_150:	; LINE 150
	.byte	TOK_RET
@FastBasic_LINE_152:	; LINE 152
	.export	fb_lbl_AT_220
fb_lbl_AT_220:
@FastBasic_LINE_153:	; LINE 153
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_154:	; LINE 154
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_155:	; LINE 155
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_156:	; LINE 156
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_157:	; LINE 157
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_158:	; LINE 158
	.byte	TOK_VAR_STORE_0
	.byte	9
@FastBasic_LINE_159:	; LINE 159
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_160:	; LINE 160
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_161:	; LINE 161
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_162:	; LINE 162
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_163:	; LINE 163
	.byte	TOK_RET
@FastBasic_LINE_165:	; LINE 165
	.export	fb_lbl_AT_250
fb_lbl_AT_250:
@FastBasic_LINE_166:	; LINE 166
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_167:	; LINE 167
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_168:	; LINE 168
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_169:	; LINE 169
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_ADD_VAR
	.byte	22
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_170:	; LINE 170
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_ADD_VAR
	.byte	22
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_171:	; LINE 171
	.byte	TOK_VAR_LOAD
	.byte	22
	.byte	TOK_ADD_VAR
	.byte	23
	.byte	TOK_VAR_STORE
	.byte	22
@FastBasic_LINE_172:	; LINE 172
	.byte	TOK_VAR_LOAD
	.byte	22
	.byte	TOK_PUSH_0
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	22
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_38
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_NEG
	.byte	TOK_VAR_STORE
	.byte	23
	.export	jump_lbl_38
jump_lbl_38:
@FastBasic_LINE_173:	; LINE 173
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_SUB
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_39
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_STORE
	.byte	27
	.export	jump_lbl_39
jump_lbl_39:
@FastBasic_LINE_174:	; LINE 174
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_40
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_VAR_STORE
	.byte	18
	.export	jump_lbl_40
jump_lbl_40:
@FastBasic_LINE_175:	; LINE 175
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_41
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	18
	.export	jump_lbl_41
jump_lbl_41:
@FastBasic_LINE_176:	; LINE 176
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_42
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	19
	.export	jump_lbl_42
jump_lbl_42:
@FastBasic_LINE_177:	; LINE 177
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_43
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_VAR_STORE
	.byte	19
	.export	jump_lbl_43
jump_lbl_43:
@FastBasic_LINE_178:	; LINE 178
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_179:	; LINE 179
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_180:	; LINE 180
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_181:	; LINE 181
	.byte	TOK_BYTE
	.byte	14
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_182:	; LINE 182
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_ADD_VAR
	.byte	22
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_183:	; LINE 183
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_ADD_VAR
	.byte	22
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_184:	; LINE 184
	.byte	TOK_RET
@FastBasic_LINE_186:	; LINE 186
	.export	fb_lbl_AT_300
fb_lbl_AT_300:
@FastBasic_LINE_187:	; LINE 187
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_188:	; LINE 188
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_189:	; LINE 189
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_190:	; LINE 190
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_191:	; LINE 191
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_192:	; LINE 192
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_193:	; LINE 193
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_194:	; LINE 194
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_195:	; LINE 195
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_46
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_VAR_STORE
	.byte	18
	.export	jump_lbl_46
jump_lbl_46:
@FastBasic_LINE_196:	; LINE 196
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_47
	.byte	TOK_DECVAR
	.byte	18
	.export	jump_lbl_47
jump_lbl_47:
@FastBasic_LINE_197:	; LINE 197
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_48
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	19
	.export	jump_lbl_48
jump_lbl_48:
@FastBasic_LINE_198:	; LINE 198
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_49
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_VAR_STORE
	.byte	19
	.export	jump_lbl_49
jump_lbl_49:
@FastBasic_LINE_199:	; LINE 199
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_200:	; LINE 200
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_201:	; LINE 201
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_202:	; LINE 202
	.byte	TOK_1
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_203:	; LINE 203
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_204:	; LINE 204
	.byte	TOK_BYTE
	.byte	13
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_205:	; LINE 205
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_206:	; LINE 206
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_207:	; LINE 207
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_208:	; LINE 208
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_209:	; LINE 209
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_LT
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	24
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_BYTE
	.byte	24
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_CRET
@FastBasic_LINE_210:	; LINE 210
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_STORE
	.byte	27
@FastBasic_LINE_212:	; LINE 212
	.byte	TOK_RET
@FastBasic_LINE_215:	; LINE 215
	.export	fb_lbl_AT_350
fb_lbl_AT_350:
@FastBasic_LINE_216:	; LINE 216
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_217:	; LINE 217
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_218:	; LINE 218
	.byte	TOK_BYTE
	.byte	14
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_219:	; LINE 219
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_220:	; LINE 220
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_221:	; LINE 221
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_222:	; LINE 222
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_223:	; LINE 223
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_224:	; LINE 224
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_225:	; LINE 225
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_226:	; LINE 226
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_227:	; LINE 227
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_228:	; LINE 228
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_229:	; LINE 229
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_230:	; LINE 230
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_231:	; LINE 231
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_232:	; LINE 232
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_233:	; LINE 233
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_235:	; LINE 235
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	30
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_53
@FastBasic_LINE_236:	; LINE 236
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_PUSH_VAR_LOAD
	.byte	26
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_SUB
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	23
@FastBasic_LINE_237:	; LINE 237
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	200
	.byte	TOK_GT
	.byte	TOK_CRET
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	27
@FastBasic_LINE_238:	; LINE 238
	.byte	TOK_RET
	.export	jump_lbl_53
jump_lbl_53:
@FastBasic_LINE_239:	; LINE 239
	.byte	TOK_VAR_STORE_0
	.byte	23
@FastBasic_LINE_241:	; LINE 241
	.byte	TOK_RET
@FastBasic_LINE_243:	; LINE 243
	.export	fb_lbl_AT_400
fb_lbl_AT_400:
@FastBasic_LINE_244:	; LINE 244
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_245:	; LINE 245
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_246:	; LINE 246
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_247:	; LINE 247
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_248:	; LINE 248
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_58
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_VAR_STORE
	.byte	18
	.export	jump_lbl_58
jump_lbl_58:
@FastBasic_LINE_249:	; LINE 249
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_59
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	18
	.export	jump_lbl_59
jump_lbl_59:
@FastBasic_LINE_250:	; LINE 250
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_60
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	19
	.export	jump_lbl_60
jump_lbl_60:
@FastBasic_LINE_251:	; LINE 251
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_61
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_VAR_STORE
	.byte	19
	.export	jump_lbl_61
jump_lbl_61:
@FastBasic_LINE_252:	; LINE 252
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_SUB
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_62
@FastBasic_LINE_253:	; LINE 253
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_STORE
	.byte	27
@FastBasic_LINE_254:	; LINE 254
	.export	jump_lbl_62
jump_lbl_62:
@FastBasic_LINE_255:	; LINE 255
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_256:	; LINE 256
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_257:	; LINE 257
	.byte	TOK_RET
@FastBasic_LINE_259:	; LINE 259
	.export	fb_lbl_AT_450
fb_lbl_AT_450:
@FastBasic_LINE_260:	; LINE 260
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_261:	; LINE 261
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_262:	; LINE 262
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_263:	; LINE 263
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_264:	; LINE 264
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_265:	; LINE 265
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_266:	; LINE 266
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_267:	; LINE 267
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	24
	.byte	TOK_USHL
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	18
@FastBasic_LINE_268:	; LINE 268
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_VAR_STORE
	.byte	19
@FastBasic_LINE_269:	; LINE 269
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	20
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	160
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_65
@FastBasic_LINE_270:	; LINE 270
	.byte	TOK_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	25
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	19
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_NEG
	.byte	TOK_VAR_STORE
	.byte	25
@FastBasic_LINE_271:	; LINE 271
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_PUSH_1
	.byte	TOK_NEG
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_66
	.export	jump_lbl_67
jump_lbl_67:
@FastBasic_LINE_272:	; LINE 272
	.byte	TOK_NUM
	.word	53760
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	160
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_SHL8
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_273:	; LINE 273
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_67
	.export	jump_lbl_66
jump_lbl_66:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_274:	; LINE 274
	.export	jump_lbl_65
jump_lbl_65:
@FastBasic_LINE_275:	; LINE 275
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	65
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_68
@FastBasic_LINE_276:	; LINE 276
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	24
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	18
@FastBasic_LINE_277:	; LINE 277
	.byte	TOK_VAR_LOAD
	.byte	24
	.byte	TOK_NEG
	.byte	TOK_VAR_STORE
	.byte	24
@FastBasic_LINE_278:	; LINE 278
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	14
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_PUSH_NUM
	.word	65534
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_69
	.export	jump_lbl_70
jump_lbl_70:
@FastBasic_LINE_279:	; LINE 279
	.byte	TOK_NUM
	.word	53760
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_PUSH_BYTE
	.byte	224
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_SHL8
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_280:	; LINE 280
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_70
	.export	jump_lbl_69
jump_lbl_69:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_281:	; LINE 281
	.byte	TOK_NUM
	.word	53760
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_282:	; LINE 282
	.export	jump_lbl_68
jump_lbl_68:
@FastBasic_LINE_283:	; LINE 283
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_284:	; LINE 284
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_285:	; LINE 285
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_286:	; LINE 286
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_287:	; LINE 287
	.byte	TOK_BYTE
	.byte	11
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_288:	; LINE 288
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_289:	; LINE 289
	.byte	TOK_BYTE
	.byte	11
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_290:	; LINE 290
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_291:	; LINE 291
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_292:	; LINE 292
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_293:	; LINE 293
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_294:	; LINE 294
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_295:	; LINE 295
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_SUB
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_CRET
@FastBasic_LINE_296:	; LINE 296
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_STORE
	.byte	27
@FastBasic_LINE_299:	; LINE 299
	.byte	TOK_RET
@FastBasic_LINE_301:	; LINE 301
	.export	fb_lbl_AT_500
fb_lbl_AT_500:
@FastBasic_LINE_302:	; LINE 302
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_PUSH_1
	.byte	TOK_NEG
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_74
	.export	jump_lbl_75
jump_lbl_75:
@FastBasic_LINE_303:	; LINE 303
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	255
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MUL
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	160
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_SHL8
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_304:	; LINE 304
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_75
	.export	jump_lbl_74
jump_lbl_74:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_305:	; LINE 305
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_306:	; LINE 306
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	30
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_CNRET
@FastBasic_LINE_307:	; LINE 307
	.byte	TOK_VAR_STORE_0
	.byte	33
@FastBasic_LINE_308:	; LINE 308
	.byte	TOK_VAR_SADDR
	.byte	34
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_77
	.export	jump_lbl_78
jump_lbl_78:
@FastBasic_LINE_309:	; LINE 309
	.byte	TOK_BYTE
	.byte	11
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_310:	; LINE 310
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_79
@FastBasic_LINE_311:	; LINE 311
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_312:	; LINE 312
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_313:	; LINE 313
	.export	jump_lbl_79
jump_lbl_79:
@FastBasic_LINE_314:	; LINE 314
	.byte	TOK_VAR_LOAD
	.byte	30
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_80
@FastBasic_LINE_315:	; LINE 315
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_316:	; LINE 316
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	30
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_317:	; LINE 317
	.export	jump_lbl_80
jump_lbl_80:
@FastBasic_LINE_318:	; LINE 318
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	34
	.byte	TOK_USHL
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_319:	; LINE 319
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	18
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	18
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	30
	.byte	TOK_COMP_0
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_81
@FastBasic_LINE_320:	; LINE 320
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	33
@FastBasic_LINE_321:	; LINE 321
	.byte	TOK_CALL
	.word	fb_lbl_AT_570
@FastBasic_LINE_322:	; LINE 322
	.byte	TOK_JUMP
	.word	jump_lbl_82
	.export	jump_lbl_81
jump_lbl_81:
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_ADD_VAR
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	9
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	29
	.byte	TOK_COMP_0
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_83
@FastBasic_LINE_323:	; LINE 323
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_324:	; LINE 324
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	33
@FastBasic_LINE_325:	; LINE 325
	.byte	TOK_CALL
	.word	fb_lbl_AT_570
@FastBasic_LINE_326:	; LINE 326
	.byte	TOK_JUMP
	.word	jump_lbl_82
	.export	jump_lbl_83
jump_lbl_83:
@FastBasic_LINE_327:	; LINE 327
	.byte	TOK_VAR_LOAD
	.byte	30
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_85
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	90
	.byte	TOK_PUSH_VAR_LOAD
	.byte	30
	.byte	TOK_PUSH_BYTE
	.byte	86
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.export	jump_lbl_85
jump_lbl_85:
@FastBasic_LINE_328:	; LINE 328
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_82
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	36
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_329:	; LINE 329
	.export	jump_lbl_82
jump_lbl_82:
@FastBasic_LINE_330:	; LINE 330
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_78
	.export	jump_lbl_77
jump_lbl_77:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_331:	; LINE 331
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_332:	; LINE 332
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_336:	; LINE 336
	.export	fb_lbl_AT_570
fb_lbl_AT_570:
@FastBasic_LINE_337:	; LINE 337
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_338:	; LINE 338
	.byte	TOK_VAR_LOAD
	.byte	30
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_89
@FastBasic_LINE_339:	; LINE 339
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_340:	; LINE 340
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	90
	.byte	TOK_PUSH_VAR_LOAD
	.byte	30
	.byte	TOK_PUSH_BYTE
	.byte	86
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_341:	; LINE 341
	.export	jump_lbl_89
jump_lbl_89:
@FastBasic_LINE_342:	; LINE 342
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_90
@FastBasic_LINE_343:	; LINE 343
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_ADD_VAR
	.byte	29
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_344:	; LINE 344
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	36
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_345:	; LINE 345
	.export	jump_lbl_90
jump_lbl_90:
@FastBasic_LINE_346:	; LINE 346
	.byte	TOK_VAR_LOAD
	.byte	33
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_91
@FastBasic_LINE_347:	; LINE 347
	.byte	TOK_VAR_STORE_0
	.byte	33
@FastBasic_LINE_348:	; LINE 348
	.byte	TOK_CALL
	.word	fb_lbl_AT_600
@FastBasic_LINE_349:	; LINE 349
	.export	jump_lbl_91
jump_lbl_91:
@FastBasic_LINE_350:	; LINE 350
	.byte	TOK_VAR_STORE_0
	.byte	29
	.byte	TOK_VAR_STORE_0
	.byte	30
@FastBasic_LINE_351:	; LINE 351
	.byte	TOK_RET
@FastBasic_LINE_354:	; LINE 354
	.export	fb_lbl_AT_600
fb_lbl_AT_600:
@FastBasic_LINE_355:	; LINE 355
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_356:	; LINE 356
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_357:	; LINE 357
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	63
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_94
	.export	jump_lbl_95
jump_lbl_95:
@FastBasic_LINE_358:	; LINE 358
	.byte	TOK_FP_RND
	.byte	TOK_FLOAT
	.byte	$40, $16, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_359:	; LINE 359
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_360:	; LINE 360
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH
	.byte	TOK_FP_RND
	.byte	TOK_FLOAT
	.byte	$40, $16, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_PUSH
	.byte	TOK_FP_RND
	.byte	TOK_FLOAT
	.byte	$40, $14, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_361:	; LINE 361
	.byte	TOK_NUM
	.word	53766
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	255
	.byte	TOK_PUSH_BYTE
	.byte	64
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $15, $00, $00, $00, $00
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_SUB
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_SHL8
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_362:	; LINE 362
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_95
	.export	jump_lbl_94
jump_lbl_94:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_363:	; LINE 363
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_364:	; LINE 364
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_NUM
	.word	65522
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	14
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_96
	.export	jump_lbl_97
jump_lbl_97:
@FastBasic_LINE_365:	; LINE 365
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_366:	; LINE 366
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_ADD_VAR
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_367:	; LINE 367
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_97
	.export	jump_lbl_96
jump_lbl_96:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_368:	; LINE 368
	.byte	TOK_VAR_STORE_0
	.byte	17
@FastBasic_LINE_369:	; LINE 369
	.byte	TOK_RET
@FastBasic_LINE_371:	; LINE 371
	.export	fb_lbl_SHOOT_ENEMY_LASER
fb_lbl_SHOOT_ENEMY_LASER:
@FastBasic_LINE_372:	; LINE 372
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_PUSH_1
	.byte	TOK_NEG
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_100
	.export	jump_lbl_101
jump_lbl_101:
@FastBasic_LINE_373:	; LINE 373
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_MUL
	.byte	TOK_PUSH_BYTE
	.byte	32
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_SHL8
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_374:	; LINE 374
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_101
	.export	jump_lbl_100
jump_lbl_100:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_375:	; LINE 375
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_376:	; LINE 376
	.byte	TOK_VAR_LOAD
	.byte	18
	.byte	TOK_PUSH_VAR_LOAD
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_377:	; LINE 377
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_378:	; LINE 378
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_PAUSE
@FastBasic_LINE_379:	; LINE 379
	.byte	TOK_RET
@FastBasic_LINE_381:	; LINE 381
	.export	fb_lbl_GOT_SPECTRIX
fb_lbl_GOT_SPECTRIX:
@FastBasic_LINE_382:	; LINE 382
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_0
	.byte	TOK_GRAPHICS
@FastBasic_LINE_383:	; LINE 383
	.byte	TOK_BYTE
	.byte	196
	.byte	TOK_NUM_POKE
	.word	710
@FastBasic_LINE_384:	; LINE 384
	.byte	TOK_CSTRING
	.byte	37, "   YOU HAVE FOUND THE SPECTRIX!     ", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_385:	; LINE 385
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	255
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_104
	.export	jump_lbl_105
jump_lbl_105:
	.byte	TOK_NUM
	.word	53760
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	27136
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	43520
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
	.byte	TOK_NUM
	.word	53764
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	59904
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_105
	.export	jump_lbl_104
jump_lbl_104:
	.byte	TOK_FOR_EXIT
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_NUM
	.word	53764
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_386:	; LINE 386
	.byte	TOK_BYTE
	.byte	CLS
	.byte	TOK_PUT
@FastBasic_LINE_387:	; LINE 387
	.byte	TOK_CSTRING
	.byte	111, "   NOW RETURN HOME TO RECIEVE CREDIT      AND TO GO ON TO THE NEXT ROUND.", 155, 155, 155, "   MOVE JOYSTICK TO CONTINUE PLAY.", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_389:	; LINE 389
	.export	jump_lbl_106
jump_lbl_106:
@FastBasic_LINE_390:	; LINE 390
	.byte	TOK_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_NEQ
	.byte	TOK_PUSH_NUM
	.word	644
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_NEQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_106
@FastBasic_LINE_391:	; LINE 391
	.byte	TOK_VAR_STORE_0
	.byte	27
@FastBasic_LINE_392:	; LINE 392
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_VAR_STORE
	.byte	12
@FastBasic_LINE_393:	; LINE 393
	.byte	TOK_RET
@FastBasic_LINE_396:	; LINE 396
	.export	fb_lbl_RETURN_WITH_SPECTRIX
fb_lbl_RETURN_WITH_SPECTRIX:
@FastBasic_LINE_397:	; LINE 397
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_0
	.byte	TOK_GRAPHICS
@FastBasic_LINE_398:	; LINE 398
	.byte	TOK_BYTE
	.byte	230
	.byte	TOK_NUM_POKE
	.word	710
@FastBasic_LINE_399:	; LINE 399
	.byte	TOK_CSTRING
	.byte	76, "    YOU HAVE RETURNED HOME SAFELY               WITH THE SPECTRIX!        ", 155, 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_400:	; LINE 400
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_401:	; LINE 401
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_CSTRING
	.byte	16, " YOU HAVE FOUND "
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_CSTRING
	.byte	84, " SPECTRIXES.", 155, 155, 155, 155, 155, 155, "  PRESS FIRE BUTTON TO GO ON TO THE           NEXT ROUND OF PLAY.", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_403:	; LINE 403
	.export	jump_lbl_109
jump_lbl_109:
@FastBasic_LINE_404:	; LINE 404
	.byte	TOK_NUM
	.word	644
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_109
@FastBasic_LINE_405:	; LINE 405
	.byte	TOK_RET
@FastBasic_LINE_407:	; LINE 407
	.export	fb_lbl_CHARACTER_DIE
fb_lbl_CHARACTER_DIE:
@FastBasic_LINE_408:	; LINE 408
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_PUSH_1
	.byte	TOK_NEG
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_112
	.export	jump_lbl_113
jump_lbl_113:
@FastBasic_LINE_409:	; LINE 409
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_410:	; LINE 410
	.byte	TOK_NUM
	.word	712
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	64
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_POKE
@FastBasic_LINE_411:	; LINE 411
	.byte	TOK_VAR_LOAD
	.byte	7
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	7
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_412:	; LINE 412
	.byte	TOK_NUM
	.word	53766
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_MUL
	.byte	TOK_PUSH_BYTE
	.byte	160
	.byte	TOK_PUSH_BYTE
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_SUB
	.byte	TOK_ADD
	.byte	TOK_SHL8
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_413:	; LINE 413
	.byte	TOK_1
	.byte	TOK_PAUSE
@FastBasic_LINE_414:	; LINE 414
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_113
	.export	jump_lbl_112
jump_lbl_112:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_415:	; LINE 415
	.byte	TOK_RET
@FastBasic_LINE_418:	; LINE 418
	.export	fb_lbl_DRAW_ROOM_SCREEN
fb_lbl_DRAW_ROOM_SCREEN:
@FastBasic_LINE_419:	; LINE 419
	.export	jump_lbl_116
jump_lbl_116:
@FastBasic_LINE_420:	; LINE 420
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_117
@FastBasic_LINE_421:	; LINE 421
	.byte	TOK_BYTE
	.byte	70
	.byte	TOK_VAR_STORE
	.byte	7
@FastBasic_LINE_422:	; LINE 422
	.byte	TOK_DECVAR
	.byte	10
@FastBasic_LINE_423:	; LINE 423
	.byte	TOK_JUMP
	.word	jump_lbl_118
	.export	jump_lbl_117
jump_lbl_117:
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_119
@FastBasic_LINE_424:	; LINE 424
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_VAR_STORE
	.byte	7
@FastBasic_LINE_425:	; LINE 425
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	10
	.byte	TOK_VAR_STORE
	.byte	10
@FastBasic_LINE_426:	; LINE 426
	.byte	TOK_JUMP
	.word	jump_lbl_118
	.export	jump_lbl_119
jump_lbl_119:
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_121
@FastBasic_LINE_427:	; LINE 427
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_428:	; LINE 428
	.byte	TOK_DECVAR
	.byte	11
@FastBasic_LINE_429:	; LINE 429
	.byte	TOK_JUMP
	.word	jump_lbl_118
	.export	jump_lbl_121
jump_lbl_121:
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_118
@FastBasic_LINE_430:	; LINE 430
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_431:	; LINE 431
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	11
	.byte	TOK_VAR_STORE
	.byte	11
@FastBasic_LINE_432:	; LINE 432
	.export	jump_lbl_118
jump_lbl_118:
@FastBasic_LINE_433:	; LINE 433
	.byte	TOK_VAR_LOAD
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	11
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_124
@FastBasic_LINE_434:	; LINE 434
	.byte	TOK_CALL
	.word	fb_lbl_RETURN_WITH_SPECTRIX
@FastBasic_LINE_435:	; LINE 435
	.byte	TOK_CALL
	.word	fb_lbl_AT_2000
@FastBasic_LINE_436:	; LINE 436
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	12
@FastBasic_LINE_437:	; LINE 437
	.export	jump_lbl_124
jump_lbl_124:
@FastBasic_LINE_438:	; LINE 438
	.byte	TOK_VAR_LOAD
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_NEQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_116
@FastBasic_LINE_439:	; LINE 439
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_DPEEK
	.byte	TOK_COPY_STR
@FastBasic_LINE_440:	; LINE 440
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_MUL
	.byte	TOK_VAR_STORE
	.byte	35
@FastBasic_LINE_441:	; LINE 441
	.byte	TOK_VAR_SADDR
	.byte	13
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	35
	.byte	TOK_PUSH_1
	.byte	TOK_STR_IDX
	.byte	TOK_COPY_STR
@FastBasic_LINE_442:	; LINE 442
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	35
	.byte	TOK_PUSH_1
	.byte	TOK_STR_IDX
	.byte	TOK_COPY_STR
@FastBasic_LINE_443:	; LINE 443
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_ADD_VAR
	.byte	35
	.byte	TOK_PUSH_1
	.byte	TOK_STR_IDX
	.byte	TOK_COPY_STR
@FastBasic_LINE_444:	; LINE 444
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	35
	.byte	TOK_PUSH_1
	.byte	TOK_STR_IDX
	.byte	TOK_COPY_STR
@FastBasic_LINE_446:	; LINE 446
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	27
	.byte	TOK_GRAPHICS
@FastBasic_LINE_447:	; LINE 447
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_448:	; LINE 448
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_450:	; LINE 450
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PUSH
	.byte	TOK_CSTRING
	.byte	1, "0"
	.byte	TOK_CMP_STR
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_125
@FastBasic_LINE_451:	; LINE 451
	.byte	TOK_0
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_452:	; LINE 452
	.byte	TOK_BYTE
	.byte	79
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_453:	; LINE 453
	.byte	TOK_1
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_454:	; LINE 454
	.byte	TOK_BYTE
	.byte	79
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_455:	; LINE 455
	.export	jump_lbl_125
jump_lbl_125:
@FastBasic_LINE_456:	; LINE 456
	.byte	TOK_VAR_LOAD
	.byte	16
	.byte	TOK_PUSH
	.byte	TOK_CSTRING
	.byte	1, "0"
	.byte	TOK_CMP_STR
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_126
@FastBasic_LINE_457:	; LINE 457
	.byte	TOK_0
	.byte	TOK_PUSH_BYTE
	.byte	179
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_458:	; LINE 458
	.byte	TOK_BYTE
	.byte	79
	.byte	TOK_PUSH_BYTE
	.byte	179
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_459:	; LINE 459
	.byte	TOK_1
	.byte	TOK_PUSH_BYTE
	.byte	177
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_460:	; LINE 460
	.byte	TOK_BYTE
	.byte	79
	.byte	TOK_PUSH_BYTE
	.byte	177
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_461:	; LINE 461
	.export	jump_lbl_126
jump_lbl_126:
@FastBasic_LINE_462:	; LINE 462
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH
	.byte	TOK_CSTRING
	.byte	1, "0"
	.byte	TOK_CMP_STR
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_127
@FastBasic_LINE_463:	; LINE 463
	.byte	TOK_0
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_464:	; LINE 464
	.byte	TOK_0
	.byte	TOK_PUSH_BYTE
	.byte	179
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_465:	; LINE 465
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_466:	; LINE 466
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	179
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_467:	; LINE 467
	.export	jump_lbl_127
jump_lbl_127:
@FastBasic_LINE_468:	; LINE 468
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_PUSH
	.byte	TOK_CSTRING
	.byte	1, "0"
	.byte	TOK_CMP_STR
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_128
@FastBasic_LINE_469:	; LINE 469
	.byte	TOK_BYTE
	.byte	79
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_470:	; LINE 470
	.byte	TOK_BYTE
	.byte	79
	.byte	TOK_PUSH_BYTE
	.byte	179
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_471:	; LINE 471
	.byte	TOK_BYTE
	.byte	77
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_472:	; LINE 472
	.byte	TOK_BYTE
	.byte	77
	.byte	TOK_PUSH_BYTE
	.byte	179
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_473:	; LINE 473
	.export	jump_lbl_128
jump_lbl_128:
@FastBasic_LINE_475:	; LINE 475
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_476:	; LINE 476
	.byte	TOK_0
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_477:	; LINE 477
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_478:	; LINE 478
	.byte	TOK_BYTE
	.byte	79
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_479:	; LINE 479
	.byte	TOK_BYTE
	.byte	77
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_480:	; LINE 480
	.byte	TOK_0
	.byte	TOK_PUSH_BYTE
	.byte	179
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_481:	; LINE 481
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_BYTE
	.byte	177
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_482:	; LINE 482
	.byte	TOK_BYTE
	.byte	79
	.byte	TOK_PUSH_BYTE
	.byte	179
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_483:	; LINE 483
	.byte	TOK_BYTE
	.byte	77
	.byte	TOK_PUSH_BYTE
	.byte	177
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_485:	; LINE 485
	.byte	TOK_VAR_STORE_0
	.byte	17
@FastBasic_LINE_486:	; LINE 486
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_129
	.export	jump_lbl_130
jump_lbl_130:
@FastBasic_LINE_487:	; LINE 487
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_DPEEK
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_131
@FastBasic_LINE_488:	; LINE 488
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	3
	.byte	TOK_DPEEK
	.byte	TOK_VAR_STORE
	.byte	17
@FastBasic_LINE_489:	; LINE 489
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_VAR_STORE
	.byte	18
@FastBasic_LINE_490:	; LINE 490
	.byte	TOK_BYTE
	.byte	90
	.byte	TOK_VAR_STORE
	.byte	19
@FastBasic_LINE_491:	; LINE 491
	.export	jump_lbl_131
jump_lbl_131:
@FastBasic_LINE_492:	; LINE 492
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_130
	.export	jump_lbl_129
jump_lbl_129:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_494:	; LINE 494
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_132
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_STORE
	.byte	23
	.export	jump_lbl_132
jump_lbl_132:
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_STORE
	.byte	22
@FastBasic_LINE_495:	; LINE 495
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_133
	.byte	TOK_VAR_STORE_0
	.byte	23
	.export	jump_lbl_133
jump_lbl_133:
@FastBasic_LINE_496:	; LINE 496
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_134
	.byte	TOK_VAR_STORE_0
	.byte	23
	.export	jump_lbl_134
jump_lbl_134:
@FastBasic_LINE_497:	; LINE 497
	.byte	TOK_VAR_LOAD
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_135
@FastBasic_LINE_498:	; LINE 498
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	24
@FastBasic_LINE_499:	; LINE 499
	.byte	TOK_FP_RND
	.byte	TOK_FLOAT
	.byte	$40, $05, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	25
@FastBasic_LINE_500:	; LINE 500
	.export	jump_lbl_135
jump_lbl_135:
@FastBasic_LINE_501:	; LINE 501
	.byte	TOK_VAR_LOAD
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_136
@FastBasic_LINE_502:	; LINE 502
	.byte	TOK_VAR_LOAD
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_137
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	12
	.export	jump_lbl_137
jump_lbl_137:
@FastBasic_LINE_503:	; LINE 503
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH_VAR_LOAD
	.byte	21
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_138
@FastBasic_LINE_504:	; LINE 504
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_139
	.export	jump_lbl_140
jump_lbl_140:
@FastBasic_LINE_505:	; LINE 505
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_506:	; LINE 506
	.byte	TOK_BYTE
	.byte	48
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	82
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_507:	; LINE 507
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	98
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_508:	; LINE 508
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	82
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_509:	; LINE 509
	.byte	TOK_BYTE
	.byte	48
	.byte	TOK_PUSH_BYTE
	.byte	98
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_510:	; LINE 510
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_140
	.export	jump_lbl_139
jump_lbl_139:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_511:	; LINE 511
	.export	jump_lbl_138
jump_lbl_138:
@FastBasic_LINE_512:	; LINE 512
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_VAR_LOAD
	.byte	20
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH_VAR_LOAD
	.byte	21
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_136
@FastBasic_LINE_513:	; LINE 513
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_STORE
	.byte	12
@FastBasic_LINE_514:	; LINE 514
	.byte	TOK_VAR_STORE_0
	.byte	17
@FastBasic_LINE_516:	; LINE 516
	.export	jump_lbl_136
jump_lbl_136:
@FastBasic_LINE_518:	; LINE 518
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	11
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_142
@FastBasic_LINE_519:	; LINE 519
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_520:	; LINE 520
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_521:	; LINE 521
	.byte	TOK_BYTE
	.byte	77
	.byte	TOK_PUSH_1
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_522:	; LINE 522
	.export	jump_lbl_142
jump_lbl_142:
@FastBasic_LINE_524:	; LINE 524
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	240
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_143
	.export	jump_lbl_144
jump_lbl_144:
@FastBasic_LINE_525:	; LINE 525
	.byte	TOK_NUM
	.word	53760
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	255
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	160
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	64
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_ADD
	.byte	TOK_SHL8
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_526:	; LINE 526
	.byte	TOK_NUM
	.word	712
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	32
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_527:	; LINE 527
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_144
	.export	jump_lbl_143
jump_lbl_143:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_528:	; LINE 528
	.byte	TOK_NUM
	.word	53760
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_530:	; LINE 530
	.byte	TOK_RET
@FastBasic_LINE_532:	; LINE 532
	.export	fb_lbl_AT_2000
fb_lbl_AT_2000:
@FastBasic_LINE_534:	; LINE 534
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_147
@FastBasic_LINE_535:	; LINE 535
	.export	jump_lbl_149
jump_lbl_149:
@FastBasic_LINE_536:	; LINE 536
	.byte	TOK_VAR_STORE_0
	.byte	36
@FastBasic_LINE_537:	; LINE 537
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_RAND
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_538:	; LINE 538
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_RAND
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_539:	; LINE 539
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	3
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_RAND
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_DPOKE
@FastBasic_LINE_540:	; LINE 540
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_DPEEK
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_150
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	36
	.export	jump_lbl_150
jump_lbl_150:
@FastBasic_LINE_541:	; LINE 541
	.byte	TOK_VAR_LOAD
	.byte	36
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_149
@FastBasic_LINE_542:	; LINE 542
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_149
	.export	jump_lbl_147
jump_lbl_147:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_543:	; LINE 543
	.byte	TOK_BYTE
	.byte	202
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_544:	; LINE 544
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_RAND
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	20
@FastBasic_LINE_545:	; LINE 545
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_RAND
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	21
@FastBasic_LINE_546:	; LINE 546
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	12
@FastBasic_LINE_548:	; LINE 548
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_PUSH_BYTE
	.byte	14
	.byte	TOK_GT
	.byte	TOK_CRET
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	26
@FastBasic_LINE_551:	; LINE 551
	.byte	TOK_RET
@FastBasic_LINE_553:	; LINE 553
	.export	fb_lbl_SHOW_GAME_OVER
fb_lbl_SHOW_GAME_OVER:
@FastBasic_LINE_554:	; LINE 554
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	18
	.byte	TOK_GRAPHICS
@FastBasic_LINE_555:	; LINE 555
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_POSITION
@FastBasic_LINE_556:	; LINE 556
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	10, "GAME OVER", 155
	.byte	TOK_PRINT_STR
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_557:	; LINE 557
	.byte	TOK_VAR_SADDR
	.byte	34
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_154
	.export	jump_lbl_155
jump_lbl_155:
@FastBasic_LINE_558:	; LINE 558
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_PUSH_1
	.byte	TOK_NEG
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_156
	.export	jump_lbl_157
jump_lbl_157:
@FastBasic_LINE_559:	; LINE 559
	.byte	TOK_NUM
	.word	710
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	208
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_POKE
@FastBasic_LINE_560:	; LINE 560
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_157
	.export	jump_lbl_156
jump_lbl_156:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_561:	; LINE 561
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_158
	.export	jump_lbl_159
jump_lbl_159:
@FastBasic_LINE_562:	; LINE 562
	.byte	TOK_NUM
	.word	710
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	208
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_POKE
@FastBasic_LINE_563:	; LINE 563
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_159
	.export	jump_lbl_158
jump_lbl_158:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_564:	; LINE 564
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_155
	.export	jump_lbl_154
jump_lbl_154:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_565:	; LINE 565
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_POSITION
@FastBasic_LINE_566:	; LINE 566
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	711
@FastBasic_LINE_567:	; LINE 567
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	21, "thankyou for playing", 155
	.byte	TOK_PRINT_STR
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_568:	; LINE 568
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_160
	.export	jump_lbl_161
jump_lbl_161:
@FastBasic_LINE_569:	; LINE 569
	.byte	TOK_NUM
	.word	711
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	160
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_POKE
@FastBasic_LINE_570:	; LINE 570
	.byte	TOK_1
	.byte	TOK_PAUSE
@FastBasic_LINE_571:	; LINE 571
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_161
	.export	jump_lbl_160
jump_lbl_160:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_572:	; LINE 572
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_PUSH_VAR_LOAD
	.byte	4
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_162
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	4
	.export	jump_lbl_162
jump_lbl_162:
@FastBasic_LINE_573:	; LINE 573
	.byte	TOK_BYTE
	.byte	120
	.byte	TOK_PAUSE
@FastBasic_LINE_574:	; LINE 574
	.byte	TOK_RET
@FastBasic_LINE_576:	; LINE 576
	.export	fb_lbl_TITLE_SCREEN
fb_lbl_TITLE_SCREEN:
@FastBasic_LINE_577:	; LINE 577
	.export	jump_lbl_165
jump_lbl_165:
@FastBasic_LINE_578:	; LINE 578
	.byte	TOK_VAR_STORE_0
	.byte	37
@FastBasic_LINE_579:	; LINE 579
	.byte	TOK_VAR_LOAD
	.byte	37
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_166
@FastBasic_LINE_580:	; LINE 580
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	17
	.byte	TOK_GRAPHICS
@FastBasic_LINE_581:	; LINE 581
	.byte	TOK_BYTE
	.byte	184
	.byte	TOK_NUM_POKE
	.word	708
@FastBasic_LINE_582:	; LINE 582
	.byte	TOK_BYTE
	.byte	214
	.byte	TOK_NUM_POKE
	.word	710
@FastBasic_LINE_583:	; LINE 583
	.byte	TOK_BYTE
	.byte	202
	.byte	TOK_NUM_POKE
	.word	711
@FastBasic_LINE_584:	; LINE 584
	.byte	TOK_1
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_POSITION
@FastBasic_LINE_585:	; LINE 585
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	36, "    SEARCH OF THE         SPECTRIX ", 155
	.byte	TOK_PRINT_STR
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_586:	; LINE 586
	.byte	TOK_1
	.byte	TOK_PUSH_BYTE
	.byte	14
	.byte	TOK_POSITION
@FastBasic_LINE_587:	; LINE 587
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	38, "     CREATED BY        peter j. meyer", 155
	.byte	TOK_PRINT_STR
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_588:	; LINE 588
	.byte	TOK_1
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_POSITION
@FastBasic_LINE_589:	; LINE 589
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	38, "     copyright           1986,2020   ", 155
	.byte	TOK_PRINT_STR
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_590:	; LINE 590
	.byte	TOK_CALL
	.word	fb_lbl_TITLE_SCREEN_HOLD
@FastBasic_LINE_591:	; LINE 591
	.export	jump_lbl_166
jump_lbl_166:
@FastBasic_LINE_592:	; LINE 592
	.byte	TOK_VAR_LOAD
	.byte	37
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_167
@FastBasic_LINE_593:	; LINE 593
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_0
	.byte	TOK_GRAPHICS
@FastBasic_LINE_594:	; LINE 594
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	710
@FastBasic_LINE_595:	; LINE 595
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_NUM_POKE
	.word	709
@FastBasic_LINE_596:	; LINE 596
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_597:	; LINE 597
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	82
@FastBasic_LINE_598:	; LINE 598
	.byte	TOK_BYTE
	.byte	CLS
	.byte	TOK_PUT
@FastBasic_LINE_599:	; LINE 599
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_CSTRING
	.byte	18, "     YOUR SCORE - "
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
@FastBasic_LINE_600:	; LINE 600
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_CSTRING
	.byte	18, "     HIGH SCORE - "
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
@FastBasic_LINE_601:	; LINE 601
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_CSTRING
	.byte	40, "PRESS BUTTON ON JOYSTICK TO START GAME.", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_603:	; LINE 603
	.byte	TOK_CALL
	.word	fb_lbl_TITLE_SCREEN_HOLD
@FastBasic_LINE_604:	; LINE 604
	.export	jump_lbl_167
jump_lbl_167:
@FastBasic_LINE_605:	; LINE 605
	.byte	TOK_VAR_LOAD
	.byte	37
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_168
@FastBasic_LINE_606:	; LINE 606
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_BYTE
	.byte	27
	.byte	TOK_GRAPHICS
@FastBasic_LINE_607:	; LINE 607
	.byte	TOK_VAR_SADDR
	.byte	32
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_169
	.export	jump_lbl_170
jump_lbl_170:
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	48
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	82
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	98
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	82
	.byte	TOK_ADD_VAR
	.byte	32
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	48
	.byte	TOK_PUSH_BYTE
	.byte	98
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_170
	.export	jump_lbl_169
jump_lbl_169:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_608:	; LINE 608
	.byte	TOK_CALL
	.word	fb_lbl_TITLE_SCREEN_HOLD
@FastBasic_LINE_609:	; LINE 609
	.export	jump_lbl_168
jump_lbl_168:
@FastBasic_LINE_610:	; LINE 610
	.byte	TOK_VAR_LOAD
	.byte	37
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_165
@FastBasic_LINE_611:	; LINE 611
	.byte	TOK_RET
@FastBasic_LINE_613:	; LINE 613
	.export	fb_lbl_TITLE_SCREEN_HOLD
fb_lbl_TITLE_SCREEN_HOLD:
@FastBasic_LINE_614:	; LINE 614
	.byte	TOK_BYTE
	.byte	120
	.byte	TOK_VAR_STORE
	.byte	32
@FastBasic_LINE_615:	; LINE 615
	.export	jump_lbl_173
jump_lbl_173:
@FastBasic_LINE_616:	; LINE 616
	.byte	TOK_NUM
	.word	53279
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_BIT_AND
	.byte	TOK_VAR_STORE
	.byte	37
@FastBasic_LINE_617:	; LINE 617
	.byte	TOK_NUM
	.word	644
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	37
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_174
	.byte	TOK_BYTE
	.byte	255
	.byte	TOK_VAR_STORE
	.byte	37
	.export	jump_lbl_174
jump_lbl_174:
@FastBasic_LINE_618:	; LINE 618
	.byte	TOK_1
	.byte	TOK_PAUSE
@FastBasic_LINE_619:	; LINE 619
	.byte	TOK_DECVAR
	.byte	32
@FastBasic_LINE_620:	; LINE 620
	.byte	TOK_VAR_LOAD
	.byte	37
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	37
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_0
	.byte	TOK_LT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_173
@FastBasic_LINE_622:	; LINE 622
	.byte	TOK_RET
