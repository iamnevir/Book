.section .debug_abbrev
.Ldebug_abbrev_start:

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,90
	.byte 8,17,1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4
	.byte 36,0,11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3
	.byte 8,73,19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8
	.byte 28,13,0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0
	.byte 0,13,15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18
	.byte 1,0,0,0
.section .debug_info
.Ldebug_info_start:

.LDIFF_SYM0=.Ldebug_info_end - .Ldebug_info_begin
	.long .LDIFF_SYM0
.Ldebug_info_begin:

	.short 2
	.long .Ldebug_abbrev_start
	.byte 4,1
	.string "Mono AOT Compiler 7.0.10.0 (7.0.10 @Commit: a6dbb800a47735bde43187350fd3aff4071c7f9c)"
	.string "CommunityToolkit.Maui.Core.dll"
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
.section .debug_loc
.Ldebug_loc_start:
.section .debug_frame
	.balign 8

.LDIFF_SYM2=.Lcie0_end - .Lcie0_start
	.long .LDIFF_SYM2
.Lcie0_start:

	.long -1
	.byte 3
	.string ""

	.byte 1,124,8,12,5,4,136,1
	.balign 4
.Lcie0_end:
.section .text
	.balign 8
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section .text
	.balign 16
.Lm_1a8:
	.local CommunityToolkit_Maui_Core_Extensions_ObservableCollectionExtensions_ToObservableCollection_T_REF_System_Collections_Generic_IEnumerable_1_T_REF
	.type CommunityToolkit_Maui_Core_Extensions_ObservableCollectionExtensions_ToObservableCollection_T_REF_System_Collections_Generic_IEnumerable_1_T_REF,@function
CommunityToolkit_Maui_Core_Extensions_ObservableCollectionExtensions_ToObservableCollection_T_REF_System_Collections_Generic_IEnumerable_1_T_REF:

	.byte 85,139,236,83,131,236,36,137,85,248,232,0,0,0,0,91,129,195
	.long mono_aot_CommunityToolkit_Maui_Core_got - . + 3
	.byte 139,131
	.long 28
	.byte 247,0,1,0,0,0,116,5
call .Lp_1

	.byte 139,131
	.long 88
	.byte 137,68,36,4,139,69,248,137,4,36
call .Lp_2

	.byte 139,69,248,139,64,16,199,68,36,4,24,0,0,0,137,4,36
call .Lp_3

	.byte 139,77,8,137,76,36,4,137,69,244,137,4,36
call .Lp_4

	.byte 139,69,244,141,101,252,91,201,195

	.size CommunityToolkit_Maui_Core_Extensions_ObservableCollectionExtensions_ToObservableCollection_T_REF_System_Collections_Generic_IEnumerable_1_T_REF,.-CommunityToolkit_Maui_Core_Extensions_ObservableCollectionExtensions_ToObservableCollection_T_REF_System_Collections_Generic_IEnumerable_1_T_REF
.Lme_1a8:
.section .text
	.balign 8
jit_code_end:

	.byte 0,0,0,0
.section .data.rel.ro
	.balign 8
method_addresses:
	.local method_addresses
	.type method_addresses,@object
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call .Lm_1a8
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
method_addresses_end:

.section .text
	.balign 8
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.section .text
	.balign 8
unbox_trampoline_addresses:

	.long 0
.section .text
	.balign 8
method_info_offsets:

	.byte 28,2,0,0,10,0,0,0,54,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,70,0
	.byte 80,0,90,0,100,0,110,0,120,0,130,0,140,0,150,0,160,0,170,0,180,0,190,0,200,0,210,0,220,0,230,0
	.byte 240,0,250,0,4,1,14,1,24,1,34,1,44,1,54,1,64,1,74,1,84,1,94,1,104,1,114,1,124,1,134,1
	.byte 144,1,154,1,164,1,178,1,188,1,198,1,208,1,218,1,228,1,238,1,248,1,2,2,12,2,22,2,0,0,0,0
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
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,1,255,255,255,255,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section .text
	.balign 8
method_flags_table:

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
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section .text
	.balign 8
extra_method_table:

	.byte 11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0
.section .text
	.balign 8
extra_method_info_offsets:

	.byte 0,0,0,0
.section .text
	.balign 8
