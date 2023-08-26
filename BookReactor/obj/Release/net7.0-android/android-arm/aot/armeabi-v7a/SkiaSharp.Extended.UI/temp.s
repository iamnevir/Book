.section ".debug_abbrev"
.subsection 0
.Ldebug_abbrev_start:

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,90
	.byte 8,17,1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4
	.byte 36,0,11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3
	.byte 8,73,19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8
	.byte 28,13,0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0
	.byte 0,13,15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18
	.byte 1,0,0,0
.section ".debug_info"
.subsection 0
.Ldebug_info_start:

.LDIFF_SYM0=.Ldebug_info_end - .Ldebug_info_begin
	.long .LDIFF_SYM0
.Ldebug_info_begin:

	.short 2
	.long .Ldebug_abbrev_start
	.byte 4,1
	.string "Mono AOT Compiler 7.0.10.0 (7.0.10 @Commit: a6dbb800a47735bde43187350fd3aff4071c7f9c)"
	.string "SkiaSharp.Extended.UI.dll"
	.string ""

	.byte 2,0,0,0,0,0,0,0,0
.LDIFF_SYM1=.Ldebug_line_start - .Ldebug_line_section_start
	.long .LDIFF_SYM1
.LDIE_I1:

	.byte 4,1,5
	.string "sbyte"
.LDIE_U1:

	.byte 4,1,7
	.string "byte"
.LDIE_I2:

	.byte 4,2,5
	.string "short"
.LDIE_U2:

	.byte 4,2,7
	.string "ushort"
.LDIE_I4:

	.byte 4,4,5
	.string "int"
.LDIE_U4:

	.byte 4,4,7
	.string "uint"
.LDIE_I8:

	.byte 4,8,5
	.string "long"
.LDIE_U8:

	.byte 4,8,7
	.string "ulong"
.LDIE_I:

	.byte 4,4,5
	.string "intptr"
.LDIE_U:

	.byte 4,4,7
	.string "uintptr"
.LDIE_R4:

	.byte 4,4,4
	.string "float"
.LDIE_R8:

	.byte 4,8,4
	.string "double"
.LDIE_BOOLEAN:

	.byte 4,1,2
	.string "boolean"
.LDIE_CHAR:

	.byte 4,2,8
	.string "char"
.LDIE_STRING:

	.byte 4,4,1
	.string "string"
.LDIE_OBJECT:

	.byte 4,4,1
	.string "object"
.LDIE_SZARRAY:

	.byte 4,4,1
	.string "object"
.section ".debug_loc"
.subsection 0
.Ldebug_loc_start:
.section ".debug_frame"
.subsection 0
	.align 3

.LDIFF_SYM2=.Lcie0_end - .Lcie0_start
	.long .LDIFF_SYM2
.Lcie0_start:

	.long -1
	.byte 3
	.string ""

	.byte 1,124,14,12,13,0
	.align 2
.Lcie0_end:
.text 0
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text 0
	.align 2
.Lm_7:
	.local SkiaSharp_Extended_UI_ResourceLoader_EnsureRegistered_T_REF_bool_
	.type SkiaSharp_Extended_UI_ResourceLoader_EnsureRegistered_T_REF_bool_,#function
SkiaSharp_Extended_UI_ResourceLoader_EnsureRegistered_T_REF_bool_:

	.byte 224,73,45,233,24,208,77,226,13,176,160,225,8,128,139,229,0,112,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 16
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl .Lp_1

	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 76
	.byte 1,16,159,231,8,0,155,229
bl .Lp_2

	.byte 0,0,160,227,0,0,139,229,0,0,215,229,0,0,80,227,136,0,0,26,0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 80
	.byte 0,0,159,231,217,193,208,225,0,0,92,227,0,0,0,26
bl .Lp_3

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 84
	.byte 0,0,159,231,0,0,144,229,0,80,160,225,0,0,80,227,1,0,0,26,0,80,160,227,9,0,0,234,5,0,160,225
bl .Lp_4

	.byte 0,80,160,225,0,0,80,227,1,0,0,26,0,80,160,227,2,0,0,234,5,0,160,225
bl .Lp_5

	.byte 0,80,160,225,5,96,160,225,0,0,85,227,105,0,0,10,6,0,160,225,0,16,150,229,0,128,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 88
	.byte 8,128,159,231,15,224,160,225,44,240,17,229,0,0,139,229,35,0,0,234,0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 16
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl .Lp_1

	.byte 0,16,155,229,1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 92
	.byte 8,128,159,231,15,224,160,225,28,240,17,229,0,0,144,229,12,0,144,229,8,16,155,229,20,16,145,229,1,0,80,225
	.byte 0,0,160,19,1,0,160,3,0,0,80,227,9,0,0,10,1,0,160,227,0,0,199,229,0,0,160,227,4,0,139,229
	.byte 24,0,0,235,4,0,155,229,0,0,80,227,0,0,0,10
bl .Lp_6

	.byte 42,0,0,234,0,16,155,229,1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 96
	.byte 8,128,159,231,15,224,160,225,60,240,17,229,255,0,0,226,0,0,80,227,207,255,255,26,0,0,160,227,4,0,139,229
	.byte 4,0,0,235,4,0,155,229,0,0,80,227,0,0,0,10
bl .Lp_6

	.byte 22,0,0,234,12,224,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 16
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl .Lp_1

	.byte 0,0,155,229,0,0,80,227,8,0,0,10,0,16,155,229,1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 100
	.byte 8,128,159,231,15,224,160,225,20,240,17,229,12,192,155,229,12,240,160,225,0,0,215,229,0,0,80,227,13,0,0,26
	.byte 8,0,155,229,16,128,144,229
bl .Lp_7

	.byte 0,16,160,225,6,0,160,225,0,32,150,229,0,128,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 104
	.byte 8,128,159,231,15,224,160,225,60,240,18,229,1,0,160,227,0,0,199,229,24,208,139,226,224,137,189,232

	.size SkiaSharp_Extended_UI_ResourceLoader_EnsureRegistered_T_REF_bool_,.-SkiaSharp_Extended_UI_ResourceLoader_EnsureRegistered_T_REF_bool_
.Lme_7:
.text 0
	.align 2
.Lm_10:
	.local SkiaSharp_Extended_UI_SKObjectPool_1_T_REF__ctor_System_Func_1_T_REF
	.type SkiaSharp_Extended_UI_SKObjectPool_1_T_REF__ctor_System_Func_1_T_REF,#function
SkiaSharp_Extended_UI_SKObjectPool_1_T_REF__ctor_System_Func_1_T_REF:

	.byte 96,65,45,233,24,208,77,226,0,0,141,229,4,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 16
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl .Lp_1

	.byte 0,96,157,229,4,80,157,229,5,0,160,225,0,0,80,227,36,0,0,10,12,0,134,226,16,0,141,229,91,240,127,245
	.byte 16,0,157,229,0,80,128,229,160,4,160,225,0,16,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . -4
	.byte 1,16,159,231,1,0,128,224,1,16,160,227,0,16,192,229,0,0,157,229,12,0,141,229,0,0,157,229,0,0,144,229
bl .Lp_8

	.byte 24,16,160,227
bl .Lp_9

	.byte 8,0,141,229
bl .Lp_10

	.byte 12,0,157,229,8,16,128,226,91,240,127,245,8,0,157,229,0,0,129,229,161,20,160,225,0,32,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . -4
	.byte 2,32,159,231,2,16,129,224,1,32,160,227,0,32,193,229,24,208,141,226,96,129,189,232,0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . -12
	.byte 0,0,159,231,1,16,160,227
bl .Lp_11

	.byte 0,16,160,225,112,0,0,227,0,2,64,227
bl .Lp_12
bl .Lp_13

	.size SkiaSharp_Extended_UI_SKObjectPool_1_T_REF__ctor_System_Func_1_T_REF,.-SkiaSharp_Extended_UI_SKObjectPool_1_T_REF__ctor_System_Func_1_T_REF
.Lme_10:
.text 0
	.align 2
.Lm_11:
	.local SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Get
	.type SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Get,#function
SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Get:

	.byte 0,65,45,233,16,208,77,226,4,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 16
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl .Lp_1

	.byte 0,0,160,227,0,0,141,229,4,0,157,229,8,32,144,229,2,0,160,225,13,16,160,225,0,224,210,229
bl .Lp_14

	.byte 255,0,0,226,0,0,80,227,7,0,0,26,4,0,157,229,12,16,144,229,1,0,160,225,8,16,141,229,15,224,160,225
	.byte 12,240,145,229,8,16,157,229,0,0,0,234,0,0,157,229,16,208,141,226,0,129,189,232

	.size SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Get,.-SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Get
.Lme_11:
.text 0
	.align 2
.Lm_12:
	.local SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Return_T_REF
	.type SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Return_T_REF,#function
SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Return_T_REF:

	.byte 0,65,45,233,8,208,77,226,0,0,141,229,4,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 16
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl .Lp_1

	.byte 0,0,157,229,8,32,144,229,2,0,160,225,4,16,157,229,0,224,210,229
bl .Lp_15

	.byte 8,208,141,226,0,129,189,232

	.size SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Return_T_REF,.-SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Return_T_REF
.Lme_12:
.text 0
	.align 3
jit_code_end:

	.byte 0,0,0,0
.section ".data.rel.ro"
.subsection 0
	.align 3
method_addresses:
	.local method_addresses
	.type method_addresses,#object
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=.Lm_7
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=.Lm_10
.ltorg
ldr pc,=.Lm_11
.ltorg
ldr pc,=.Lm_12
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
method_addresses_end:

.text 0
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text 0
	.align 3
unbox_trampoline_addresses:

	.long 0
.text 0
	.align 3
method_info_offsets:

	.byte 104,1,0,0,10,0,0,0,36,0,0,0,2,0,0,0,0,0,14,0,28,0,38,0,48,0,58,0,68,0,78,0
	.byte 88,0,98,0,108,0,118,0,128,0,138,0,148,0,158,0,168,0,178,0,188,0,198,0,208,0,218,0,228,0,238,0
	.byte 248,0,2,1,12,1,22,1,32,1,42,1,52,1,62,1,72,1,82,1,92,1,102,1,0,0,0,0,0,0,0,1
	.byte 255,255,255,255,255,0,0,0,0,0,0,0,14,4,4,255,255,255,255,234,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0
.text 0
	.align 3
method_flags_table:

	.byte 0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0
.text 0
	.align 3
extra_method_table:

	.byte 11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0
.text 0
	.align 3
extra_method_info_offsets:

	.byte 0,0,0,0
.text 0
	.align 3
class_name_table:

	.byte 163,0,0,0,0,0,0,0,0,0,0,0,0,0,57,0,182,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,27,0,0,0,0,0,0,0,65,0,0,0,0,0,0,0,98,0,0,0,0,0,0,0,59,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,95,0,0,0,0,0,0,0,62,0,0,0,92,0,0,0,0,0
	.byte 0,0,30,0,191,0,0,0,0,0,101,0,0,0,49,0,0,0,81,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,73,0,183,0,63,0,0,0,0,0,0,0,0,0,0,0,36,0,184,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,21,0,177,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,32,0,0,0,15,0,0,0,35,0,0,0,0,0,0,0,104,0,0,0,68,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,51,0,0,0,72,0,0,0,84,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,85,0,0,0,19,0,0,0,26,0,0,0,0,0,0,0,0,0,0,0,53,0,0,0,3,0
	.byte 0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,25,0,172,0,14,0,0,0,0,0,0,0,55,0,192,0,0,0,0,0,0,0
	.byte 0,0,8,0,0,0,12,0,163,0,86,0,0,0,9,0,0,0,0,0,0,0,64,0,0,0,2,0,185,0,5,0
	.byte 164,0,0,0,0,0,40,0,169,0,41,0,186,0,0,0,0,0,43,0,179,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,75,0,0,0,0,0,0,0,97,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,7,0,0,0,71,0,0,0,48,0,0,0,100,0,0,0,60,0,0,0,102,0,0,0,66,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,33,0,170,0,34,0,176,0,0,0,0,0,0,0,0,0,44,0
	.byte 187,0,56,0,175,0,76,0,0,0,28,0,0,0,39,0,0,0,0,0,0,0,77,0,0,0,31,0,0,0,0,0
	.byte 0,0,0,0,0,0,17,0,180,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,93,0,0,0,0,0,0,0,0,0,0,0,45,0,0,0,94,0,0,0,0,0,0,0,6,0
	.byte 0,0,1,0,0,0,22,0,0,0,20,0,168,0,0,0,0,0,50,0,188,0,0,0,0,0,0,0,0,0,99,0
	.byte 0,0,13,0,166,0,0,0,0,0,18,0,167,0,16,0,165,0,23,0,178,0,24,0,173,0,29,0,189,0,37,0
	.byte 181,0,38,0,171,0,42,0,0,0,46,0,0,0,47,0,0,0,52,0,0,0,54,0,174,0,58,0,0,0,61,0
	.byte 0,0,67,0,0,0,69,0,190,0,70,0,0,0,74,0,0,0,78,0,0,0,79,0,0,0,80,0,0,0,82,0
	.byte 0,0,83,0,0,0,87,0,0,0,88,0,0,0,89,0,0,0,90,0,0,0,91,0,0,0,96,0,0,0,103,0
	.byte 0,0,105,0,0,0
.text 0
	.align 3
got_info_offsets:

	.byte 30,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,10,0,20,0,26,2,1,1,1,1,1,1,1,2
	.byte 39,2,2,2,3,2,2,2,3,2,62,3,22,30,4,10,16,16,5,5
.text 0
	.align 3
ex_info_offsets:

	.byte 104,1,0,0,10,0,0,0,36,0,0,0,2,0,0,0,0,0,15,0,31,0,41,0,51,0,61,0,71,0,81,0
	.byte 91,0,101,0,111,0,121,0,131,0,141,0,151,0,161,0,171,0,181,0,191,0,201,0,211,0,221,0,231,0,241,0
	.byte 251,0,5,1,15,1,25,1,35,1,45,1,55,1,65,1,75,1,85,1,95,1,105,1,0,0,0,0,0,0,0,129
	.byte 64,255,255,255,254,192,0,0,0,0,0,0,0,130,163,128,131,95,255,255,255,252,123,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0
.text 1
	.align 3
unwind_info:

	.byte 35,12,13,0,68,14,24,133,6,134,5,135,4,136,3,139,2,142,1,68,14,48,68,13,11,3,120,2,10,68,13,13
	.byte 14,24,68,11,25,12,13,0,68,14,16,133,4,134,3,136,2,142,1,68,14,40,2,200,10,68,14,16,68,11,21,12
	.byte 13,0,68,14,8,136,2,142,1,68,14,24,2,116,10,68,14,8,68,11,21,12,13,0,68,14,8,136,2,142,1,68
	.byte 14,16,2,64,10,68,14,8,68,11
.text 0
	.align 3
class_info_offsets:

	.byte 105,0,0,0,10,0,0,0,11,0,0,0,2,0,0,0,0,0,11,0,22,0,33,0,44,0,57,0,71,0,84,0
	.byte 95,0,106,0,117,0,131,189,7,35,35,35,23,23,23,23,5,132,166,25,25,25,24,25,25,25,25,25,133,158,25,24
	.byte 24,25,25,25,24,5,56,134,158,99,24,24,23,5,56,57,57,59,136,109,59,5,57,25,5,131,25,25,128,246,27,141
	.byte 98,128,244,99,131,25,23,27,27,27,128,246,27,148,65,27,131,25,131,21,103,23,103,23,46,47,156,18,47,47,24,23
	.byte 23,23,23,23,23,157,41,23,23,23,23,23,23,23,23,23,158,15,23,23,23,23,23,24,24,24,24,158,250,24,24,24
	.byte 24

.text 0
	.align 4
plt:
mono_aot_SkiaSharp_Extended_UI_plt:
	.local plt__jit_icall_mono_threads_state_poll
	.type plt__jit_icall_mono_threads_state_poll,#function
plt__jit_icall_mono_threads_state_poll:
.Lp_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 120,189
	.size plt__jit_icall_mono_threads_state_poll,.-plt__jit_icall_mono_threads_state_poll
	.local plt__jit_icall_mini_init_method_rgctx
	.type plt__jit_icall_mini_init_method_rgctx,#function
plt__jit_icall_mini_init_method_rgctx:
.Lp_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 124,192
	.size plt__jit_icall_mini_init_method_rgctx,.-plt__jit_icall_mini_init_method_rgctx
	.local plt__jit_icall_mono_generic_class_init
	.type plt__jit_icall_mono_generic_class_init,#function
plt__jit_icall_mono_generic_class_init:
.Lp_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 128,195
	.size plt__jit_icall_mono_generic_class_init,.-plt__jit_icall_mono_generic_class_init
	.local plt_Microsoft_Maui_Controls_Application_get_Resources
	.type plt_Microsoft_Maui_Controls_Application_get_Resources,#function
plt_Microsoft_Maui_Controls_Application_get_Resources:
.Lp_4:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 132,198
	.size plt_Microsoft_Maui_Controls_Application_get_Resources,.-plt_Microsoft_Maui_Controls_Application_get_Resources
	.local plt_Microsoft_Maui_Controls_ResourceDictionary_get_MergedDictionaries
	.type plt_Microsoft_Maui_Controls_ResourceDictionary_get_MergedDictionaries,#function
plt_Microsoft_Maui_Controls_ResourceDictionary_get_MergedDictionaries:
.Lp_5:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 136,203
	.size plt_Microsoft_Maui_Controls_ResourceDictionary_get_MergedDictionaries,.-plt_Microsoft_Maui_Controls_ResourceDictionary_get_MergedDictionaries
	.local plt__jit_icall_ves_icall_thread_finish_async_abort
	.type plt__jit_icall_ves_icall_thread_finish_async_abort,#function
plt__jit_icall_ves_icall_thread_finish_async_abort:
.Lp_6:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 140,208
	.size plt__jit_icall_ves_icall_thread_finish_async_abort,.-plt__jit_icall_ves_icall_thread_finish_async_abort
	.local plt_System_Activator_CreateInstance_T_REF
	.type plt_System_Activator_CreateInstance_T_REF,#function
plt_System_Activator_CreateInstance_T_REF:
.Lp_7:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 144,211
	.size plt_System_Activator_CreateInstance_T_REF,.-plt_System_Activator_CreateInstance_T_REF
	.local plt__rgctx_fetch_0
	.type plt__rgctx_fetch_0,#function
plt__rgctx_fetch_0:
.Lp_8:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 148,254
	.size plt__rgctx_fetch_0,.-plt__rgctx_fetch_0
	.local plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.type plt_wrapper_alloc_object_AllocSmall_intptr_intptr,#function
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
.Lp_9:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 152,262
	.size plt_wrapper_alloc_object_AllocSmall_intptr_intptr,.-plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.local plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF__ctor
	.type plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF__ctor,#function
plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF__ctor:
.Lp_10:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 156,270
	.size plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF__ctor,.-plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF__ctor
	.local plt__jit_icall_mono_helper_ldstr
	.type plt__jit_icall_mono_helper_ldstr,#function
plt__jit_icall_mono_helper_ldstr:
.Lp_11:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 160,284
	.size plt__jit_icall_mono_helper_ldstr,.-plt__jit_icall_mono_helper_ldstr
	.local plt__jit_icall_mono_create_corlib_exception_1
	.type plt__jit_icall_mono_create_corlib_exception_1,#function
plt__jit_icall_mono_create_corlib_exception_1:
.Lp_12:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 164,287
	.size plt__jit_icall_mono_create_corlib_exception_1,.-plt__jit_icall_mono_create_corlib_exception_1
	.local plt__jit_icall_mono_arch_throw_exception
	.type plt__jit_icall_mono_arch_throw_exception,#function
plt__jit_icall_mono_arch_throw_exception:
.Lp_13:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 168,290
	.size plt__jit_icall_mono_arch_throw_exception,.-plt__jit_icall_mono_arch_throw_exception
	.local plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF_TryTake_T_REF_
	.type plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF_TryTake_T_REF_,#function
plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF_TryTake_T_REF_:
.Lp_14:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 172,292
	.size plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF_TryTake_T_REF_,.-plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF_TryTake_T_REF_
	.local plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF_Add_T_REF
	.type plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF_Add_T_REF,#function
plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF_Add_T_REF:
.Lp_15:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_UI_got - . + 176,306
	.size plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF_Add_T_REF,.-plt_System_Collections_Concurrent_ConcurrentBag_1_T_REF_Add_T_REF
	.size mono_aot_SkiaSharp_Extended_UI_plt,.-mono_aot_SkiaSharp_Extended_UI_plt
plt_end:
.text 0
	.align 3
image_table:

	.byte 5,0,0,0,83,107,105,97,83,104,97,114,112,46,69,120,116,101,110,100,101,100,46,85,73,0,51,70,56,70,56,69
	.byte 56,57,45,57,54,68,55,45,52,68,56,51,45,66,65,70,70,45,54,54,65,65,68,50,70,70,66,51,69,54,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116
	.byte 101,109,46,80,114,105,118,97,116,101,46,67,111,114,101,76,105,98,0,50,56,67,68,48,65,66,50,45,49,70,68,65
	.byte 45,52,50,57,65,45,65,52,55,54,45,55,66,54,66,48,66,66,57,57,67,65,70,0,0,55,99,101,99,56,53,100
	.byte 55,98,101,97,55,55,57,56,101,0,0,0,0,0,0,0,1,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,77,105,99,114,111,115,111,102,116,46,77,97,117,105,46,67,111,110,116,114,111,108,115,0,67,53,48,50
	.byte 48,49,48,65,45,53,52,55,67,45,52,51,68,48,45,66,70,50,70,45,70,48,49,65,48,50,55,70,70,48,55,52
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116
	.byte 101,109,46,67,111,108,108,101,99,116,105,111,110,115,46,67,111,110,99,117,114,114,101,110,116,0,66,53,52,70,57,69
	.byte 68,49,45,48,56,69,50,45,52,49,49,56,45,57,49,50,52,45,55,56,54,69,56,50,66,48,53,66,65,66,0,0
	.byte 98,48,51,102,53,102,55,102,49,49,100,53,48,97,51,97,0,0,0,0,0,0,0,0,1,0,0,0,7,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116,101,109,46,67,111,109,112,111,110,101,110,116,77,111,100,101
	.byte 108,46,84,121,112,101,67,111,110,118,101,114,116,101,114,0,68,68,68,55,69,57,67,69,45,52,69,52,65,45,52,57
	.byte 69,50,45,56,69,48,54,45,70,49,68,52,51,67,55,57,49,68,70,56,0,0,98,48,51,102,53,102,55,102,49,49
	.byte 100,53,48,97,51,97,0,0,1,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text 0
	.align 3
weak_field_indexes:

	.byte 0,0,0,0
.section ".bss"
.subsection 0
	.align 3
	.local mono_aot_SkiaSharp_Extended_UI_got
	.type mono_aot_SkiaSharp_Extended_UI_got,#object
mono_aot_SkiaSharp_Extended_UI_got:
	.skip 184
got_end:
.text 0
	.align 3
blob:

	.byte 0,7,0,0,0,8,22,23,24,25,26,27,28,29,16,0,0,0,17,0,0,0,18,0,0,0,11,0,35,37,45,49
	.byte 51,31,47,54,8,54,9,54,10,54,11,54,12,54,128,255,6,89,6,98,6,103,6,129,5,6,92,6,128,171,6,128
	.byte 149,6,128,148,5,0,30,0,1,255,255,255,255,255,8,5,1,28,7,68,1,7,79,65,255,253,0,0,0,1,7,0
	.byte 8,2,84,2,10,255,253,0,0,0,2,105,1,1,134,169,2,84,5,7,79,13,2,17,2,14,2,17,2,37,1,2
	.byte 129,161,2,5,255,253,0,0,0,3,219,0,0,1,1,188,81,1,126,5,255,253,0,0,0,3,219,0,0,2,1,188
	.byte 82,1,126,5,193,0,58,72,5,193,0,15,51,5,255,253,0,0,0,3,219,0,0,4,1,188,67,1,126,6,129,5
	.byte 6,129,21,6,128,162,3,194,0,0,153,3,194,0,21,24,6,129,40,3,255,253,0,0,0,2,105,1,1,134,169,2
	.byte 84,5,0,19,0,1,0,1,9,5,1,28,7,128,225,1,7,128,233,4,1,9,128,239,4,2,7,3,128,239,33,128
	.byte 243,148,6,7,128,248,3,255,252,0,0,0,17,2,3,255,253,0,0,0,7,128,248,3,11,1,128,239,6,128,170,6
	.byte 128,135,6,111,3,255,253,0,0,0,7,128,248,3,13,1,128,239,3,255,253,0,0,0,7,128,248,3,12,1,128,239
	.byte 47,0,5,1,2,4,130,64,129,0,129,224,129,228,0,12,129,128,0,4,129,140,0,4,129,144,0,12,129,208,0,4
	.byte 129,220,2,1,8,16,0,11,8,16,0,11,255,253,0,0,0,1,7,0,8,2,84,0,0,60,0,168,1,10,24,10
	.byte 104,8,24,16,32,8,24,16,40,2,8,6,16,12,72,2,0,4,72,12,72,10,16,30,40,4,16,6,16,4,64,12
	.byte 80,4,16,4,136,1,6,24,12,72,0,0,2,16,8,24,12,32,20,64,6,16,128,235,130,132,84,130,140,0,114,0
	.byte 84,1,0,0,0,1,4,0,4,3,4,0,52,5,0,1,4,0,4,3,4,0,0,1,4,2,4,0,4,0,4,5
	.byte 0,1,4,0,4,3,4,0,0,1,4,2,4,0,4,0,4,0,4,5,0,1,4,1,0,0,4,2,4,1,0,0
	.byte 4,0,0,0,4,0,16,0,12,6,0,0,0,2,36,1,4,0,4,0,0,0,4,0,16,0,8,5,0,0,0,0
	.byte 4,0,4,15,8,0,4,0,8,5,0,0,4,2,4,2,0,0,4,1,4,0,4,0,4,0,8,0,4,0,4,0
	.byte 4,2,4,1,4,0,4,0,0,0,4,0,16,0,8,0,4,5,0,0,4,2,4,0,4,0,4,0,8,0,4,0
	.byte 4,0,4,2,40,1,4,0,4,2,4,1,4,0,4,0,0,0,4,0,16,0,8,5,0,0,0,1,8,1,0,0
	.byte 0,1,4,0,4,2,4,1,4,0,4,0,4,0,4,10,0,0,4,0,0,0,4,0,16,5,8,2,0,0,4,1
	.byte 4,1,0,11,36,2,1,0,12,0,13,0,12,0,13,255,253,0,0,0,7,128,243,0,17,1,128,239,0,0,9,12
	.byte 96,44,144,1,12,80,10,96,93,128,208,48,129,4,0,39,6,48,3,12,0,4,14,4,0,0,0,8,0,8,0,4
	.byte 0,4,0,16,0,8,0,4,5,0,1,12,0,4,0,4,0,4,0,4,0,4,0,8,5,0,0,0,0,4,0,8
	.byte 0,4,0,4,0,16,0,8,0,4,5,0,255,255,255,255,229,8,0,16,0,4,0,4,5,4,0,8,5,4,0,4
	.byte 18,255,255,255,255,204,11,62,2,1,0,12,0,13,4,12,0,13,255,253,0,0,0,7,128,243,0,18,1,128,239,0
	.byte 0,12,0,104,26,56,4,16,22,56,2,8,2,8,54,124,52,128,132,0,24,0,52,1,4,0,0,7,4,0,4,0
	.byte 4,0,4,0,0,0,4,0,4,5,0,0,4,2,4,1,4,0,0,5,4,0,4,0,4,0,12,5,0,0,0,1
	.byte 4,1,4,1,0,11,84,2,1,0,12,0,13,0,12,0,13,255,253,0,0,0,7,128,243,0,19,1,128,239,0,0
	.byte 4,0,96,24,48,23,72,48,80,0,9,0,48,1,4,0,0,6,4,0,8,0,4,0,0,5,4,1,0,0,128,144
	.byte 8,0,0,1,7,128,144,8,0,0,1,193,0,1,181,193,0,1,180,193,0,2,165,193,0,2,164,193,0,1,185,193
	.byte 0,1,184,193,0,1,183,7,128,160,12,0,0,4,193,0,1,181,193,0,1,180,193,0,2,165,193,0,2,164,193,0
	.byte 1,185,193,0,1,184,193,0,1,183,7,128,128,9,0,0,1,193,0,1,181,193,0,1,180,193,0,2,165,193,0,2
	.byte 164,193,0,1,185,193,0,1,184,193,0,1,183,4,128,144,8,0,0,1,193,0,2,169,193,0,2,166,193,0,2,165
	.byte 193,0,2,164,4,128,144,8,0,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,144,8,0
	.byte 0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,160,48,0,0,8,193,0,2,169,193,0,2
	.byte 166,193,0,2,165,193,0,2,164,255,255,255,255,255,4,128,156,20,8,0,0,1,193,0,2,169,193,0,2,166,193,0
	.byte 2,165,193,0,2,164,4,128,132,22,8,128,160,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4
	.byte 128,132,24,8,128,144,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,132,26,8,145,244,0
	.byte 1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,132,28,8,12,0,1,193,0,2,169,193,0,2
	.byte 166,193,0,2,165,193,0,2,164,4,128,132,30,8,137,116,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0
	.byte 2,164,4,128,132,32,8,137,60,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,132,34,8
	.byte 130,88,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,132,36,8,136,24,0,1,193,0,2
	.byte 169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,132,38,8,128,216,0,1,193,0,2,169,193,0,2,166,193,0
	.byte 2,165,193,0,2,164,4,128,132,40,8,44,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128
	.byte 132,42,8,130,32,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,132,44,8,8,0,1,193
	.byte 0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,132,46,8,4,0,1,193,0,2,169,193,0,2,166,193
	.byte 0,2,165,193,0,2,164,4,128,132,48,8,130,8,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164
	.byte 4,128,132,50,8,144,192,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,196,52,8,159,212
	.byte 0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,132,54,8,28,0,1,193,0,2,169,193,0
	.byte 2,166,193,0,2,165,193,0,2,164,255,255,255,255,255,12,128,228,76,56,20,0,8,193,0,2,169,193,0,2,166,193
	.byte 0,2,165,193,0,2,164,194,0,1,59,194,0,1,60,194,0,1,87,194,0,1,84,194,0,1,83,194,0,1,80,194
	.byte 0,1,79,194,0,1,78,4,128,144,48,0,0,8,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,23,128
	.byte 144,12,0,0,4,193,0,2,50,193,0,2,49,193,0,2,51,193,0,2,164,193,0,2,52,193,0,2,53,193,0,2
	.byte 56,193,0,2,57,193,0,2,58,193,0,2,59,193,0,2,60,193,0,2,61,193,0,2,62,193,0,2,63,193,0,2
	.byte 64,193,0,2,65,193,0,2,66,193,0,2,67,193,0,2,68,193,0,2,69,193,0,2,70,193,0,2,55,193,0,2
	.byte 71,4,128,236,126,120,4,0,8,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,196,127,8,4,0
	.byte 1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,144,24,0,0,8,193,0,6,94,193,0,6,93
	.byte 193,0,6,95,193,0,2,164,255,255,255,255,255,13,128,160,36,0,0,4,193,0,2,169,193,0,2,166,193,0,2,165
	.byte 193,0,2,164,194,0,1,59,194,0,1,60,194,0,1,87,194,0,1,84,194,0,1,83,194,0,1,80,194,0,1,79
	.byte 194,0,1,78,0,13,128,160,36,0,0,4,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,194,0,1,59
	.byte 194,0,1,60,194,0,1,87,194,0,1,84,194,0,1,83,194,0,1,80,194,0,1,79,194,0,1,78,128,139,13,128
	.byte 160,36,0,0,4,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,194,0,1,59,194,0,1,60,194,0,1
	.byte 87,194,0,1,84,194,0,1,83,194,0,1,80,194,0,1,79,194,0,1,78,128,141,13,128,228,128,149,36,4,0,4
	.byte 193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,194,0,1,59,194,0,1,60,194,0,1,87,194,0,1,84
	.byte 194,0,1,83,194,0,1,80,194,0,1,79,194,0,1,78,128,147,13,128,228,128,156,36,4,0,4,193,0,2,169,193
	.byte 0,2,166,193,0,2,165,193,0,2,164,194,0,1,59,194,0,1,60,194,0,1,87,194,0,1,84,194,0,1,83,194
	.byte 0,1,80,194,0,1,79,194,0,1,78,128,154,13,128,228,128,163,44,4,0,4,193,0,2,169,193,0,2,166,193,0
	.byte 2,165,193,0,2,164,194,0,1,59,194,0,1,60,194,0,1,87,194,0,1,84,194,0,1,83,194,0,1,80,194,0
	.byte 1,79,194,0,1,78,128,161,255,255,255,255,255,12,128,236,128,213,96,72,0,8,193,0,2,169,193,0,2,166,193,0
	.byte 2,165,193,0,2,164,194,0,1,59,194,0,1,60,194,0,1,87,194,0,1,84,194,0,1,83,194,0,1,80,194,0
	.byte 1,79,194,0,1,78,4,128,196,128,218,8,4,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,255
	.byte 255,255,255,255,128,198,128,236,128,240,129,144,12,0,8,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,194
	.byte 0,1,59,194,0,1,60,194,0,1,87,194,0,5,236,194,0,5,233,194,0,1,80,194,0,5,227,194,0,12,219,194
	.byte 0,5,197,194,0,5,198,194,0,5,196,194,0,5,201,194,0,5,208,194,0,5,209,194,0,5,210,194,0,5,202,194
	.byte 0,5,203,194,0,5,207,194,0,5,204,194,0,5,206,194,0,5,187,194,0,5,193,194,0,5,229,194,0,38,22,194
	.byte 0,5,222,194,0,6,3,194,0,6,2,194,0,6,4,194,0,22,117,194,0,6,0,194,0,13,19,194,0,13,20,194
	.byte 0,6,11,194,0,6,24,194,0,6,25,194,0,6,26,194,0,12,192,194,0,12,191,194,0,6,20,194,0,6,19,194
	.byte 0,5,255,194,0,5,254,194,0,5,253,194,0,5,252,194,0,12,79,194,0,5,234,194,0,13,181,194,0,5,231,194
	.byte 0,22,119,194,0,12,85,194,0,13,160,194,0,5,186,194,0,38,17,194,0,5,176,194,0,22,118,194,0,22,111,194
	.byte 0,5,176,194,0,13,5,194,0,12,195,194,0,12,196,194,0,13,9,194,0,12,241,194,0,12,242,194,0,13,80,194
	.byte 0,13,3,194,0,13,4,194,0,13,8,194,0,13,93,194,0,12,240,194,0,12,235,194,0,12,236,194,0,13,12,194
	.byte 0,13,14,194,0,13,16,194,0,13,13,194,0,13,15,194,0,13,17,194,0,12,189,194,0,12,248,194,0,12,246,194
	.byte 0,12,237,194,0,12,238,194,0,12,251,194,0,38,31,194,0,12,254,194,0,13,0,194,0,13,146,194,0,13,155,194
	.byte 0,13,78,194,0,13,107,194,0,13,109,194,0,13,101,194,0,13,103,194,0,13,105,194,0,13,95,194,0,13,97,194
	.byte 0,13,99,194,0,13,63,194,0,13,65,194,0,13,138,194,0,13,139,194,0,13,143,194,0,13,174,194,0,13,122,194
	.byte 0,13,126,194,0,13,127,194,0,13,58,194,0,13,128,194,0,13,129,194,0,13,130,194,0,13,131,194,0,13,134,194
	.byte 0,13,135,194,0,22,118,194,0,13,166,194,0,13,167,194,0,13,170,194,0,13,171,194,0,13,140,194,0,13,141,194
	.byte 0,13,142,194,0,22,111,194,0,13,55,194,0,13,56,194,0,13,112,194,0,13,196,194,0,13,197,194,0,13,45,194
	.byte 0,13,46,194,0,13,42,194,0,13,60,194,0,13,61,194,0,13,199,194,0,12,210,194,0,38,39,194,0,13,179,194
	.byte 0,13,178,194,0,13,173,194,0,12,78,194,0,38,33,194,0,12,77,194,0,13,158,194,0,38,23,194,0,13,84,194
	.byte 0,13,83,194,0,13,69,194,0,13,67,194,0,13,10,194,0,12,67,194,0,38,45,194,0,12,69,194,0,12,194,194
	.byte 0,12,198,194,0,12,199,194,0,12,200,194,0,12,201,194,0,12,197,194,0,12,212,194,0,12,209,194,0,12,208,194
	.byte 0,12,212,194,0,38,18,194,0,38,19,194,0,38,20,194,0,38,9,194,0,38,14,194,0,38,13,194,0,38,48,194
	.byte 0,38,47,194,0,38,38,194,0,38,35,194,0,38,34,194,0,38,30,194,0,12,76,194,0,38,27,194,0,12,65,194
	.byte 0,12,66,194,0,12,68,194,0,12,70,194,0,38,9,194,0,12,71,194,0,12,72,194,0,12,73,194,0,12,74,194
	.byte 0,12,75,194,0,12,80,194,0,12,82,194,0,12,87,129,71,194,0,12,81,129,63,129,62,128,233,128,232,4,128,196
	.byte 128,242,8,4,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,60,128,236,128,251,128,148,4,0,4
	.byte 193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,194,0,1,59,194,0,1,60,194,0,1,87,194,0,5,236
	.byte 194,0,5,233,194,0,1,80,194,0,5,227,194,0,5,223,194,0,5,197,194,0,5,198,194,0,5,196,194,0,5,201
	.byte 194,0,5,208,194,0,5,209,194,0,5,210,194,0,5,202,194,0,5,203,194,0,5,207,194,0,5,204,194,0,5,206
	.byte 194,0,5,187,194,0,5,193,194,0,5,229,194,0,5,221,194,0,5,222,194,0,6,3,194,0,6,2,194,0,6,4
	.byte 194,0,6,1,194,0,6,0,194,0,6,13,194,0,6,14,194,0,6,11,194,0,6,24,194,0,6,25,194,0,6,26
	.byte 194,0,6,22,194,0,6,21,194,0,6,20,194,0,6,19,194,0,5,255,194,0,5,254,194,0,5,253,194,0,5,252
	.byte 194,0,5,239,194,0,5,234,194,0,5,232,194,0,5,231,194,0,5,226,194,0,5,225,194,0,5,224,194,0,5,186
	.byte 194,0,5,184,194,0,5,176,128,248,128,247,6,128,160,24,0,0,4,193,0,6,94,193,0,6,93,193,0,6,95,193
	.byte 0,2,164,128,252,128,253,6,128,160,28,0,0,4,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,128,254
	.byte 128,255,60,128,160,128,148,0,0,4,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,194,0,1,59,194,0
	.byte 1,60,194,0,1,87,194,0,5,236,194,0,5,233,194,0,1,80,194,0,5,227,194,0,5,223,194,0,5,197,194,0
	.byte 5,198,194,0,5,196,194,0,5,201,194,0,5,208,194,0,5,209,194,0,5,210,194,0,5,202,194,0,5,203,194,0
	.byte 5,207,194,0,5,204,194,0,5,206,194,0,5,187,194,0,5,193,194,0,5,229,194,0,5,221,194,0,5,222,194,0
	.byte 6,3,194,0,6,2,194,0,6,4,194,0,6,1,194,0,6,0,194,0,6,13,194,0,6,14,194,0,6,11,194,0
	.byte 6,24,194,0,6,25,194,0,6,26,194,0,6,22,194,0,6,21,194,0,6,20,194,0,6,19,194,0,5,255,194,0
	.byte 5,254,194,0,5,253,194,0,5,252,194,0,5,239,194,0,5,234,194,0,5,232,194,0,5,231,194,0,5,226,194,0
	.byte 5,225,194,0,5,224,194,0,5,186,194,0,5,184,194,0,5,176,129,1,129,0,23,128,144,12,0,0,4,193,0,2
	.byte 50,193,0,2,49,193,0,2,51,193,0,2,164,193,0,2,52,193,0,2,53,193,0,2,56,193,0,2,57,193,0,2
	.byte 58,193,0,2,59,193,0,2,60,193,0,2,61,193,0,2,62,193,0,2,63,193,0,2,64,193,0,2,65,193,0,2
	.byte 66,193,0,2,67,193,0,2,68,193,0,2,69,193,0,2,70,193,0,2,55,193,0,2,71,128,198,128,236,129,32,129
	.byte 168,32,0,8,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,194,0,1,59,194,0,1,60,194,0,1,87
	.byte 194,0,5,236,194,0,5,233,194,0,1,80,194,0,5,227,194,0,12,219,194,0,5,197,194,0,5,198,194,0,5,196
	.byte 194,0,5,201,194,0,5,208,194,0,5,209,194,0,5,210,194,0,5,202,194,0,5,203,194,0,5,207,194,0,5,204
	.byte 194,0,5,206,194,0,5,187,194,0,5,193,194,0,5,229,194,0,38,22,194,0,5,222,194,0,6,3,194,0,6,2
	.byte 194,0,6,4,194,0,22,117,194,0,6,0,194,0,13,19,194,0,13,20,194,0,6,11,194,0,6,24,194,0,6,25
	.byte 194,0,6,26,194,0,12,192,194,0,12,191,194,0,6,20,194,0,6,19,194,0,5,255,194,0,5,254,194,0,5,253
	.byte 194,0,5,252,194,0,12,79,194,0,5,234,194,0,13,181,194,0,5,231,194,0,22,119,194,0,12,85,194,0,13,160
	.byte 194,0,5,186,194,0,38,17,194,0,5,176,194,0,22,118,194,0,22,111,194,0,5,176,194,0,13,5,194,0,12,195
	.byte 194,0,12,196,194,0,13,9,194,0,12,241,194,0,12,242,194,0,13,80,194,0,13,3,194,0,13,4,194,0,13,8
	.byte 194,0,13,93,194,0,12,240,194,0,12,235,194,0,12,236,194,0,13,12,194,0,13,14,194,0,13,16,194,0,13,13
	.byte 194,0,13,15,194,0,13,17,194,0,12,189,194,0,12,248,194,0,12,246,194,0,12,237,194,0,12,238,194,0,12,251
	.byte 194,0,38,31,194,0,12,254,194,0,13,0,194,0,13,146,194,0,13,155,194,0,13,78,194,0,13,107,194,0,13,109
	.byte 194,0,13,101,194,0,13,103,194,0,13,105,194,0,13,95,194,0,13,97,194,0,13,99,194,0,13,63,194,0,13,65
	.byte 194,0,13,138,194,0,13,139,194,0,13,143,194,0,13,174,194,0,13,122,194,0,13,126,194,0,13,127,194,0,13,58
	.byte 194,0,13,128,194,0,13,129,194,0,13,130,194,0,13,131,194,0,13,134,194,0,13,135,194,0,22,118,194,0,13,166
	.byte 194,0,13,167,194,0,13,170,194,0,13,171,194,0,13,140,194,0,13,141,194,0,13,142,194,0,22,111,194,0,13,55
	.byte 194,0,13,56,194,0,13,112,194,0,13,196,194,0,13,197,194,0,13,45,194,0,13,46,194,0,13,42,194,0,13,60
	.byte 194,0,13,61,194,0,13,199,194,0,12,210,194,0,38,39,194,0,13,179,194,0,13,178,194,0,13,173,194,0,12,78
	.byte 194,0,38,33,194,0,12,77,194,0,13,158,194,0,38,23,194,0,13,84,194,0,13,83,194,0,13,69,194,0,13,67
	.byte 194,0,13,10,194,0,12,67,194,0,38,45,194,0,12,69,194,0,12,194,194,0,12,198,194,0,12,199,194,0,12,200
	.byte 194,0,12,201,194,0,12,197,194,0,12,212,194,0,12,209,194,0,12,208,194,0,12,212,194,0,38,18,194,0,38,19
	.byte 194,0,38,20,194,0,38,9,194,0,38,14,194,0,38,13,194,0,38,48,194,0,38,47,194,0,38,38,194,0,38,35
	.byte 194,0,38,34,194,0,38,30,194,0,12,76,194,0,38,27,194,0,12,65,194,0,12,66,194,0,12,68,194,0,12,70
	.byte 194,0,38,9,194,0,12,71,194,0,12,72,194,0,12,73,194,0,12,74,194,0,12,75,194,0,12,80,194,0,12,82
	.byte 194,0,12,87,129,71,194,0,12,81,129,63,129,62,129,26,129,25,4,128,160,20,0,0,4,193,0,2,169,193,0,2
	.byte 166,193,0,2,165,193,0,2,164,6,128,160,36,0,0,4,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164
	.byte 129,36,129,37,6,128,160,32,0,0,4,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,129,38,129,39,6
	.byte 128,160,36,0,0,4,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,129,40,129,41,60,128,236,129,47,128
	.byte 148,4,0,4,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,194,0,1,59,194,0,1,60,194,0,1,87
	.byte 194,0,5,236,194,0,5,233,194,0,1,80,194,0,5,227,194,0,5,223,194,0,5,197,194,0,5,198,194,0,5,196
	.byte 194,0,5,201,194,0,5,208,194,0,5,209,194,0,5,210,194,0,5,202,194,0,5,203,194,0,5,207,194,0,5,204
	.byte 194,0,5,206,194,0,5,187,194,0,5,193,194,0,5,229,194,0,5,221,194,0,5,222,194,0,6,3,194,0,6,2
	.byte 194,0,6,4,194,0,6,1,194,0,6,0,194,0,6,13,194,0,6,14,194,0,6,11,194,0,6,24,194,0,6,25
	.byte 194,0,6,26,194,0,6,22,194,0,6,21,194,0,6,20,194,0,6,19,194,0,5,255,194,0,5,254,194,0,5,253
	.byte 194,0,5,252,194,0,5,239,194,0,5,234,194,0,5,232,194,0,5,231,194,0,5,226,194,0,5,225,194,0,5,224
	.byte 194,0,5,186,194,0,5,184,194,0,5,176,129,45,129,44,6,128,160,32,0,0,4,193,0,6,94,193,0,6,93,193
	.byte 0,6,95,193,0,2,164,129,48,129,49,60,128,236,129,55,128,148,4,0,4,193,0,2,169,193,0,2,166,193,0,2
	.byte 165,193,0,2,164,194,0,1,59,194,0,1,60,194,0,1,87,194,0,5,236,194,0,5,233,194,0,1,80,194,0,5
	.byte 227,194,0,5,223,194,0,5,197,194,0,5,198,194,0,5,196,194,0,5,201,194,0,5,208,194,0,5,209,194,0,5
	.byte 210,194,0,5,202,194,0,5,203,194,0,5,207,194,0,5,204,194,0,5,206,194,0,5,187,194,0,5,193,194,0,5
	.byte 229,194,0,5,221,194,0,5,222,194,0,6,3,194,0,6,2,194,0,6,4,194,0,6,1,194,0,6,0,194,0,6
	.byte 13,194,0,6,14,194,0,6,11,194,0,6,24,194,0,6,25,194,0,6,26,194,0,6,22,194,0,6,21,194,0,6
	.byte 20,194,0,6,19,194,0,5,255,194,0,5,254,194,0,5,253,194,0,5,252,194,0,5,239,194,0,5,234,194,0,5
	.byte 232,194,0,5,231,194,0,5,226,194,0,5,225,194,0,5,224,194,0,5,186,194,0,5,184,194,0,5,176,129,53,129
	.byte 52,6,128,160,48,0,0,4,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,129,56,129,57,128,198,128,228
	.byte 129,68,129,144,4,0,8,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,194,0,1,59,194,0,1,60,194
	.byte 0,1,87,194,0,5,236,194,0,5,233,194,0,1,80,194,0,5,227,194,0,12,219,194,0,5,197,194,0,5,198,194
	.byte 0,5,196,194,0,5,201,194,0,5,208,194,0,5,209,194,0,5,210,194,0,5,202,194,0,5,203,194,0,5,207,194
	.byte 0,5,204,194,0,5,206,194,0,5,187,194,0,5,193,194,0,5,229,194,0,38,22,194,0,5,222,194,0,6,3,194
	.byte 0,6,2,194,0,6,4,194,0,22,117,194,0,6,0,194,0,13,19,194,0,13,20,194,0,6,11,194,0,6,24,194
	.byte 0,6,25,194,0,6,26,194,0,12,192,194,0,12,191,194,0,6,20,194,0,6,19,194,0,5,255,194,0,5,254,194
	.byte 0,5,253,194,0,5,252,194,0,12,79,194,0,5,234,194,0,13,181,194,0,5,231,194,0,22,119,194,0,12,85,194
	.byte 0,13,160,194,0,5,186,194,0,38,17,194,0,5,176,194,0,22,118,194,0,22,111,194,0,5,176,194,0,13,5,194
	.byte 0,12,195,194,0,12,196,194,0,13,9,194,0,12,241,194,0,12,242,194,0,13,80,194,0,13,3,194,0,13,4,194
	.byte 0,13,8,194,0,13,93,194,0,12,240,194,0,12,235,194,0,12,236,194,0,13,12,194,0,13,14,194,0,13,16,194
	.byte 0,13,13,194,0,13,15,194,0,13,17,194,0,12,189,194,0,12,248,194,0,12,246,194,0,12,237,194,0,12,238,194
	.byte 0,12,251,194,0,38,31,194,0,12,254,194,0,13,0,194,0,13,146,194,0,13,155,194,0,13,78,194,0,13,107,194
	.byte 0,13,109,194,0,13,101,194,0,13,103,194,0,13,105,194,0,13,95,194,0,13,97,194,0,13,99,194,0,13,63,194
	.byte 0,13,65,194,0,13,138,194,0,13,139,194,0,13,143,194,0,13,174,194,0,13,122,194,0,13,126,194,0,13,127,194
	.byte 0,13,58,194,0,13,128,194,0,13,129,194,0,13,130,194,0,13,131,194,0,13,134,194,0,13,135,194,0,22,118,194
	.byte 0,13,166,194,0,13,167,194,0,13,170,194,0,13,171,194,0,13,140,194,0,13,141,194,0,13,142,194,0,22,111,194
	.byte 0,13,55,194,0,13,56,194,0,13,112,194,0,13,196,194,0,13,197,194,0,13,45,194,0,13,46,194,0,13,42,194
	.byte 0,13,60,194,0,13,61,194,0,13,199,194,0,12,210,194,0,38,39,194,0,13,179,194,0,13,178,194,0,13,173,194
	.byte 0,12,78,194,0,38,33,194,0,12,77,194,0,13,158,194,0,38,23,194,0,13,84,194,0,13,83,194,0,13,69,194
	.byte 0,13,67,194,0,13,10,194,0,12,67,194,0,38,45,194,0,12,69,194,0,12,194,194,0,12,198,194,0,12,199,194
	.byte 0,12,200,194,0,12,201,194,0,12,197,194,0,12,212,194,0,12,209,194,0,12,208,194,0,12,212,194,0,38,18,194
	.byte 0,38,19,194,0,38,20,194,0,38,9,194,0,38,14,194,0,38,13,194,0,38,48,194,0,38,47,194,0,38,38,194
	.byte 0,38,35,194,0,38,34,194,0,38,30,194,0,12,76,194,0,38,27,194,0,12,65,194,0,12,66,194,0,12,68,194
	.byte 0,12,70,194,0,38,9,194,0,12,71,194,0,12,72,194,0,12,73,194,0,12,74,194,0,12,75,194,0,12,80,194
	.byte 0,12,82,194,0,12,87,129,71,194,0,12,81,129,63,129,62,129,72,129,61,128,197,128,160,129,136,0,0,8,193,0
	.byte 2,169,193,0,2,166,193,0,2,165,193,0,2,164,194,0,1,59,194,0,1,60,194,0,1,87,194,0,5,236,194,0
	.byte 5,233,194,0,1,80,194,0,5,227,194,0,12,219,194,0,5,197,194,0,5,198,194,0,5,196,194,0,5,201,194,0
	.byte 5,208,194,0,5,209,194,0,5,210,194,0,5,202,194,0,5,203,194,0,5,207,194,0,5,204,194,0,5,206,194,0
	.byte 5,187,194,0,5,193,194,0,5,229,194,0,38,22,194,0,5,222,194,0,6,3,194,0,6,2,194,0,6,4,194,0
	.byte 22,117,194,0,6,0,194,0,13,19,194,0,13,20,194,0,6,11,194,0,6,24,194,0,6,25,194,0,6,26,194,0
	.byte 12,192,194,0,12,191,194,0,6,20,194,0,6,19,194,0,5,255,194,0,5,254,194,0,5,253,194,0,5,252,194,0
	.byte 12,79,194,0,5,234,194,0,13,181,194,0,5,231,194,0,22,119,194,0,12,85,194,0,13,160,194,0,5,186,194,0
	.byte 38,17,194,0,5,176,194,0,22,118,194,0,22,111,194,0,5,176,194,0,13,5,194,0,12,195,194,0,12,196,194,0
	.byte 13,9,194,0,12,241,194,0,12,242,194,0,13,80,194,0,13,3,194,0,13,4,194,0,13,8,194,0,13,93,194,0
	.byte 12,240,194,0,12,235,194,0,12,236,194,0,13,12,194,0,13,14,194,0,13,16,194,0,13,13,194,0,13,15,194,0
	.byte 13,17,194,0,12,189,194,0,12,248,194,0,12,246,194,0,12,237,194,0,12,238,194,0,12,251,194,0,38,31,194,0
	.byte 12,254,194,0,13,0,194,0,13,146,194,0,13,155,194,0,13,78,194,0,13,107,194,0,13,109,194,0,13,101,194,0
	.byte 13,103,194,0,13,105,194,0,13,95,194,0,13,97,194,0,13,99,194,0,13,63,194,0,13,65,194,0,13,138,194,0
	.byte 13,139,194,0,13,143,194,0,13,174,194,0,13,122,194,0,13,126,194,0,13,127,194,0,13,58,194,0,13,128,194,0
	.byte 13,129,194,0,13,130,194,0,13,131,194,0,13,134,194,0,13,135,194,0,22,118,194,0,13,166,194,0,13,167,194,0
	.byte 13,170,194,0,13,171,194,0,13,140,194,0,13,141,194,0,13,142,194,0,22,111,194,0,13,55,194,0,13,56,194,0
	.byte 13,112,194,0,13,196,194,0,13,197,194,0,13,45,194,0,13,46,194,0,13,42,194,0,13,60,194,0,13,61,194,0
	.byte 13,199,194,0,12,210,194,0,38,39,194,0,13,179,194,0,13,178,194,0,13,173,194,0,12,78,194,0,38,33,194,0
	.byte 12,77,194,0,13,158,194,0,38,23,194,0,13,84,194,0,13,83,194,0,13,69,194,0,13,67,194,0,13,10,194,0
	.byte 12,67,194,0,38,45,194,0,12,69,194,0,12,194,194,0,12,198,194,0,12,199,194,0,12,200,194,0,12,201,194,0
	.byte 12,197,194,0,12,212,194,0,12,209,194,0,12,208,194,0,12,212,194,0,38,18,194,0,38,19,194,0,38,20,194,0
	.byte 38,9,194,0,38,14,194,0,38,13,194,0,38,48,194,0,38,47,194,0,38,38,194,0,38,35,194,0,38,34,194,0
	.byte 38,30,194,0,12,76,194,0,38,27,194,0,12,65,194,0,12,66,194,0,12,68,194,0,12,70,194,0,38,9,194,0
	.byte 12,71,194,0,12,72,194,0,12,73,194,0,12,74,194,0,12,75,194,0,12,80,194,0,12,82,194,0,12,87,129,71
	.byte 194,0,12,81,129,77,129,76,129,72,24,128,168,36,1,0,4,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2
	.byte 164,194,0,21,47,194,0,21,50,194,0,21,51,194,0,21,45,194,0,21,44,194,0,21,39,194,0,21,40,194,0,21
	.byte 41,194,0,21,43,194,0,21,38,194,0,21,37,194,0,21,42,194,0,21,47,194,0,21,34,194,0,21,35,194,0,21
	.byte 30,194,0,21,31,194,0,21,32,194,0,21,33,194,0,21,36,4,128,160,16,0,0,4,193,0,2,169,193,0,2,166
	.byte 193,0,2,165,193,0,2,164,24,128,168,36,1,0,4,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,194
	.byte 0,21,47,194,0,21,50,194,0,21,51,194,0,21,45,194,0,21,44,194,0,21,39,194,0,21,40,194,0,21,41,194
	.byte 0,21,43,194,0,21,38,194,0,21,37,194,0,21,42,194,0,21,47,194,0,21,34,194,0,21,35,194,0,21,30,194
	.byte 0,21,31,194,0,21,32,194,0,21,33,194,0,21,36,4,128,160,16,0,0,4,193,0,2,169,193,0,2,166,193,0
	.byte 2,165,193,0,2,164,13,128,144,8,0,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,196,0,0
	.byte 255,196,0,0,254,196,0,0,253,129,92,129,91,129,90,129,89,129,94,0,13,128,144,8,0,0,1,193,0,2,169,193
	.byte 0,2,166,193,0,2,165,193,0,2,164,196,0,0,255,196,0,0,254,196,0,0,253,129,92,129,91,129,90,129,89,129
	.byte 94,129,95,13,128,144,8,0,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,196,0,0,255,196,0
	.byte 0,254,196,0,0,253,129,92,129,91,129,90,129,89,129,94,129,97,13,128,144,8,0,0,1,193,0,2,169,193,0,2
	.byte 166,193,0,2,165,193,0,2,164,196,0,0,255,196,0,0,254,196,0,0,253,129,92,129,91,129,90,129,89,129,94,129
	.byte 99,13,128,144,8,0,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,196,0,0,255,196,0,0,254
	.byte 196,0,0,253,129,92,129,91,129,90,129,89,129,102,129,101,4,128,136,8,155,248,0,1,193,0,2,169,193,0,2,166
	.byte 193,0,2,165,193,0,2,164,4,128,144,20,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4
	.byte 128,144,24,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,28,0,1,1,193,0,6
	.byte 94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,32,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95
	.byte 193,0,2,164,4,128,144,36,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,40,0
	.byte 1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,44,0,1,1,193,0,6,94,193,0,6
	.byte 93,193,0,6,95,193,0,2,164,4,128,144,48,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164
	.byte 4,128,144,52,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,56,0,1,1,193,0
	.byte 6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,60,0,1,1,193,0,6,94,193,0,6,93,193,0,6
	.byte 95,193,0,2,164,4,128,144,64,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,68
	.byte 0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,72,0,1,1,193,0,6,94,193,0
	.byte 6,93,193,0,6,95,193,0,2,164,4,128,144,76,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2
	.byte 164,4,128,144,84,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,92,0,1,1,193
	.byte 0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,96,0,1,1,193,0,6,94,193,0,6,93,193,0
	.byte 6,95,193,0,2,164,4,128,144,100,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144
	.byte 108,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,112,0,1,1,193,0,6,94,193
	.byte 0,6,93,193,0,6,95,193,0,2,164,4,128,144,124,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0
	.byte 2,164,4,128,144,128,128,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,128,148,0
	.byte 1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,128,176,0,1,1,193,0,6,94,193,0
	.byte 6,93,193,0,6,95,193,0,2,164,4,128,144,129,20,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0
	.byte 2,164,4,128,144,129,56,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,129,184,0
	.byte 1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,129,212,0,1,1,193,0,6,94,193,0
	.byte 6,93,193,0,6,95,193,0,2,164,4,128,144,129,240,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0
	.byte 2,164,4,128,144,129,248,0,1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,130,4,0
	.byte 1,1,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,115,103,101,110,0
.text 1
runtime_version:
	.string ""
.text 1
assembly_guid:
	.string "3F8F8E89-96D7-4D83-BAFF-66AAD2FFB3E6"
.text 1
assembly_name:
	.string "SkiaSharp.Extended.UI"
.data 0
	.align 3
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,#object

	.long 183,0
	.align 2
	.long mono_aot_SkiaSharp_Extended_UI_got
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long jit_code_start
	.align 2
	.long jit_code_end
	.align 2
	.long method_addresses
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long blob
	.align 2
	.long class_name_table
	.align 2
	.long class_info_offsets
	.align 2
	.long method_info_offsets
	.align 2
	.long ex_info_offsets
	.align 2
	.long extra_method_info_offsets
	.align 2
	.long extra_method_table
	.align 2
	.long got_info_offsets
	.align 2
	.long 0
	.align 2
	.long image_table
	.align 2
	.long weak_field_indexes
	.align 2
	.long method_flags_table
	.align 2
	.long mem_end
	.align 2
	.long assembly_guid
	.align 2
	.long runtime_version
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long assembly_name
	.align 2
	.long plt
	.align 2
	.long plt_end
	.align 2
	.long unwind_info
	.align 2
	.long unbox_trampolines
	.align 2
	.long unbox_trampolines_end
	.align 2
	.long unbox_trampoline_addresses

	.long 30,30,184,88,16,360,0,32
	.long 374417919,0,8050,128,8,8,7,9
	.long 0,0,8,22,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0
	.byte 109,88,60,166,189,99,25,57,18,133,67,42,117,234,69,109
.section ".debug_info"
.subsection 0
.LTDIE_2:

	.byte 17
	.string "System_Object"

	.byte 8,7
	.string "System_Object"

.LDIFF_SYM3=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM3
.LTDIE_2_POINTER:

	.byte 13
.LDIFF_SYM4=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM4
.LTDIE_2_REFERENCE:

	.byte 14
.LDIFF_SYM5=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM5
.LTDIE_1:

	.byte 5
	.string "System_ValueType"

	.byte 8,16
.LDIFF_SYM6=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM6
	.byte 2,35,0,0,7
	.string "System_ValueType"

.LDIFF_SYM7=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM7
.LTDIE_1_POINTER:

	.byte 13
.LDIFF_SYM8=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM8
.LTDIE_1_REFERENCE:

	.byte 14
.LDIFF_SYM9=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM9
.LTDIE_0:

	.byte 5
	.string "System_Boolean"

	.byte 9,16
.LDIFF_SYM10=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM10
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM11=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM11
	.byte 2,35,8,0,7
	.string "System_Boolean"

.LDIFF_SYM12=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM12
.LTDIE_0_POINTER:

	.byte 13
.LDIFF_SYM13=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM13
.LTDIE_0_REFERENCE:

	.byte 14
.LDIFF_SYM14=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM14
.LTDIE_3:

	.byte 17
	.string "System_Collections_Generic_ICollection`1"

	.byte 8,7
	.string "System_Collections_Generic_ICollection`1"

.LDIFF_SYM15=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM15
.LTDIE_3_POINTER:

	.byte 13
.LDIFF_SYM16=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM16
.LTDIE_3_REFERENCE:

	.byte 14
.LDIFF_SYM17=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM17
.LTDIE_4:

	.byte 17
	.string "System_Collections_Generic_IEnumerator`1"

	.byte 8,7
	.string "System_Collections_Generic_IEnumerator`1"

.LDIFF_SYM18=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM18
.LTDIE_4_POINTER:

	.byte 13
.LDIFF_SYM19=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM19
.LTDIE_4_REFERENCE:

	.byte 14
.LDIFF_SYM20=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM20
	.byte 2
	.string "SkiaSharp.Extended.UI.ResourceLoader:EnsureRegistered<T_REF>"
	.string "SkiaSharp_Extended_UI_ResourceLoader_EnsureRegistered_T_REF_bool_"

	.byte 0,0
	.string "SkiaSharp.Extended.UI.ResourceLoader:EnsureRegistered<T_REF>"
	.long .Lm_7
	.long .Lme_7

	.byte 2,118,16,3
	.string "registered"

.LDIFF_SYM21=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM21
	.byte 1,87,11
	.string "V_0"

.LDIFF_SYM22=.LTDIE_3_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM22
	.byte 1,86,11
	.string "V_1"

.LDIFF_SYM23=.LTDIE_4_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM23
	.byte 2,123,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM24=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM24
.Lfde0_start:

	.long 0
	.align 2
	.long .Lm_7

.LDIFF_SYM25=.Lme_7 - .Lm_7
	.long .LDIFF_SYM25
	.byte 68,14,24,133,6,134,5,135,4,136,3,139,2,142,1,68,14,48,68,13,11,3,120,2,10,68,13,13,14,24,68,11
	.align 2
.Lfde0_end:

.section ".debug_info"
.subsection 0
.LTDIE_13:

	.byte 5
	.string "System_Reflection_MemberInfo"

	.byte 8,16
.LDIFF_SYM26=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM26
	.byte 2,35,0,0,7
	.string "System_Reflection_MemberInfo"

.LDIFF_SYM27=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM27
.LTDIE_13_POINTER:

	.byte 13
.LDIFF_SYM28=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM28
.LTDIE_13_REFERENCE:

	.byte 14
.LDIFF_SYM29=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM29
.LTDIE_12:

	.byte 5
	.string "System_Reflection_MethodBase"

	.byte 8,16
.LDIFF_SYM30=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM30
	.byte 2,35,0,0,7
	.string "System_Reflection_MethodBase"

.LDIFF_SYM31=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM31
.LTDIE_12_POINTER:

	.byte 13
.LDIFF_SYM32=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM32
.LTDIE_12_REFERENCE:

	.byte 14
.LDIFF_SYM33=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM33
.LTDIE_11:

	.byte 5
	.string "System_Reflection_MethodInfo"

	.byte 8,16
.LDIFF_SYM34=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM34
	.byte 2,35,0,0,7
	.string "System_Reflection_MethodInfo"

.LDIFF_SYM35=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM35
.LTDIE_11_POINTER:

	.byte 13
.LDIFF_SYM36=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM36
.LTDIE_11_REFERENCE:

	.byte 14
.LDIFF_SYM37=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM37
.LTDIE_15:

	.byte 5
	.string "System_Type"

	.byte 12,16
.LDIFF_SYM38=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM38
	.byte 2,35,0,6
	.string "_impl"

.LDIFF_SYM39=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM39
	.byte 2,35,8,0,7
	.string "System_Type"

.LDIFF_SYM40=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM40
.LTDIE_15_POINTER:

	.byte 13
.LDIFF_SYM41=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM41
.LTDIE_15_REFERENCE:

	.byte 14
.LDIFF_SYM42=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM42
.LTDIE_14:

	.byte 5
	.string "System_DelegateData"

	.byte 20,16
.LDIFF_SYM43=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM43
	.byte 2,35,0,6
	.string "target_type"

.LDIFF_SYM44=.LTDIE_15_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM44
	.byte 2,35,8,6
	.string "method_name"

.LDIFF_SYM45=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM45
	.byte 2,35,12,6
	.string "curried_first_arg"

.LDIFF_SYM46=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM46
	.byte 2,35,16,0,7
	.string "System_DelegateData"

.LDIFF_SYM47=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM47
.LTDIE_14_POINTER:

	.byte 13
.LDIFF_SYM48=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM48
.LTDIE_14_REFERENCE:

	.byte 14
.LDIFF_SYM49=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM49
.LTDIE_10:

	.byte 5
	.string "System_Delegate"

	.byte 60,16
.LDIFF_SYM50=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM50
	.byte 2,35,0,6
	.string "method_ptr"

.LDIFF_SYM51=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM51
	.byte 2,35,8,6
	.string "invoke_impl"

.LDIFF_SYM52=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM52
	.byte 2,35,12,6
	.string "_target"

.LDIFF_SYM53=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM53
	.byte 2,35,16,6
	.string "method"

.LDIFF_SYM54=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM54
	.byte 2,35,20,6
	.string "delegate_trampoline"

.LDIFF_SYM55=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM55
	.byte 2,35,24,6
	.string "extra_arg"

.LDIFF_SYM56=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM56
	.byte 2,35,28,6
	.string "method_code"

.LDIFF_SYM57=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM57
	.byte 2,35,32,6
	.string "interp_method"

.LDIFF_SYM58=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM58
	.byte 2,35,36,6
	.string "interp_invoke_impl"

.LDIFF_SYM59=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM59
	.byte 2,35,40,6
	.string "method_info"

.LDIFF_SYM60=.LTDIE_11_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM60
	.byte 2,35,44,6
	.string "original_method_info"

.LDIFF_SYM61=.LTDIE_11_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM61
	.byte 2,35,48,6
	.string "data"

.LDIFF_SYM62=.LTDIE_14_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM62
	.byte 2,35,52,6
	.string "method_is_virtual"

.LDIFF_SYM63=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM63
	.byte 2,35,56,6
	.string "bound"

.LDIFF_SYM64=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM64
	.byte 2,35,57,0,7
	.string "System_Delegate"

.LDIFF_SYM65=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM65
.LTDIE_10_POINTER:

	.byte 13
.LDIFF_SYM66=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM66
.LTDIE_10_REFERENCE:

	.byte 14
.LDIFF_SYM67=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM67
.LTDIE_9:

	.byte 5
	.string "System_MulticastDelegate"

	.byte 64,16
.LDIFF_SYM68=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM68
	.byte 2,35,0,6
	.string "delegates"

.LDIFF_SYM69=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM69
	.byte 2,35,60,0,7
	.string "System_MulticastDelegate"

.LDIFF_SYM70=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM70
.LTDIE_9_POINTER:

	.byte 13
.LDIFF_SYM71=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM71
.LTDIE_9_REFERENCE:

	.byte 14
.LDIFF_SYM72=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM72
.LTDIE_8:

	.byte 5
	.string "System_Func`1"

	.byte 64,16
.LDIFF_SYM73=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM73
	.byte 2,35,0,0,7
	.string "System_Func`1"

.LDIFF_SYM74=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM74
.LTDIE_8_POINTER:

	.byte 13
.LDIFF_SYM75=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM75
.LTDIE_8_REFERENCE:

	.byte 14
.LDIFF_SYM76=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM76
.LTDIE_16:

	.byte 5
	.string "System_Int32"

	.byte 12,16
.LDIFF_SYM77=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM77
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM78=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM78
	.byte 2,35,8,0,7
	.string "System_Int32"

.LDIFF_SYM79=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM79
.LTDIE_16_POINTER:

	.byte 13
.LDIFF_SYM80=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM80
.LTDIE_16_REFERENCE:

	.byte 14
.LDIFF_SYM81=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM81
.LTDIE_18:

	.byte 5
	.string "_WorkStealingQueue"

	.byte 48,16
.LDIFF_SYM82=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM82
	.byte 2,35,0,6
	.string "_headIndex"

.LDIFF_SYM83=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM83
	.byte 2,35,16,6
	.string "_tailIndex"

.LDIFF_SYM84=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM84
	.byte 2,35,20,6
	.string "_array"

.LDIFF_SYM85=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM85
	.byte 2,35,8,6
	.string "_mask"

.LDIFF_SYM86=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM86
	.byte 2,35,24,6
	.string "_addTakeCount"

.LDIFF_SYM87=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM87
	.byte 2,35,28,6
	.string "_stealCount"

.LDIFF_SYM88=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM88
	.byte 2,35,32,6
	.string "_currentOp"

.LDIFF_SYM89=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM89
	.byte 2,35,36,6
	.string "_frozen"

.LDIFF_SYM90=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM90
	.byte 2,35,40,6
	.string "_nextQueue"

.LDIFF_SYM91=.LTDIE_18_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM91
	.byte 2,35,12,6
	.string "_ownerThreadId"

.LDIFF_SYM92=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM92
	.byte 2,35,44,0,7
	.string "_WorkStealingQueue"

.LDIFF_SYM93=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM93
.LTDIE_18_POINTER:

	.byte 13
.LDIFF_SYM94=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM94
.LTDIE_18_REFERENCE:

	.byte 14
.LDIFF_SYM95=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM95
.LTDIE_17:

	.byte 5
	.string "_LinkedSlot"

	.byte 24,16
.LDIFF_SYM96=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM96
	.byte 2,35,0,6
	.string "_next"

.LDIFF_SYM97=.LTDIE_17_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM97
	.byte 2,35,8,6
	.string "_previous"

.LDIFF_SYM98=.LTDIE_17_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM98
	.byte 2,35,12,6
	.string "_slotArray"

.LDIFF_SYM99=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM99
	.byte 2,35,16,6
	.string "_value"

.LDIFF_SYM100=.LTDIE_18_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM100
	.byte 2,35,20,0,7
	.string "_LinkedSlot"

.LDIFF_SYM101=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM101
.LTDIE_17_POINTER:

	.byte 13
.LDIFF_SYM102=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM102
.LTDIE_17_REFERENCE:

	.byte 14
.LDIFF_SYM103=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM103
.LTDIE_7:

	.byte 5
	.string "System_Threading_ThreadLocal`1"

	.byte 24,16
.LDIFF_SYM104=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM104
	.byte 2,35,0,6
	.string "_valueFactory"

.LDIFF_SYM105=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM105
	.byte 2,35,8,6
	.string "_idComplement"

.LDIFF_SYM106=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM106
	.byte 2,35,16,6
	.string "_initialized"

.LDIFF_SYM107=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM107
	.byte 2,35,20,6
	.string "_linkedSlot"

.LDIFF_SYM108=.LTDIE_17_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM108
	.byte 2,35,12,6
	.string "_trackAllValues"

.LDIFF_SYM109=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM109
	.byte 2,35,21,0,7
	.string "System_Threading_ThreadLocal`1"

.LDIFF_SYM110=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM110
.LTDIE_7_POINTER:

	.byte 13
.LDIFF_SYM111=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM111
.LTDIE_7_REFERENCE:

	.byte 14
.LDIFF_SYM112=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM112
.LTDIE_19:

	.byte 5
	.string "System_Int64"

	.byte 16,16
.LDIFF_SYM113=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM113
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM114=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM114
	.byte 2,35,8,0,7
	.string "System_Int64"

.LDIFF_SYM115=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM115
.LTDIE_19_POINTER:

	.byte 13
.LDIFF_SYM116=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM116
.LTDIE_19_REFERENCE:

	.byte 14
.LDIFF_SYM117=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM117
.LTDIE_6:

	.byte 5
	.string "System_Collections_Concurrent_ConcurrentBag`1"

	.byte 24,16
.LDIFF_SYM118=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM118
	.byte 2,35,0,6
	.string "_locals"

.LDIFF_SYM119=.LTDIE_7_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM119
	.byte 2,35,8,6
	.string "_workStealingQueues"

.LDIFF_SYM120=.LTDIE_18_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM120
	.byte 2,35,12,6
	.string "_emptyToNonEmptyListTransitionCount"

.LDIFF_SYM121=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM121
	.byte 2,35,16,0,7
	.string "System_Collections_Concurrent_ConcurrentBag`1"

.LDIFF_SYM122=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM122
.LTDIE_6_POINTER:

	.byte 13
.LDIFF_SYM123=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM123
.LTDIE_6_REFERENCE:

	.byte 14
.LDIFF_SYM124=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM124
.LTDIE_20:

	.byte 5
	.string "System_Func`1"

	.byte 64,16
.LDIFF_SYM125=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM125
	.byte 2,35,0,0,7
	.string "System_Func`1"

.LDIFF_SYM126=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM126
.LTDIE_20_POINTER:

	.byte 13
.LDIFF_SYM127=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM127
.LTDIE_20_REFERENCE:

	.byte 14
.LDIFF_SYM128=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM128
.LTDIE_5:

	.byte 5
	.string "SkiaSharp_Extended_UI_SKObjectPool`1"

	.byte 16,16
.LDIFF_SYM129=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM129
	.byte 2,35,0,6
	.string "objects"

.LDIFF_SYM130=.LTDIE_6_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM130
	.byte 2,35,8,6
	.string "generator"

.LDIFF_SYM131=.LTDIE_20_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM131
	.byte 2,35,12,0,7
	.string "SkiaSharp_Extended_UI_SKObjectPool`1"

.LDIFF_SYM132=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM132
.LTDIE_5_POINTER:

	.byte 13
.LDIFF_SYM133=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM133
.LTDIE_5_REFERENCE:

	.byte 14
.LDIFF_SYM134=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM134
	.byte 2
	.string "SkiaSharp.Extended.UI.SKObjectPool`1<T_REF>:.ctor"
	.string "SkiaSharp_Extended_UI_SKObjectPool_1_T_REF__ctor_System_Func_1_T_REF"

	.byte 0,0
	.string "SkiaSharp.Extended.UI.SKObjectPool`1<T_REF>:.ctor"
	.long .Lm_10
	.long .Lme_10

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM135=.LTDIE_5_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM135
	.byte 2,125,0,3
	.string "objectGenerator"

.LDIFF_SYM136=.LTDIE_20_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM136
	.byte 2,125,4,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM137=.Lfde1_end - .Lfde1_start
	.long .LDIFF_SYM137
.Lfde1_start:

	.long 0
	.align 2
	.long .Lm_10

.LDIFF_SYM138=.Lme_10 - .Lm_10
	.long .LDIFF_SYM138
	.byte 68,14,16,133,4,134,3,136,2,142,1,68,14,40,2,200,10,68,14,16,68,11
	.align 2
.Lfde1_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "SkiaSharp.Extended.UI.SKObjectPool`1<T_REF>:Get"
	.string "SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Get"

	.byte 0,0
	.string "SkiaSharp.Extended.UI.SKObjectPool`1<T_REF>:Get"
	.long .Lm_11
	.long .Lme_11

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM139=.LTDIE_5_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM139
	.byte 2,125,4,11
	.string "V_0"

.LDIFF_SYM140=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM140
	.byte 2,125,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM141=.Lfde2_end - .Lfde2_start
	.long .LDIFF_SYM141
.Lfde2_start:

	.long 0
	.align 2
	.long .Lm_11

.LDIFF_SYM142=.Lme_11 - .Lm_11
	.long .LDIFF_SYM142
	.byte 68,14,8,136,2,142,1,68,14,24,2,116,10,68,14,8,68,11
	.align 2
.Lfde2_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "SkiaSharp.Extended.UI.SKObjectPool`1<T_REF>:Return"
	.string "SkiaSharp_Extended_UI_SKObjectPool_1_T_REF_Return_T_REF"

	.byte 0,0
	.string "SkiaSharp.Extended.UI.SKObjectPool`1<T_REF>:Return"
	.long .Lm_12
	.long .Lme_12

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM143=.LTDIE_5_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM143
	.byte 2,125,0,3
	.string "item"

.LDIFF_SYM144=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM144
	.byte 2,125,4,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM145=.Lfde3_end - .Lfde3_start
	.long .LDIFF_SYM145
.Lfde3_start:

	.long 0
	.align 2
	.long .Lm_12

.LDIFF_SYM146=.Lme_12 - .Lm_12
	.long .LDIFF_SYM146
	.byte 68,14,8,136,2,142,1,68,14,16,2,64,10,68,14,8,68,11
	.align 2
.Lfde3_end:

.section ".debug_info"
.subsection 0

	.byte 0
.Ldebug_info_end:
.section ".debug_line"
.subsection 0
.Ldebug_line_section_start:
.Ldebug_line_start:

	.long .Ldebug_line_end - . -4
	.short 2
	.long .Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section ".debug_line"
.subsection 0

	.byte 0
	.string "<unknown>"

	.byte 0,0,0,0
.Ldebug_line_header_end:

	.byte 0,1,1
.Ldebug_line_end:
.text 1
	.align 3
mem_end:
