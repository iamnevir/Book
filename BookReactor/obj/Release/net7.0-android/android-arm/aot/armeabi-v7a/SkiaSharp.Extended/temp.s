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
	.string "SkiaSharp.Extended.dll"
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
.Lm_57:
	.local SkiaSharp_Extended_SKPathInterpolation_Rotate_T_REF_System_Collections_Generic_IList_1_T_REF_int
	.type SkiaSharp_Extended_SKPathInterpolation_Rotate_T_REF_System_Collections_Generic_IList_1_T_REF_int,#function
SkiaSharp_Extended_SKPathInterpolation_Rotate_T_REF_System_Collections_Generic_IList_1_T_REF_int:

	.byte 240,73,45,233,20,208,77,226,8,128,141,229,0,96,160,225,12,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_got - . + 16
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl .Lp_1

	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_got - . + 76
	.byte 1,16,159,231,8,0,157,229
bl .Lp_2

	.byte 8,0,157,229,16,32,144,229,6,0,160,225,0,16,150,229,2,128,160,225,15,224,160,225,76,240,17,229,0,0,141,229
	.byte 12,0,157,229,0,16,157,229
bl .Lp_3

	.byte 12,0,141,229,0,0,80,227,86,0,0,10,0,0,157,229,0,0,80,227,83,0,0,10,0,80,160,227,0,64,160,227
	.byte 70,0,0,234,0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_got - . + 16
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl .Lp_1

	.byte 4,176,160,225,12,0,157,229,0,0,132,224,0,16,157,229,1,0,128,224
bl .Lp_3

	.byte 0,112,160,225,8,0,157,229,20,48,144,229,6,0,160,225,4,16,160,225,0,32,150,229,3,128,160,225,15,224,160,225
	.byte 68,240,18,229,4,0,141,229,32,0,0,234,0,0,159,229,0,0,0,234
	.long mono_aot_SkiaSharp_Extended_got - . + 16
	.byte 0,0,159,231,0,192,144,229,0,0,92,227,0,0,0,10
bl .Lp_1

	.byte 8,0,157,229,20,48,144,229,6,0,160,225,7,16,160,225,0,32,150,229,3,128,160,225,15,224,160,225,68,240,18,229
	.byte 0,32,160,225,8,0,157,229,24,192,144,229,6,0,160,225,11,16,160,225,0,48,150,229,12,128,160,225,15,224,160,225
	.byte 76,240,19,229,1,80,133,226,7,176,160,225,12,0,157,229,0,0,135,224,0,16,157,229,1,0,128,224
bl .Lp_3

	.byte 0,112,160,225,4,0,87,225,220,255,255,26,8,0,157,229,24,192,144,229,6,0,160,225,11,16,160,225,4,32,157,229
	.byte 0,48,150,229,12,128,160,225,15,224,160,225,76,240,19,229,1,80,133,226,1,64,132,226,8,0,157,229,16,32,144,229
	.byte 6,0,160,225,0,16,150,229,2,128,160,225,15,224,160,225,76,240,17,229,1,0,64,226,0,0,85,225,174,255,255,186
	.byte 20,208,141,226,240,137,189,232

	.size SkiaSharp_Extended_SKPathInterpolation_Rotate_T_REF_System_Collections_Generic_IList_1_T_REF_int,.-SkiaSharp_Extended_SKPathInterpolation_Rotate_T_REF_System_Collections_Generic_IList_1_T_REF_int
.Lme_57:
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
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=.Lm_57
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
.ltorg
ldr pc,=method_addresses
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

	.byte 106,0,0,0,10,0,0,0,11,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,70,0
	.byte 80,0,94,0,104,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,255,255
	.byte 255,255,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text 0
	.align 3
method_flags_table:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0
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

	.byte 37,0,0,0,0,0,19,0,0,0,0,0,0,0,16,0,0,0,18,0,0,0,0,0,0,0,17,0,0,0,0,0
	.byte 0,0,15,0,0,0,0,0,0,0,11,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,9,0,0,0,4,0,0,0,5,0,38,0,0,0,0,0,2,0,0,0,3,0,37,0,0,0
	.byte 0,0,0,0,0,0,10,0,0,0,0,0,0,0,13,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,1,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,12,0,0,0,14,0,0,0
.text 0
	.align 3
got_info_offsets:

	.byte 23,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,10,0,20,0,7,2,1,1,1,1,1,1,1,2
	.byte 20,2,2,2,3,2,2,2,3,2,43,3,34
.text 0
	.align 3
ex_info_offsets:

	.byte 106,0,0,0,10,0,0,0,11,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,70,0
	.byte 80,0,95,0,105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,140,255
	.byte 255,255,255,116,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text 1
	.align 3
unwind_info:

	.byte 32,12,13,0,68,14,28,132,7,133,6,134,5,135,4,136,3,139,2,142,1,68,14,48,3,216,1,10,68,14,28,68
	.byte 11
.text 0
	.align 3
class_info_offsets:

	.byte 19,0,0,0,10,0,0,0,2,0,0,0,2,0,0,0,0,0,11,0,129,136,7,35,35,35,35,35,23,23,23,130
	.byte 154,23,23,23,23,23,24,23,20

.text 0
	.align 4
plt:
mono_aot_SkiaSharp_Extended_plt:
	.local plt__jit_icall_mono_threads_state_poll
	.type plt__jit_icall_mono_threads_state_poll,#function
plt__jit_icall_mono_threads_state_poll:
.Lp_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_got - . + 92,132
	.size plt__jit_icall_mono_threads_state_poll,.-plt__jit_icall_mono_threads_state_poll
	.local plt__jit_icall_mini_init_method_rgctx
	.type plt__jit_icall_mini_init_method_rgctx,#function
plt__jit_icall_mini_init_method_rgctx:
.Lp_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_got - . + 96,135
	.size plt__jit_icall_mini_init_method_rgctx,.-plt__jit_icall_mini_init_method_rgctx
	.local plt__jit_icall___emul_op_irem
	.type plt__jit_icall___emul_op_irem,#function
plt__jit_icall___emul_op_irem:
.Lp_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_SkiaSharp_Extended_got - . + 100,138
	.size plt__jit_icall___emul_op_irem,.-plt__jit_icall___emul_op_irem
	.size mono_aot_SkiaSharp_Extended_plt,.-mono_aot_SkiaSharp_Extended_plt
plt_end:
.text 0
	.align 3
image_table:

	.byte 2,0,0,0,83,107,105,97,83,104,97,114,112,46,69,120,116,101,110,100,101,100,0,49,67,56,51,70,48,69,65,45
	.byte 67,66,55,49,45,52,51,56,56,45,56,48,65,52,45,56,49,65,52,53,56,56,52,69,67,69,65,0,0,0,0,0
	.byte 0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116,101,109,46,80,114,105,118,97
	.byte 116,101,46,67,111,114,101,76,105,98,0,50,56,67,68,48,65,66,50,45,49,70,68,65,45,52,50,57,65,45,65,52
	.byte 55,54,45,55,66,54,66,48,66,66,57,57,67,65,70,0,0,55,99,101,99,56,53,100,55,98,101,97,55,55,57,56
	.byte 101,0,0,0,0,0,0,0,1,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text 0
	.align 3
weak_field_indexes:

	.byte 0,0,0,0
.section ".bss"
.subsection 0
	.align 3
	.local mono_aot_SkiaSharp_Extended_got
	.type mono_aot_SkiaSharp_Extended_got,#object
mono_aot_SkiaSharp_Extended_got:
	.skip 108
got_end:
.text 0
	.align 3
blob:

	.byte 0,87,0,0,0,1,22,11,0,35,37,45,49,51,31,47,54,8,54,9,54,10,54,11,54,12,54,128,255,6,89,6
	.byte 98,6,103,6,129,5,6,92,6,128,171,6,128,149,6,128,148,5,0,30,0,1,255,255,255,255,255,88,5,1,28,7
	.byte 49,1,7,60,4,2,133,96,1,65,4,2,133,103,1,65,65,255,253,0,0,0,1,15,0,88,2,65,3,6,255,253
	.byte 0,0,0,7,68,1,188,65,1,65,6,255,253,0,0,0,7,74,1,188,87,1,65,6,255,253,0,0,0,7,74,1
	.byte 188,88,1,65,6,129,5,6,129,21,6,70,11,0,2,1,8,12,0,13,8,12,0,11,255,253,0,0,0,1,15,0
	.byte 88,2,65,0,0,45,0,152,1,14,64,10,32,6,16,8,24,4,8,4,8,4,72,4,8,18,48,18,72,4,72,20
	.byte 72,10,64,8,8,6,8,18,48,10,16,18,72,8,8,8,8,14,56,128,179,129,224,76,129,232,0,86,0,76,1,4
	.byte 0,4,0,4,0,0,0,4,0,4,6,12,5,16,1,0,0,4,2,4,1,4,0,4,3,4,0,0,2,4,0,0
	.byte 2,4,0,0,2,36,1,0,1,4,2,4,2,8,5,12,2,4,0,4,0,4,0,4,0,0,0,4,0,4,7,12
	.byte 0,0,2,36,5,4,0,4,0,4,0,4,0,0,0,4,0,4,0,8,0,4,5,4,0,4,0,4,0,4,0,0
	.byte 0,4,0,4,5,8,2,0,2,4,2,0,1,4,2,4,2,8,5,12,3,0,0,4,2,4,4,4,0,4,0,4
	.byte 0,8,0,0,0,4,0,4,5,8,2,0,2,4,2,0,2,4,2,4,0,4,0,4,0,0,0,4,0,4,0,8
	.byte 6,0,1,4,0,4,3,4,0,128,144,8,0,0,1,7,128,144,8,0,0,1,193,0,1,181,193,0,1,180,193,0
	.byte 2,165,193,0,2,164,193,0,1,185,193,0,1,184,193,0,1,183,7,128,144,8,0,0,1,193,0,1,181,193,0,1
	.byte 180,193,0,2,165,193,0,2,164,193,0,1,185,193,0,1,184,193,0,1,183,7,128,144,8,0,0,1,193,0,1,181
	.byte 193,0,1,180,193,0,2,165,193,0,2,164,193,0,1,185,193,0,1,184,193,0,1,183,7,128,160,12,0,0,4,193
	.byte 0,1,181,193,0,1,180,193,0,2,165,193,0,2,164,193,0,1,185,193,0,1,184,193,0,1,183,7,128,128,9,0
	.byte 0,1,193,0,1,181,193,0,1,180,193,0,2,165,193,0,2,164,193,0,1,185,193,0,1,184,193,0,1,183,4,128
	.byte 144,8,0,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,152,8,0,0,1,193,0,2,169
	.byte 193,0,2,166,193,0,2,165,193,0,2,164,4,128,144,8,0,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193
	.byte 0,2,164,4,128,152,8,0,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,144,8,0,0
	.byte 1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,128,20,0,0,4,193,0,2,169,193,0,2,166
	.byte 193,0,2,165,193,0,2,164,4,128,128,8,0,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4
	.byte 128,144,8,0,0,1,193,0,2,169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,168,28,0,0,4,193,0,2
	.byte 169,193,0,2,166,193,0,2,165,193,0,2,164,4,128,196,92,8,4,0,1,193,0,2,169,193,0,2,166,193,0,2
	.byte 165,193,0,2,164,4,128,160,28,0,0,4,193,0,6,94,193,0,6,93,193,0,6,95,193,0,2,164,4,128,144,32
	.byte 0,0,8,193,0,6,94,193,0,6,93,103,193,0,2,164,4,128,128,12,0,0,4,193,0,2,169,193,0,2,166,193
	.byte 0,2,165,193,0,2,164,115,103,101,110,0
.text 1
runtime_version:
	.string ""
.text 1
assembly_guid:
	.string "1C83F0EA-CB71-4388-80A4-81A45884ECEA"
.text 1
assembly_name:
	.string "SkiaSharp.Extended"
.data 0
	.align 3
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,#object

	.long 183,0
	.align 2
	.long mono_aot_SkiaSharp_Extended_got
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

	.long 23,23,108,88,4,106,0,32
	.long 374417919,0,871,128,8,8,7,9
	.long 0,0,8,22,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0
	.byte 226,158,70,232,67,7,63,49,171,216,15,1,230,222,186,116
.section ".debug_info"
.subsection 0
.LTDIE_0:

	.byte 17
	.string "System_Collections_Generic_IList`1"

	.byte 8,7
	.string "System_Collections_Generic_IList`1"

.LDIFF_SYM3=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM3
.LTDIE_0_POINTER:

	.byte 13
.LDIFF_SYM4=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM4
.LTDIE_0_REFERENCE:

	.byte 14
.LDIFF_SYM5=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM5
.LTDIE_3:

	.byte 17
	.string "System_Object"

	.byte 8,7
	.string "System_Object"

.LDIFF_SYM6=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM6
.LTDIE_3_POINTER:

	.byte 13
.LDIFF_SYM7=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM7
.LTDIE_3_REFERENCE:

	.byte 14
.LDIFF_SYM8=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM8
.LTDIE_2:

	.byte 5
	.string "System_ValueType"

	.byte 8,16
.LDIFF_SYM9=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM9
	.byte 2,35,0,0,7
	.string "System_ValueType"

.LDIFF_SYM10=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM10
.LTDIE_2_POINTER:

	.byte 13
.LDIFF_SYM11=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM11
.LTDIE_2_REFERENCE:

	.byte 14
.LDIFF_SYM12=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM12
.LTDIE_1:

	.byte 5
	.string "System_Int32"

	.byte 12,16
.LDIFF_SYM13=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM13
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM14=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM14
	.byte 2,35,8,0,7
	.string "System_Int32"

.LDIFF_SYM15=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM15
.LTDIE_1_POINTER:

	.byte 13
.LDIFF_SYM16=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM16
.LTDIE_1_REFERENCE:

	.byte 14
.LDIFF_SYM17=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM17
	.byte 2
	.string "SkiaSharp.Extended.SKPathInterpolation:Rotate<T_REF>"
	.string "SkiaSharp_Extended_SKPathInterpolation_Rotate_T_REF_System_Collections_Generic_IList_1_T_REF_int"

	.byte 0,0
	.string "SkiaSharp.Extended.SKPathInterpolation:Rotate<T_REF>"
	.long .Lm_57
	.long .Lme_57

	.byte 2,118,16,3
	.string "items"

.LDIFF_SYM18=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM18
	.byte 1,86,3
	.string "offset"

.LDIFF_SYM19=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM19
	.byte 2,125,12,11
	.string "V_0"

.LDIFF_SYM20=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM20
	.byte 2,125,0,11
	.string "V_1"

.LDIFF_SYM21=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM21
	.byte 1,85,11
	.string "V_2"

.LDIFF_SYM22=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM22
	.byte 1,84,11
	.string "V_3"

.LDIFF_SYM23=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM23
	.byte 1,91,11
	.string "V_4"

.LDIFF_SYM24=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM24
	.byte 1,87,11
	.string "V_5"

.LDIFF_SYM25=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM25
	.byte 2,125,4,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM26=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM26
.Lfde0_start:

	.long 0
	.align 2
	.long .Lm_57

.LDIFF_SYM27=.Lme_57 - .Lm_57
	.long .LDIFF_SYM27
	.byte 68,14,28,132,7,133,6,134,5,135,4,136,3,139,2,142,1,68,14,48,3,216,1,10,68,14,28,68,11
	.align 2
.Lfde0_end:

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