class_name_table:

	.byte 251,0,0,0,0,0,0,0,0,0,0,0,0,0,97,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,133,0,0,0,0,0,0,0,54,0,0,0,95,0,0,0,96,0,24,1,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,38,0
	.byte 0,0,49,0,16,1,9,0,251,0,0,0,0,0,52,0,1,1,0,0,0,0,0,0,0,0,14,0,9,1,90,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,47,0,7,1,0,0,0,0,77,0,0,0,135,0,0,0,0,0
	.byte 0,0,0,0,0,0,117,0,0,0,69,0,10,1,0,0,0,0,0,0,0,0,118,0,0,0,0,0,0,0,137,0
	.byte 0,0,0,0,0,0,5,0,0,0,0,0,0,0,75,0,26,1,13,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,28,0
	.byte 255,0,0,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,20,1,51,0
	.byte 6,1,35,0,0,0,4,0,17,1,120,0,0,0,114,0,0,0,67,0,0,0,23,0,0,0,121,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,84,0,0,0,33,0,0,0,139,0,0,0,105,0,0,0,100,0,0,0,87,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,99,0,0,0,16,0,5,1,56,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,25,0,254,0,50,0,0,0,68,0,0,0,0,0,0,0,34,0
	.byte 21,1,146,0,0,0,0,0,0,0,6,0,0,0,123,0,0,0,0,0,0,0,140,0,0,0,0,0,0,0,104,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,101,0,0,0,24,0,3,1,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,32,0,0,0,31,0,0,0,46,0,0,0,0,0,0,0,106,0,0,0,0,0,0,0,44,0,0,0,15,0
	.byte 252,0,20,0,0,0,60,0,0,0,0,0,0,0,55,0,0,0,124,0,0,0,59,0,14,1,149,0,0,0,79,0
	.byte 0,0,125,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,126,0,0,0,0,0,0,0,66,0,0,0,0,0
	.byte 0,0,0,0,0,0,113,0,0,0,103,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,48,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,127,0,0,0,0,0,0,0,2,0
	.byte 0,0,0,0,0,0,78,0,22,1,58,0,0,0,141,0,0,0,109,0,19,1,0,0,0,0,147,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,37,0,0,0,70,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,40,0,253,0,73,0,0,0,0,0
	.byte 0,0,0,0,0,0,92,0,11,1,129,0,0,0,62,0,0,0,0,0,0,0,12,0,0,0,72,0,23,1,0,0
	.byte 0,0,0,0,0,0,93,0,0,0,131,0,0,0,148,0,0,0,0,0,0,0,0,0,0,0,27,0,0,1,21,0
	.byte 0,0,8,0,0,0,0,0,0,0,39,0,8,1,18,0,0,0,0,0,0,0,26,0,18,1,0,0,0,0,0,0
	.byte 0,0,45,0,28,1,88,0,0,0,0,0,0,0,30,0,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,81,0,13,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,132,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,74,0,0,0,41,0,0,0,0,0,0,0,17,0
	.byte 0,0,7,0,0,0,142,0,0,0,0,0,0,0,94,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,53,0,0,0,0,0,0,0,22,0,4,1,11,0,0,0,19,0,0,0,42,0,0,0,43,0,0,0,57,0
	.byte 0,0,61,0,0,0,63,0,0,0,65,0,12,1,76,0,0,0,80,0,0,0,82,0,0,0,83,0,0,0,85,0
	.byte 0,0,86,0,0,0,89,0,15,1,91,0,25,1,98,0,0,0,102,0,0,0,107,0,0,0,108,0,0,0,110,0
	.byte 0,0,111,0,0,0,112,0,0,0,115,0,0,0,116,0,0,0,119,0,0,0,122,0,0,0,128,0,0,0,130,0
	.byte 27,1,134,0,29,1,136,0,0,0,138,0,0,0,143,0,0,0,144,0,0,0,145,0,0,0
.section .text
	.balign 8
got_info_offsets:

	.byte 23,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,10,0,20,0,7,2,1,1,1,1,1,1,1,2
	.byte 20,2,2,2,3,2,2,2,3,2,43,3,28
.section .text
	.balign 8
ex_info_offsets:

	.byte 28,2,0,0,10,0,0,0,54,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,70,0
	.byte 80,0,90,0,100,0,110,0,120,0,130,0,140,0,150,0,160,0,170,0,180,0,190,0,200,0,210,0,220,0,230,0
	.byte 240,0,250,0,4,1,14,1,24,1,34,1,44,1,54,1,64,1,74,1,84,1,94,1,104,1,114,1,124,1,134,1
	.byte 144,1,154,1,164,1,178,1,188,1,198,1,208,1,218,1,228,1,238,1,248,1,2,2,12,2,22,2,0,0,0,0
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
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,117,255,255,255,255,139,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section .text
	.balign 8
unwind_info:

	.byte 16,12,5,4,136,1,65,14,8,132,2,66,13,4,65,131,3
.section .text
	.balign 8
class_info_offsets:

	.byte 149,0,0,0,10,0,0,0,15,0,0,0,2,0,0,0,0,0,11,0,22,0,33,0,44,0,55,0,67,0,80,0
	.byte 91,0,102,0,113,0,124,0,135,0,146,0,157,0,128,183,7,35,35,35,35,7,24,26,19,129,174,24,24,7,24,7
	.byte 99,51,24,25,130,222,7,24,51,25,19,7,23,7,7,131,143,7,7,7,7,7,7,7,7,99,132,49,23,25,25,25
	.byte 99,23,99,23,99,134,1,23,23,25,29,99,25,45,23,131,29,138,89,129,127,23,132,166,27,23,23,31,31,25,145,58
	.byte 7,7,5,5,23,23,23,23,24,146,95,23,27,27,27,27,25,23,27,27,147,99,27,27,23,27,27,27,26,26,26,148
	.byte 104,26,26,26,26,26,25,26,25,26,149,106,26,25,25,25,23,25,23,23,23,150,91,23,23,23,23,23,23,23,23,23
	.byte 151,65,23,23,23,23,23,23,23,23,23,152,40,24,24,24,24,24,24,24,24

.section .text
	.balign 16
plt:
mono_aot_CommunityToolkit_Maui_Core_plt:
	.local plt__jit_icall_mono_threads_state_poll
	.type plt__jit_icall_mono_threads_state_poll,@function
plt__jit_icall_mono_threads_state_poll:
.Lp_1:

	.byte 255,163
	.long 96,91
	.size plt__jit_icall_mono_threads_state_poll,.-plt__jit_icall_mono_threads_state_poll
	.local plt__jit_icall_mini_init_method_rgctx
	.type plt__jit_icall_mini_init_method_rgctx,@function
plt__jit_icall_mini_init_method_rgctx:
.Lp_2:

	.byte 255,163
	.long 100,94
	.size plt__jit_icall_mini_init_method_rgctx,.-plt__jit_icall_mini_init_method_rgctx
	.local plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.type plt_wrapper_alloc_object_AllocSmall_intptr_intptr,@function
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
.Lp_3:

	.byte 255,163
	.long 104,97
	.size plt_wrapper_alloc_object_AllocSmall_intptr_intptr,.-plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.local plt_System_Collections_ObjectModel_ObservableCollection_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF
	.type plt_System_Collections_ObjectModel_ObservableCollection_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF,@function
plt_System_Collections_ObjectModel_ObservableCollection_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF:
.Lp_4:

	.byte 255,163
	.long 108,105
	.size plt_System_Collections_ObjectModel_ObservableCollection_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF,.-plt_System_Collections_ObjectModel_ObservableCollection_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF
	.size mono_aot_CommunityToolkit_Maui_Core_plt,.-mono_aot_CommunityToolkit_Maui_Core_plt
plt_end:
.section .text
	.balign 8
image_table:

	.byte 6,0,0,0,67,111,109,109,117,110,105,116,121,84,111,111,108,107,105,116,46,77,97,117,105,46,67,111,114,101,0,67
	.byte 69,52,56,49,54,48,54,45,66,52,54,70,45,52,53,56,53,45,56,52,68,57,45,66,66,66,55,68,50,68,55,48
	.byte 54,68,55,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116
	.byte 101,109,46,79,98,106,101,99,116,77,111,100,101,108,0,66,50,51,49,56,48,48,53,45,66,65,66,54,45,52,57,49
	.byte 57,45,66,56,49,65,45,56,68,55,65,48,66,53,52,52,67,69,57,0,0,98,48,51,102,53,102,55,102,49,49,100
	.byte 53,48,97,51,97,0,0,0,1,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116
	.byte 101,109,46,80,114,105,118,97,116,101,46,67,111,114,101,76,105,98,0,51,54,53,57,67,52,66,49,45,68,48,50,49
	.byte 45,52,70,56,52,45,57,51,67,69,45,55,66,50,48,54,49,66,57,67,54,48,48,0,0,55,99,101,99,56,53,100
	.byte 55,98,101,97,55,55,57,56,101,0,0,0,0,0,0,0,1,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,77,111,110,111,46,65,110,100,114,111,105,100,0,66,53,69,65,70,50,55,52,45,52,65,65,65,45,52
	.byte 50,53,49,45,56,67,57,67,45,49,56,57,68,66,57,52,54,70,49,54,67,0,0,56,52,101,48,52,102,102,57,99
	.byte 102,98,55,57,48,54,53,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,77,105,99,114
	.byte 111,115,111,102,116,46,77,97,117,105,46,71,114,97,112,104,105,99,115,0,67,57,50,57,55,55,57,52,45,56,55,68
	.byte 67,45,52,51,49,50,45,66,50,67,50,45,53,65,65,48,53,69,66,68,51,52,53,51,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,77,105,99,114,111,115,111,102,116,46,77,97
	.byte 117,105,0,52,70,66,70,57,68,68,55,45,67,49,66,68,45,52,65,66,67,45,66,49,69,70,45,67,65,54,48,56
	.byte 68,70,54,55,54,54,53,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0
.section .text
	.balign 8
weak_field_indexes:

	.byte 0,0,0,0
.section .bss
	.balign 8
	.local mono_aot_CommunityToolkit_Maui_Core_got
	.type mono_aot_CommunityToolkit_Maui_Core_got,@object
mono_aot_CommunityToolkit_Maui_Core_got:
	.skip 112
got_end:
.section .text
	.balign 8
blob:

	.byte 0,168,1,0,0,1,22,11,0,35,37,45,49,51,31,47,54,8,54,9,54,10,54,11,54,12,54,128,255,6,89,6
	.byte 98,6,103,6,129,5,6,92,6,128,171,6,128,149,6,128,148,5,0,30,0,1,255,255,255,255,255,129,169,5,1,28
	.byte 7,49,1,7,61,4,2,16,1,66,65,255,253,0,0,0,1,77,0,129,169,2,66,1,3,7,69,6,129,5,6,129
	.byte 21,3,255,252,0,0,0,17,2,3,255,253,0,0,0,7,69,1,45,1,66,128,139,0,111,16,0,0,1,5,255,255
	.byte 255,255,248,12,255,253,0,0,0,1,77,0,129,169,2,66,0,0,4,0,124,12,86,31,105,10,111,0,13,0,10,0
	.byte 52,1,3,0,3,0,8,0,3,0,5,0,3,0,7,0,3,5,8,0,0,1,0,0,128,144,8,0,0,1,7,128
	.byte 144,8,0,0,1,194,0,1,181,194,0,1,180,194,0,2,165,194,0,2,164,194,0,1,185,194,0,1,184,194,0,1
	.byte 183,7,128,160,12,0,0,4,194,0,1,181,194,0,1,180,194,0,2,165,194,0,2,164,194,0,1,185,194,0,1,184
	.byte 194,0,1,183,7,128,128,9,0,0,1,194,0,1,181,194,0,1,180,194,0,2,165,194,0,2,164,194,0,1,185,194
	.byte 0,1,184,194,0,1,183,7,128,128,12,0,0,4,194,0,1,181,194,0,1,180,194,0,2,165,194,0,2,164,194,0
	.byte 1,185,194,0,1,184,194,0,1,183,0,128,144,8,0,0,1,4,128,196,12,8,4,0,1,194,0,2,169,194,0,2
	.byte 166,194,0,2,165,194,0,2,164,7,128,168,16,0,0,4,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164
	.byte 18,19,13,9,128,160,16,0,0,4,32,33,28,194,0,2,164,34,35,34,29,22,4,128,196,40,8,8,0,1,194,0
	.byte 2,169,194,0,2,166,194,0,2,165,194,0,2,164,5,128,144,8,0,0,1,194,0,2,169,194,0,2,166,194,0,2
	.byte 165,194,0,2,164,41,5,128,192,8,0,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,43,0,128
	.byte 144,8,0,0,1,4,128,204,50,8,4,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,0,128,144
	.byte 8,0,0,1,23,128,144,12,0,0,4,194,0,2,50,194,0,2,49,194,0,2,51,194,0,2,164,194,0,2,52,194
	.byte 0,2,53,194,0,2,56,194,0,2,57,194,0,2,58,194,0,2,59,194,0,2,60,194,0,2,61,194,0,2,62,194
	.byte 0,2,63,194,0,2,64,194,0,2,65,194,0,2,66,194,0,2,67,194,0,2,68,194,0,2,69,194,0,2,70,194
	.byte 0,2,55,194,0,2,71,11,128,160,72,0,0,4,194,0,2,169,194,0,2,166,194,0,2,132,194,0,2,164,194,0
	.byte 2,131,194,0,2,136,194,0,2,131,194,0,2,130,194,0,2,129,194,0,2,126,194,0,2,125,4,128,196,57,8,4
	.byte 0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,6,128,152,8,0,0,1,194,0,2,169,194,0,2
	.byte 166,194,0,2,165,194,0,2,164,63,64,9,128,160,16,0,0,4,79,80,75,194,0,2,164,81,82,81,76,68,0,128
	.byte 144,8,0,0,1,4,128,196,91,8,4,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,11,128,160
	.byte 72,0,0,4,194,0,2,169,194,0,2,166,194,0,2,132,194,0,2,164,194,0,2,131,194,0,2,136,194,0,2,131
	.byte 194,0,2,130,194,0,2,129,194,0,2,126,194,0,2,125,6,128,152,8,0,0,1,194,0,2,169,194,0,2,166,194
	.byte 0,2,165,194,0,2,164,97,98,9,128,160,16,0,0,4,112,113,108,194,0,2,164,114,115,114,109,101,0,128,144,8
	.byte 0,0,1,4,128,144,8,0,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,0,128,144,8,0,0
	.byte 1,0,128,144,8,0,0,1,0,128,144,8,0,0,1,0,128,144,8,0,0,1,0,128,144,8,0,0,1,0,128,144
	.byte 8,0,0,1,0,128,144,8,0,0,1,0,128,144,8,0,0,1,0,128,144,8,0,0,1,0,128,144,8,0,0,1
	.byte 0,128,144,8,0,0,1,23,128,144,12,0,0,4,194,0,2,50,194,0,2,49,194,0,2,51,194,0,2,164,194,0
	.byte 2,52,194,0,2,53,194,0,2,56,194,0,2,57,194,0,2,58,194,0,2,59,194,0,2,60,194,0,2,61,194,0
	.byte 2,62,194,0,2,63,194,0,2,64,194,0,2,65,194,0,2,66,194,0,2,67,194,0,2,68,194,0,2,69,194,0
	.byte 2,70,194,0,2,55,194,0,2,71,0,128,144,8,0,0,1,4,128,144,8,0,0,1,194,0,2,169,194,0,2,166
	.byte 194,0,2,165,194,0,2,164,4,128,196,128,181,8,8,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2
	.byte 164,4,128,196,128,185,8,72,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,196,128,188,8
	.byte 8,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,23,128,144,12,0,0,4,194,0,2,50,194,0
	.byte 2,49,194,0,2,51,194,0,2,164,194,0,2,52,194,0,2,53,194,0,2,56,194,0,2,57,194,0,2,58,194,0
	.byte 2,59,194,0,2,60,194,0,2,61,194,0,2,62,194,0,2,63,194,0,2,64,194,0,2,65,194,0,2,66,194,0
	.byte 2,67,194,0,2,68,194,0,2,69,194,0,2,70,194,0,2,55,194,0,2,71,4,128,160,12,0,0,4,194,0,2
	.byte 169,194,0,2,166,194,0,2,165,194,0,2,164,23,128,144,12,0,0,4,194,0,2,50,194,0,2,49,194,0,2,51
	.byte 194,0,2,164,194,0,2,52,194,0,2,53,194,0,2,56,194,0,2,57,194,0,2,58,194,0,2,59,194,0,2,60
	.byte 194,0,2,61,194,0,2,62,194,0,2,63,194,0,2,64,194,0,2,65,194,0,2,66,194,0,2,67,194,0,2,68
	.byte 194,0,2,69,194,0,2,70,194,0,2,55,194,0,2,71,4,128,128,9,0,0,1,194,0,2,169,194,0,2,166,194
	.byte 0,2,165,194,0,2,164,23,128,144,12,0,0,4,194,0,2,50,194,0,2,49,194,0,2,51,194,0,2,164,194,0
	.byte 2,52,194,0,2,53,194,0,2,56,194,0,2,57,194,0,2,58,194,0,2,59,194,0,2,60,194,0,2,61,194,0
	.byte 2,62,194,0,2,63,194,0,2,64,194,0,2,65,194,0,2,66,194,0,2,67,194,0,2,68,194,0,2,69,194,0
	.byte 2,70,194,0,2,55,194,0,2,71,4,128,160,24,0,0,4,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2
	.byte 164,4,128,160,12,0,0,4,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,160,16,0,0,4,194
	.byte 0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,196,128,205,8,4,0,1,194,0,2,169,194,0,2,166
	.byte 194,0,2,165,194,0,2,164,7,128,160,112,0,0,4,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,128
	.byte 210,128,208,128,206,23,128,144,12,0,0,4,194,0,2,50,194,0,2,49,194,0,2,51,194,0,2,164,194,0,2,52
	.byte 194,0,2,53,194,0,2,56,194,0,2,57,194,0,2,58,194,0,2,59,194,0,2,60,194,0,2,61,194,0,2,62
	.byte 194,0,2,63,194,0,2,64,194,0,2,65,194,0,2,66,194,0,2,67,194,0,2,68,194,0,2,69,194,0,2,70
	.byte 194,0,2,55,194,0,2,71,4,128,156,128,221,8,0,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2
	.byte 164,15,128,160,28,0,0,4,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,128,229,128,230,128,223,128,224
	.byte 128,225,128,226,128,227,128,228,128,231,128,232,128,234,4,128,160,28,0,0,4,194,0,2,169,194,0,2,166,194,0,2
	.byte 165,194,0,2,164,128,197,128,170,195,0,45,34,128,172,0,0,4,195,0,45,19,194,0,2,166,195,0,45,24,195,0
	.byte 45,34,195,0,45,53,195,0,45,40,195,0,45,28,195,0,45,29,195,0,45,30,195,0,45,31,195,0,45,32,195,0
	.byte 45,33,195,0,45,37,195,0,45,50,195,0,45,38,195,0,45,52,195,0,16,114,195,0,45,45,195,0,45,51,195,0
	.byte 45,46,195,0,45,48,195,0,45,49,128,248,195,0,45,47,195,0,16,116,195,0,16,115,195,0,16,114,195,0,45,16
	.byte 195,0,45,13,195,0,18,134,195,0,18,131,195,0,18,128,195,0,18,125,195,0,18,122,195,0,18,119,195,0,18,116
	.byte 195,0,18,113,195,0,18,110,195,0,18,107,195,0,18,103,195,0,18,100,195,0,18,97,195,0,18,94,195,0,18,91
	.byte 195,0,18,88,195,0,18,85,195,0,18,82,195,0,18,79,195,0,18,76,195,0,18,73,195,0,18,69,195,0,18,66
	.byte 195,0,18,63,195,0,18,60,195,0,18,57,195,0,18,54,128,249,196,0,4,220,195,0,18,45,195,0,18,42,195,0
	.byte 18,39,195,0,18,36,197,0,6,232,195,0,18,30,197,0,6,238,195,0,18,24,195,0,18,21,195,0,18,18,195,0
	.byte 18,15,195,0,18,12,195,0,18,9,195,0,18,6,195,0,18,2,195,0,17,255,195,0,17,252,195,0,17,249,195,0
	.byte 17,246,195,0,17,243,195,0,17,240,195,0,17,237,196,0,4,219,195,0,17,227,195,0,17,224,195,0,17,221,195,0
	.byte 17,218,195,0,17,215,195,0,17,212,195,0,17,209,195,0,17,206,195,0,17,203,195,0,17,200,195,0,17,197,195,0
	.byte 17,194,195,0,17,191,195,0,17,188,195,0,17,185,195,0,17,182,195,0,17,179,195,0,17,176,195,0,17,173,195,0
	.byte 17,170,195,0,17,167,195,0,17,164,195,0,17,161,195,0,17,158,195,0,17,154,195,0,17,153,195,0,17,148,195,0
	.byte 17,145,195,0,17,144,195,0,17,139,195,0,17,138,195,0,17,133,195,0,17,132,195,0,17,126,195,0,17,125,195,0
	.byte 17,120,195,0,17,119,195,0,17,114,195,0,17,113,195,0,17,108,195,0,17,105,195,0,17,104,195,0,17,99,195,0
	.byte 17,98,195,0,17,91,195,0,17,90,195,0,17,85,195,0,17,84,195,0,17,79,195,0,17,78,195,0,17,73,195,0
	.byte 17,72,195,0,17,67,195,0,17,66,195,0,17,61,195,0,17,57,195,0,17,54,195,0,17,53,195,0,17,48,195,0
	.byte 17,47,195,0,17,42,195,0,17,39,195,0,17,38,195,0,17,35,195,0,17,32,195,0,17,29,195,0,17,26,195,0
	.byte 17,23,195,0,17,20,195,0,17,17,195,0,17,14,195,0,17,11,195,0,17,6,195,0,17,2,195,0,17,1,195,0
	.byte 16,252,195,0,16,251,195,0,16,246,195,0,16,243,195,0,16,240,195,0,16,237,195,0,16,234,195,0,16,231,195,0
	.byte 16,228,195,0,16,225,195,0,16,222,195,0,16,221,195,0,16,216,195,0,16,215,195,0,16,210,195,0,16,207,195,0
	.byte 16,206,195,0,16,200,195,0,16,197,195,0,16,194,195,0,16,189,195,0,16,188,195,0,16,183,195,0,16,182,195,0
	.byte 16,177,195,0,16,174,195,0,16,173,195,0,16,168,195,0,16,162,195,0,16,161,195,0,16,154,195,0,16,151,195,0
	.byte 16,150,195,0,16,144,195,0,16,141,195,0,16,138,195,0,16,137,195,0,16,132,195,0,16,129,195,0,16,126,195,0
	.byte 16,123,4,128,152,8,0,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,94,128,162,195,0,45,34
	.byte 52,0,0,4,195,0,45,19,194,0,2,166,195,0,45,24,195,0,45,34,195,0,45,53,195,0,45,40,195,0,45,28
	.byte 195,0,45,29,195,0,45,30,195,0,45,31,195,0,45,32,195,0,45,33,195,0,45,37,195,0,45,50,195,0,45,38
	.byte 195,0,45,52,195,0,33,225,195,0,45,45,195,0,45,51,195,0,45,46,195,0,45,48,195,0,45,49,195,0,45,54
	.byte 195,0,45,47,195,0,33,227,195,0,33,226,195,0,33,225,195,0,45,16,195,0,45,13,195,0,33,239,195,0,33,242
	.byte 195,0,33,245,195,0,33,248,195,0,33,251,195,0,33,254,195,0,34,1,195,0,34,4,195,0,34,13,195,0,34,16
	.byte 195,0,34,19,195,0,34,22,195,0,34,25,195,0,34,28,195,0,34,31,195,0,34,34,195,0,34,37,195,0,34,40
	.byte 195,0,34,43,195,0,34,46,195,0,34,49,195,0,34,52,195,0,34,55,195,0,34,58,195,0,34,61,195,0,20,171
	.byte 195,0,20,174,129,34,195,0,34,82,195,0,34,79,195,0,34,76,195,0,34,73,195,0,34,70,195,0,34,67,195,0
	.byte 34,64,195,0,34,61,195,0,34,58,195,0,34,55,195,0,34,52,195,0,34,49,195,0,34,46,195,0,34,43,195,0
	.byte 34,40,195,0,34,37,195,0,34,34,195,0,34,31,195,0,34,28,195,0,34,25,195,0,34,22,195,0,34,19,195,0
	.byte 34,16,195,0,34,13,195,0,34,10,195,0,34,7,195,0,34,4,195,0,34,1,195,0,33,254,195,0,33,251,195,0
	.byte 33,248,195,0,33,245,195,0,33,242,195,0,33,239,195,0,33,236,195,0,33,233,129,39,4,128,144,8,0,0,1,194
	.byte 0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,129,39,128,162,195,0,45,34,80,0,0,4,195,0,45,19,194
	.byte 0,2,166,195,0,45,24,195,0,45,34,195,0,45,53,195,0,45,40,195,0,45,28,195,0,45,29,195,0,45,30,195
	.byte 0,45,31,195,0,45,32,195,0,45,33,195,0,45,37,195,0,45,50,195,0,45,38,195,0,45,52,195,0,19,128,195
	.byte 0,45,45,195,0,45,51,195,0,45,46,195,0,45,48,195,0,45,49,195,0,45,54,195,0,45,47,195,0,19,130,195
	.byte 0,19,129,195,0,19,128,195,0,45,16,195,0,45,13,195,0,18,134,195,0,18,131,195,0,18,128,195,0,18,125,195
	.byte 0,18,122,195,0,18,119,195,0,18,116,195,0,18,113,195,0,18,110,195,0,18,107,195,0,18,103,195,0,18,100,195
	.byte 0,18,97,195,0,18,94,195,0,18,91,195,0,18,88,195,0,18,85,195,0,18,82,195,0,18,79,195,0,18,76,195
	.byte 0,18,73,195,0,18,69,195,0,18,66,195,0,18,63,195,0,18,60,195,0,18,57,195,0,18,54,195,0,18,51,195
	.byte 0,18,48,195,0,18,45,195,0,18,42,195,0,18,39,197,0,5,22,195,0,18,33,195,0,18,30,195,0,18,27,195
	.byte 0,18,24,195,0,18,21,195,0,18,18,195,0,18,15,195,0,18,12,195,0,18,9,195,0,18,6,195,0,19,197,195
	.byte 0,17,255,195,0,17,252,195,0,17,249,195,0,17,246,195,0,17,243,195,0,17,240,195,0,17,237,195,0,17,230,195
	.byte 0,17,227,195,0,17,224,195,0,17,221,197,0,5,21,195,0,17,215,195,0,17,212,195,0,17,209,195,0,17,206,195
	.byte 0,17,203,195,0,17,200,195,0,17,197,195,0,17,194,195,0,17,191,195,0,17,188,195,0,17,185,195,0,17,182,195
	.byte 0,17,179,195,0,17,176,195,0,17,173,195,0,17,170,195,0,17,167,195,0,17,164,195,0,17,161,195,0,17,158,195
	.byte 0,17,154,195,0,17,153,195,0,17,148,195,0,17,145,195,0,17,144,195,0,17,139,195,0,17,138,195,0,17,133,195
	.byte 0,17,132,195,0,17,126,195,0,17,125,195,0,17,120,195,0,17,119,195,0,17,114,195,0,17,113,195,0,17,108,195
	.byte 0,17,105,195,0,17,104,195,0,17,99,195,0,17,98,195,0,17,91,195,0,17,90,195,0,17,85,195,0,17,84,195
	.byte 0,17,79,195,0,17,78,195,0,17,73,195,0,17,72,195,0,17,67,195,0,17,66,195,0,17,61,195,0,17,57,195
	.byte 0,17,54,195,0,17,53,195,0,17,48,195,0,17,47,195,0,17,42,195,0,17,39,195,0,17,38,195,0,17,35,195
	.byte 0,17,32,195,0,17,29,195,0,17,26,195,0,17,23,195,0,17,20,195,0,17,17,195,0,17,14,195,0,17,11,195
	.byte 0,17,6,195,0,17,2,195,0,17,1,195,0,16,252,195,0,16,251,195,0,16,246,195,0,16,243,195,0,16,240,195
	.byte 0,16,237,195,0,16,234,195,0,16,231,195,0,16,228,195,0,16,225,195,0,16,222,195,0,16,221,195,0,16,216,195
	.byte 0,16,215,195,0,16,210,195,0,16,207,195,0,16,206,195,0,16,200,195,0,16,197,195,0,16,194,195,0,16,189,195
	.byte 0,16,188,195,0,16,183,195,0,16,182,195,0,16,177,195,0,16,174,195,0,16,173,195,0,16,168,195,0,16,162,195
	.byte 0,16,161,195,0,16,154,195,0,16,151,195,0,16,150,195,0,16,144,195,0,16,141,195,0,16,138,195,0,16,137,195
	.byte 0,16,132,195,0,16,129,195,0,16,126,195,0,16,123,195,0,19,153,195,0,19,242,195,0,20,28,195,0,16,237,195
	.byte 0,16,240,195,0,16,243,195,0,16,246,195,0,16,251,195,0,17,39,195,0,17,42,195,0,17,119,195,0,17,125,195
	.byte 0,19,162,195,0,17,185,195,0,17,188,195,0,17,191,195,0,19,165,195,0,19,168,195,0,19,171,195,0,17,215,195
	.byte 0,19,180,195,0,19,183,195,0,19,189,195,0,19,193,195,0,19,196,195,0,17,255,195,0,19,200,195,0,19,212,195
	.byte 0,19,215,195,0,19,218,195,0,19,221,195,0,19,224,195,0,19,227,195,0,19,230,195,0,19,233,195,0,19,236,195
	.byte 0,19,248,195,0,19,251,195,0,19,254,195,0,18,69,195,0,18,73,195,0,20,1,195,0,20,4,195,0,20,13,195
	.byte 0,20,16,195,0,20,19,195,0,20,22,195,0,19,177,195,0,19,203,195,0,20,28,195,0,20,25,195,0,20,22,195
	.byte 0,20,19,195,0,20,16,195,0,20,13,195,0,20,10,195,0,20,7,195,0,20,4,195,0,20,1,195,0,19,254,195
	.byte 0,19,251,195,0,19,248,195,0,19,245,195,0,19,242,195,0,19,239,195,0,19,236,195,0,19,233,195,0,19,230,195
	.byte 0,19,227,195,0,19,224,195,0,19,221,195,0,19,218,195,0,19,215,195,0,19,212,129,51,195,0,19,206,195,0,19
	.byte 203,195,0,19,200,195,0,19,196,195,0,19,192,195,0,19,189,195,0,19,186,195,0,19,183,195,0,19,180,195,0,19
	.byte 177,195,0,19,174,195,0,19,171,195,0,19,168,195,0,19,165,195,0,19,162,195,0,19,159,195,0,19,156,195,0,19
	.byte 153,195,0,19,150,195,0,19,147,195,0,19,144,195,0,19,141,195,0,19,138,9,128,160,16,0,0,4,129,62,129,63
	.byte 129,58,194,0,2,164,129,64,129,65,129,64,129,59,129,53,4,128,152,8,0,0,1,194,0,2,169,194,0,2,166,194
	.byte 0,2,165,194,0,2,164,4,128,144,8,0,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,8,128
	.byte 160,16,0,0,4,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,129,85,129,86,129,86,129,85,8,128,168
	.byte 32,0,0,4,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,129,89,129,88,129,88,129,89,5,128,144,8
	.byte 0,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,129,92,255,255,255,255,255,0,128,144,8,0,0
	.byte 1,0,128,144,8,0,0,1,255,255,255,255,255,255,255,255,255,255,4,128,144,8,0,0,1,194,0,2,169,194,0,2
	.byte 166,194,0,2,165,194,0,2,164,4,128,144,8,0,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164
	.byte 4,128,144,8,0,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,144,8,0,0,1,194,0
	.byte 2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,136,8,156,92,0,1,194,0,2,169,194,0,2,166,194,0
	.byte 2,165,194,0,2,164,40,128,162,195,0,45,34,44,0,0,4,195,0,45,19,194,0,2,166,195,0,45,24,195,0,45
	.byte 34,195,0,45,53,195,0,45,40,195,0,45,28,195,0,45,29,195,0,45,30,195,0,45,31,195,0,45,32,195,0,45
	.byte 33,195,0,45,37,195,0,45,50,195,0,45,38,195,0,45,52,195,0,45,39,195,0,45,45,195,0,45,51,195,0,45
	.byte 46,195,0,45,48,195,0,45,49,195,0,45,54,195,0,45,47,195,0,45,42,195,0,45,41,195,0,45,39,195,0,45
	.byte 16,195,0,45,13,129,186,129,187,129,188,129,189,129,190,129,191,129,192,129,193,129,194,195,0,25,159,195,0,25,162,4
	.byte 128,160,20,0,0,4,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,6,128,160,68,0,0,4,194,0,6
	.byte 94,194,0,6,93,194,0,6,95,194,0,2,164,129,202,129,203,6,128,160,20,0,0,4,194,0,6,94,194,0,6,93
	.byte 194,0,6,95,194,0,2,164,129,204,129,205,6,128,160,40,0,0,4,194,0,6,94,194,0,6,93,194,0,6,95,194
	.byte 0,2,164,129,206,129,207,6,128,160,20,0,0,4,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,129,208
	.byte 129,209,4,128,196,129,210,8,4,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,160,12,0
	.byte 0,4,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,6,128,160,60,0,0,4,194,0,6,94,194,0,6
	.byte 93,194,0,6,95,194,0,2,164,129,215,129,216,6,128,160,36,0,0,4,194,0,6,94,194,0,6,93,194,0,6,95
	.byte 194,0,2,164,129,217,129,218,6,128,160,32,0,0,4,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,129
	.byte 219,129,220,6,128,160,68,0,0,4,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,129,221,129,222,6,128
	.byte 160,56,0,0,4,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,129,223,129,224,4,128,160,12,0,0,4
	.byte 194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,6,128,160,40,0,0,4,194,0,6,94,194,0,6,93,194
	.byte 0,6,95,194,0,2,164,129,227,129,228,6,128,160,32,0,0,4,194,0,6,94,194,0,6,93,194,0,6,95,194,0
	.byte 2,164,129,229,129,230,6,128,160,28,0,0,4,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,129,231,129
	.byte 232,4,128,132,129,233,8,128,160,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,132,129,235
	.byte 8,128,140,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,132,129,237,8,146,220,0,1,194
	.byte 0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,132,129,239,8,12,0,1,194,0,2,169,194,0,2,166
	.byte 194,0,2,165,194,0,2,164,4,128,132,129,241,8,137,148,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0
	.byte 2,164,4,128,132,129,243,8,137,184,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,132,129
	.byte 245,8,130,192,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,132,129,247,8,135,216,0,1
	.byte 194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,132,129,249,8,129,52,0,1,194,0,2,169,194,0
	.byte 2,166,194,0,2,165,194,0,2,164,4,128,132,129,251,8,72,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194
	.byte 0,2,164,4,128,132,129,253,8,129,208,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,132
	.byte 129,255,8,4,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,132,130,1,8,130,80,0,1
	.byte 194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,132,130,3,8,144,180,0,1,194,0,2,169,194,0
	.byte 2,166,194,0,2,165,194,0,2,164,4,128,196,130,5,8,160,72,0,1,194,0,2,169,194,0,2,166,194,0,2,165
	.byte 194,0,2,164,4,128,132,130,7,8,8,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,5,128,160
	.byte 12,0,0,4,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,130,10,4,128,196,130,14,8,28,0,1,194
	.byte 0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4,128,160,16,0,0,4,194,0,2,169,194,0,2,166,194,0
	.byte 2,165,194,0,2,164,4,128,196,130,24,8,12,0,1,194,0,2,169,194,0,2,166,194,0,2,165,194,0,2,164,4
	.byte 128,144,20,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,24,0,1,1,194,0,6
	.byte 94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,28,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95
	.byte 194,0,2,164,4,128,144,32,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,36,0
	.byte 1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,40,0,1,1,194,0,6,94,194,0,6
	.byte 93,194,0,6,95,194,0,2,164,4,128,144,44,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164
	.byte 4,128,144,48,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,52,0,1,1,194,0
	.byte 6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,56,0,1,1,194,0,6,94,194,0,6,93,194,0,6
	.byte 95,194,0,2,164,4,128,144,60,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,64
	.byte 0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,68,0,1,1,194,0,6,94,194,0
	.byte 6,93,194,0,6,95,194,0,2,164,4,128,144,72,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2
	.byte 164,4,128,144,76,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,84,0,1,1,194
	.byte 0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,92,0,1,1,194,0,6,94,194,0,6,93,194,0
	.byte 6,95,194,0,2,164,4,128,144,96,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144
	.byte 100,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,104,0,1,1,194,0,6,94,194
	.byte 0,6,93,194,0,6,95,194,0,2,164,4,128,144,108,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0
	.byte 2,164,4,128,144,112,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,124,0,1,1
	.byte 194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,128,128,0,1,1,194,0,6,94,194,0,6,93
	.byte 194,0,6,95,194,0,2,164,4,128,144,128,148,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164
	.byte 4,128,144,128,176,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,129,20,0,1,1
	.byte 194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,129,56,0,1,1,194,0,6,94,194,0,6,93
	.byte 194,0,6,95,194,0,2,164,4,128,144,129,184,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164
	.byte 4,128,144,129,212,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,129,240,0,1,1
	.byte 194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164,4,128,144,129,248,0,1,1,194,0,6,94,194,0,6,93
	.byte 194,0,6,95,194,0,2,164,4,128,144,130,4,0,1,1,194,0,6,94,194,0,6,93,194,0,6,95,194,0,2,164
	.byte 115,103,101,110,0
.section .text
runtime_version:
	.string ""
.section .text
assembly_guid:
	.string "CE481606-B46F-4585-84D9-BBB7D2D706D7"
.section .text
assembly_name:
	.string "CommunityToolkit.Maui.Core"
.section .data
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 183,0
	.balign 4
	.long mono_aot_CommunityToolkit_Maui_Core_got
	.balign 4
	.long 0
	.balign 4
	.long 0
	.balign 4
	.long 0
	.balign 4
	.long 0
	.balign 4
	.long jit_code_start
	.balign 4
	.long jit_code_end
	.balign 4
	.long method_addresses
	.balign 4
	.long 0
	.balign 4
	.long 0
	.balign 4
	.long blob
	.balign 4
	.long class_name_table
	.balign 4
	.long class_info_offsets
	.balign 4
	.long method_info_offsets
	.balign 4
	.long ex_info_offsets
	.balign 4
	.long extra_method_info_offsets
	.balign 4
	.long extra_method_table
	.balign 4
	.long got_info_offsets
	.balign 4
	.long 0
	.balign 4
	.long image_table
	.balign 4
	.long weak_field_indexes
	.balign 4
	.long method_flags_table
	.balign 4
	.long mem_end
	.balign 4
	.long assembly_guid
	.balign 4
	.long runtime_version
	.balign 4
	.long 0
	.balign 4
	.long 0
	.balign 4
	.long 0
	.balign 4
	.long 0
	.balign 4
	.long 0
	.balign 4
	.long 0
	.balign 4
	.long 0
	.balign 4
	.long assembly_name
	.balign 4
	.long plt
	.balign 4
	.long plt_end
	.balign 4
	.long unwind_info
	.balign 4
	.long unbox_trampolines
	.balign 4
	.long unbox_trampolines_end
	.balign 4
	.long unbox_trampoline_addresses

	.long 23,23,112,88,5,540,0,32
	.long 374417919,0,6400,128,4,4,7,9
	.long 0,0,5,22,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0
	.byte 80,104,149,42,227,96,79,196,10,226,149,112,93,112,25,197
.section .debug_info
.LTDIE_0:

	.byte 17
	.string "System_Collections_Generic_IEnumerable`1"

	.byte 8,7
	.string "System_Collections_Generic_IEnumerable`1"

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
	.byte 2
	.string "CommunityToolkit.Maui.Core.Extensions.ObservableCollectionExtensions:ToObservableCollection<T_REF>"
	.string "CommunityToolkit_Maui_Core_Extensions_ObservableCollectionExtensions_ToObservableCollection_T_REF_System_Collections_Generic_IEnumerable_1_T_REF"

	.byte 1,15
	.string "CommunityToolkit.Maui.Core.Extensions.ObservableCollectionExtensions:ToObservableCollection<T_REF>"
	.long .Lm_1a8
	.long .Lme_1a8

	.byte 2,118,16,3
	.string "collection"

.LDIFF_SYM6=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM6
	.byte 2,116,8,0

.section .debug_frame

.LDIFF_SYM7=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM7
.Lfde0_start:

	.long 0
	.balign 4
	.long .Lm_1a8

.LDIFF_SYM8=.Lme_1a8 - .Lm_1a8
	.long .LDIFF_SYM8
	.byte 65,14,8,132,2,66,13,4,65,131,3
	.balign 4
.Lfde0_end:

.section .debug_info

	.byte 0
.Ldebug_info_end:
.section .debug_line
.Ldebug_line_section_start:
.Ldebug_line_start:

	.long .Ldebug_line_end - . -4
	.short 2
	.long .Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section .debug_line

	.byte 0
	.string "/_/src/CommunityToolkit.Maui.Core/Extensions/ObservableCollectionExtensions.shared.cs"

	.byte 0,0,0
	.string "<unknown>"

	.byte 0,0,0,0
.Ldebug_line_header_end:
.section .debug_line

	.byte 0,5,2
	.long .Lm_1a8

	.byte 4,1,1,10,3,14,2,10,1,2,229,0,1,0,1,1,0,1,1
.Ldebug_line_end:
.section .text
	.balign 8
mem_end:
