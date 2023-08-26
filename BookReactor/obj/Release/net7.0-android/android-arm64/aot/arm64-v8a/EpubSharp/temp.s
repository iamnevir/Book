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
	.byte 8,1
	.string "Mono AOT Compiler 7.0.10.0 (7.0.10 @Commit: a6dbb800a47735bde43187350fd3aff4071c7f9c)"
	.string "EpubSharp.dll"
	.string ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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

	.byte 4,8,5
	.string "intptr"
.LDIE_U:

	.byte 4,8,7
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

	.byte 4,8,1
	.string "string"
.LDIE_OBJECT:

	.byte 4,8,1
	.string "object"
.LDIE_SZARRAY:

	.byte 4,8,1
	.string "object"
.section ".debug_loc"
.subsection 0
.Ldebug_loc_start:
.section ".debug_frame"
.subsection 0
	.balign 8

.LDIFF_SYM2=.Lcie0_end - .Lcie0_start
	.long .LDIFF_SYM2
.Lcie0_start:

	.long -1
	.byte 3
	.string ""

	.byte 1,120,30
	.balign 8
.Lcie0_end:
.text 0
	.balign 8
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text 0
	.balign 16
.Lm_6b:
	.local EpubSharp_XmlExt_AsObjectList_T_REF_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement_System_Func_2_System_Xml_Linq_XElement_T_REF
	.type EpubSharp_XmlExt_AsObjectList_T_REF_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement_System_Func_2_System_Xml_Linq_XElement_T_REF,@function
EpubSharp_XmlExt_AsObjectList_T_REF_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement_System_Func_2_System_Xml_Linq_XElement_T_REF:
.inst 0xa9bb7bfd
.inst 0x910003fd
.inst 0xa9016bb9
.inst 0xf90017af
.inst 0xaa0003f9
.inst 0xf90013a1

adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x1, [x16, 176]
.inst 0xf94017a0
bl .Lp_2
.inst 0xf94017a0
.inst 0xf940100f
.inst 0xaa1903e0
.inst 0xf94013a1
bl .Lp_3
.inst 0xf9001ba0
.inst 0xf94017a0
.inst 0xf9401400
.inst 0x3980b410
.inst 0xb5000050
bl .Lp_4
.inst 0xf9401ba2
.inst 0xf94017a0
.inst 0xf9401800
.inst 0xf9400400
.inst 0xaa0003e1
.inst 0xaa0203fa
.inst 0xaa0103f9
.inst 0xb50007a0
.inst 0xf94017a0
.inst 0xf9401400
.inst 0x3980b410
.inst 0xb5000050
bl .Lp_4
.inst 0xf94017a0
.inst 0xf9401800
.inst 0xf9400000
.inst 0xf90023a0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000840
.inst 0xf94017a0
.inst 0xf9401c00
.inst 0xd2801001
bl .Lp_5
.inst 0xf9001fa0
.inst 0xf94023a1
.inst 0xeb1f003f
.inst 0x10000011
.inst 0x540006c0
.inst 0xd5033bbf
.inst 0xf9401fa0
.inst 0xf9001001
.inst 0x91008002
.inst 0xd349fc42
.inst 0xd29ffffe
.inst 0xf2a00ffe
.inst 0x8a1e0042

adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0xf94017a1
.inst 0xf9402021
.inst 0xf9002001
.inst 0xf94017a1
.inst 0xf9402421
.inst 0xf9400822
.inst 0xf9001402
.inst 0xf9401822
.inst 0xf9000c02
.inst 0xf9401421
.inst 0xf9000801
.inst 0x3901c01f
.inst 0xf9001ba0
.inst 0xf94017a0
.inst 0xf9401400
.inst 0x3980b410
.inst 0xb5000050
bl .Lp_4
.inst 0xf94017a0
.inst 0xf9401800
.inst 0x91002001
.inst 0xd5033bbf
.inst 0xf9401ba0
.inst 0xf9000020
.inst 0xaa0003f9
.inst 0xf94017a0
.inst 0xf9400c00
.inst 0xf940000f
.inst 0xaa1a03e0
.inst 0xaa1903e1
bl .Lp_6
.inst 0xf94017a1
.inst 0xf9400c21
.inst 0xf940042f
bl .Lp_7
.inst 0xa9416bb9
.inst 0x910003bf
.inst 0xa8c57bfd
.inst 0xd65f03c0
.inst 0xd2801fa0
.inst 0xaa1103e1
bl .Lp_8
.inst 0xd2800e20
.inst 0xaa1103e1
bl .Lp_8

	.size EpubSharp_XmlExt_AsObjectList_T_REF_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement_System_Func_2_System_Xml_Linq_XElement_T_REF,.-EpubSharp_XmlExt_AsObjectList_T_REF_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement_System_Func_2_System_Xml_Linq_XElement_T_REF
.Lme_6b:
.text 0
	.balign 16
.Lm_1ce:
	.local EpubSharp_XmlExt__c__1_1_T_REF__cctor
	.type EpubSharp_XmlExt__c__1_1_T_REF__cctor,@function
EpubSharp_XmlExt__c__1_1_T_REF__cctor:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000baf

adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x1, [x16, 184]
.inst 0xf9400ba0
bl .Lp_2
.inst 0xf9400ba0
.inst 0xf9401000
.inst 0xd2800201
bl .Lp_5
.inst 0xf90017a0
bl .Lp_9
.inst 0xf94017a1
.inst 0xf9400ba0
.inst 0xf9401400
.inst 0xf90013a0
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf9000001
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size EpubSharp_XmlExt__c__1_1_T_REF__cctor,.-EpubSharp_XmlExt__c__1_1_T_REF__cctor
.Lme_1ce:
.text 0
	.balign 16
.Lm_1cf:
	.local EpubSharp_XmlExt__c__1_1_T_REF__ctor
	.type EpubSharp_XmlExt__c__1_1_T_REF__ctor,@function
EpubSharp_XmlExt__c__1_1_T_REF__ctor:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size EpubSharp_XmlExt__c__1_1_T_REF__ctor,.-EpubSharp_XmlExt__c__1_1_T_REF__ctor
.Lme_1cf:
.text 0
	.balign 16
.Lm_1d0:
	.local EpubSharp_XmlExt__c__1_1_T_REF__AsObjectListb__1_0_T_REF
	.type EpubSharp_XmlExt__c__1_1_T_REF__AsObjectListb__1_0_T_REF,@function
EpubSharp_XmlExt__c__1_1_T_REF__AsObjectListb__1_0_T_REF:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf9400fa0
.inst 0xeb1f001f
.inst 0x9a9f97e0
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size EpubSharp_XmlExt__c__1_1_T_REF__AsObjectListb__1_0_T_REF,.-EpubSharp_XmlExt__c__1_1_T_REF__AsObjectListb__1_0_T_REF
.Lme_1d0:
.text 0
	.balign 8
jit_code_end:

	.byte 0,0,0,0
.section ".data.rel.ro"
.subsection 0
	.balign 8
method_addresses:
	.local method_addresses
	.type method_addresses,@object
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_6b
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_1ce
bl .Lm_1cf
bl .Lm_1d0
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
method_addresses_end:

.text 0
	.balign 8
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text 0
	.balign 8
unbox_trampoline_addresses:

	.long 0
.text 0
	.balign 8
method_info_offsets:

	.byte 18,2,0,0,10,0,0,0,53,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,70,0
	.byte 80,0,90,0,100,0,114,0,124,0,134,0,144,0,154,0,164,0,174,0,184,0,194,0,204,0,214,0,224,0,234,0
	.byte 244,0,254,0,8,1,18,1,28,1,38,1,48,1,58,1,68,1,78,1,88,1,98,1,108,1,118,1,128,1,138,1
	.byte 148,1,158,1,168,1,178,1,188,1,198,1,208,1,222,1,232,1,242,1,252,1,6,2,16,2,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,1,255,255,255,255,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,27,8,6,255,255,255,255,215,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text 0
	.balign 8
method_flags_table:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text 0
	.balign 8
extra_method_table:

	.byte 11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0
.text 0
	.balign 8
extra_method_info_offsets:

	.byte 0,0,0,0
.text 0
	.balign 8
class_name_table:

	.byte 251,0,24,0,0,0,35,0,13,1,0,0,0,0,44,0,0,0,0,0,0,0,0,0,0,0,53,0,0,0,68,0
	.byte 0,0,89,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,59,0,0,0,0,0,0,0,13,0
	.byte 19,1,0,0,0,0,92,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,15,1,0,0,0,0,40,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,19,0
	.byte 3,1,0,0,0,0,23,0,11,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,112,0,0,0,45,0
	.byte 0,0,0,0,0,0,0,0,0,0,67,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,51,0
	.byte 0,0,0,0,0,0,0,0,0,0,69,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,42,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,66,0,0,0,87,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,251,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,96,0,0,0,41,0,5,1,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,105,0,0,0,0,0,0,0,50,0
	.byte 0,0,0,0,0,0,75,0,20,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,47,0,0,0,0,0,0,0,0,0,0,0,94,0,0,0,0,0,0,0,0,0,0,0,86,0,16,1,15,0
	.byte 0,0,8,0,0,0,52,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,106,0
	.byte 0,0,82,0,0,0,25,0,4,1,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,0,0,81,0,0,0,0,0,0,0,0,0
	.byte 0,0,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70,0
	.byte 0,0,0,0,0,0,33,0,9,1,61,0,0,0,98,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,9,0,0,1,0,0,0,0,113,0,0,0,0,0,0,0,60,0,0,0,10,0,17,1,0,0,0,0,73,0
	.byte 0,0,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,64,0,0,0,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,7,0,7,1,29,0,8,1,79,0,0,0,80,0,0,0,76,0,10,1,0,0,0,0,90,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,72,0,0,0,85,0,0,0,0,0,0,0,34,0,0,0,0,0,0,0,104,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,26,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,18,0,253,0,0,0,0,0,58,0,0,0,93,0,0,0,63,0,0,0,0,0,0,0,0,0
	.byte 0,0,39,0,0,0,37,0,6,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,12,1,74,0,0,0,43,0
	.byte 1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,21,0,0,0,38,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,255,0,36,0,0,0,0,0,0,0,5,0
	.byte 2,1,0,0,0,0,100,0,0,0,0,0,0,0,110,0,0,0,0,0,0,0,95,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,103,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,14,0,0,0,0,0,0,0,3,0,252,0,17,0,254,0,28,0,0,0,32,0,0,0,46,0
	.byte 0,0,48,0,0,0,49,0,0,0,55,0,18,1,56,0,0,0,57,0,0,0,65,0,0,0,71,0,0,0,77,0
	.byte 0,0,78,0,0,0,84,0,0,0,88,0,0,0,91,0,0,0,97,0,14,1,99,0,0,0,101,0,0,0,107,0
	.byte 0,0,108,0,0,0,109,0,0,0,111,0,0,0,114,0,0,0,115,0,0,0
.text 0
	.balign 8
got_info_offsets:

	.byte 24,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,10,0,20,0,47,2,1,1,1,1,1,1,1,2
	.byte 60,2,2,2,3,2,2,2,3,2,83,3,45,91
.text 0
	.balign 8
ex_info_offsets:

	.byte 18,2,0,0,10,0,0,0,53,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,70,0
	.byte 80,0,90,0,100,0,115,0,125,0,135,0,145,0,155,0,165,0,175,0,185,0,195,0,205,0,215,0,225,0,235,0
	.byte 245,0,255,0,9,1,19,1,29,1,39,1,49,1,59,1,69,1,79,1,89,1,99,1,109,1,119,1,129,1,139,1
	.byte 149,1,159,1,169,1,179,1,189,1,199,1,209,1,224,1,234,1,244,1,254,1,8,2,18,2,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,129,57,255,255,255,254,199,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,129,236,65,39,255,255,255,253,172,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text 1
	.balign 8
unwind_info:

	.byte 18,12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7,13,12,31,0,68,14,48,157,6,158,5,68,13
	.byte 29,13,12,31,0,68,14,32,157,4,158,3,68,13,29
.text 0
	.balign 8
class_info_offsets:

	.byte 115,0,0,0,10,0,0,0,12,0,0,0,2,0,0,0,0,0,11,0,22,0,33,0,44,0,55,0,66,0,77,0
	.byte 88,0,99,0,110,0,121,0,130,131,7,23,23,20,23,23,23,23,23,131,115,52,52,23,99,23,23,23,24,23,132,224
	.byte 23,23,24,99,24,23,25,23,23,134,22,23,23,23,25,23,23,23,21,99,135,72,23,23,23,23,23,23,25,26,99,136
	.byte 127,24,23,23,23,23,23,21,23,21,137,98,21,23,23,23,23,23,23,23,23,138,70,25,23,25,23,23,25,23,23,23
	.byte 139,50,23,25,5,23,25,25,25,25,25,140,20,25,25,25,25,23,25,25,25,25,141,12,25,25,23,25,25,25,25,25
	.byte 23,142,2,25,23,25,23

.text 0
	.balign 16
plt:
mono_aot_EpubSharp_plt:
	.local plt__jit_icall_mono_threads_state_poll
	.type plt__jit_icall_mono_threads_state_poll,@function
plt__jit_icall_mono_threads_state_poll:
.Lp_1:
adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x16, [x16, 200]
br x16
.inst 242
	.size plt__jit_icall_mono_threads_state_poll,.-plt__jit_icall_mono_threads_state_poll
	.local plt__jit_icall_mini_init_method_rgctx
	.type plt__jit_icall_mini_init_method_rgctx,@function
plt__jit_icall_mini_init_method_rgctx:
.Lp_2:
adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x16, [x16, 208]
br x16
.inst 245
	.size plt__jit_icall_mini_init_method_rgctx,.-plt__jit_icall_mini_init_method_rgctx
	.local plt_System_Linq_Enumerable_Select_System_Xml_Linq_XElement_T_REF_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement_System_Func_2_System_Xml_Linq_XElement_T_REF
	.type plt_System_Linq_Enumerable_Select_System_Xml_Linq_XElement_T_REF_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement_System_Func_2_System_Xml_Linq_XElement_T_REF,@function
plt_System_Linq_Enumerable_Select_System_Xml_Linq_XElement_T_REF_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement_System_Func_2_System_Xml_Linq_XElement_T_REF:
.Lp_3:
adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x16, [x16, 216]
br x16
.inst 248
	.size plt_System_Linq_Enumerable_Select_System_Xml_Linq_XElement_T_REF_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement_System_Func_2_System_Xml_Linq_XElement_T_REF,.-plt_System_Linq_Enumerable_Select_System_Xml_Linq_XElement_T_REF_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement_System_Func_2_System_Xml_Linq_XElement_T_REF
	.local plt__jit_icall_mono_generic_class_init
	.type plt__jit_icall_mono_generic_class_init,@function
plt__jit_icall_mono_generic_class_init:
.Lp_4:
adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x16, [x16, 224]
br x16
.inst 261
	.size plt__jit_icall_mono_generic_class_init,.-plt__jit_icall_mono_generic_class_init
	.local plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.type plt_wrapper_alloc_object_AllocSmall_intptr_intptr,@function
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
.Lp_5:
adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x16, [x16, 232]
br x16
.inst 264
	.size plt_wrapper_alloc_object_AllocSmall_intptr_intptr,.-plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.local plt_System_Linq_Enumerable_Where_T_REF_System_Collections_Generic_IEnumerable_1_T_REF_System_Func_2_T_REF_bool
	.type plt_System_Linq_Enumerable_Where_T_REF_System_Collections_Generic_IEnumerable_1_T_REF_System_Func_2_T_REF_bool,@function
plt_System_Linq_Enumerable_Where_T_REF_System_Collections_Generic_IEnumerable_1_T_REF_System_Func_2_T_REF_bool:
.Lp_6:
adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x16, [x16, 240]
br x16
.inst 272
	.size plt_System_Linq_Enumerable_Where_T_REF_System_Collections_Generic_IEnumerable_1_T_REF_System_Func_2_T_REF_bool,.-plt_System_Linq_Enumerable_Where_T_REF_System_Collections_Generic_IEnumerable_1_T_REF_System_Func_2_T_REF_bool
	.local plt_System_Linq_Enumerable_ToList_T_REF_System_Collections_Generic_IEnumerable_1_T_REF
	.type plt_System_Linq_Enumerable_ToList_T_REF_System_Collections_Generic_IEnumerable_1_T_REF,@function
plt_System_Linq_Enumerable_ToList_T_REF_System_Collections_Generic_IEnumerable_1_T_REF:
.Lp_7:
adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x16, [x16, 248]
br x16
.inst 285
	.size plt_System_Linq_Enumerable_ToList_T_REF_System_Collections_Generic_IEnumerable_1_T_REF,.-plt_System_Linq_Enumerable_ToList_T_REF_System_Collections_Generic_IEnumerable_1_T_REF
	.local plt__jit_icall_mono_arch_throw_corlib_exception
	.type plt__jit_icall_mono_arch_throw_corlib_exception,@function
plt__jit_icall_mono_arch_throw_corlib_exception:
.Lp_8:
adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x16, [x16, 256]
br x16
.inst 298
	.size plt__jit_icall_mono_arch_throw_corlib_exception,.-plt__jit_icall_mono_arch_throw_corlib_exception
	.local plt_EpubSharp_XmlExt__c__1_1_T_REF__ctor
	.type plt_EpubSharp_XmlExt__c__1_1_T_REF__ctor,@function
plt_EpubSharp_XmlExt__c__1_1_T_REF__ctor:
.Lp_9:
adrp x16, mono_aot_EpubSharp_got+0
add x16, x16, :lo12:mono_aot_EpubSharp_got
ldr x16, [x16, 264]
br x16
.inst 300
	.size plt_EpubSharp_XmlExt__c__1_1_T_REF__ctor,.-plt_EpubSharp_XmlExt__c__1_1_T_REF__ctor
	.size mono_aot_EpubSharp_plt,.-mono_aot_EpubSharp_plt
plt_end:
.text 0
	.balign 8
image_table:

	.byte 4,0,0,0,69,112,117,98,83,104,97,114,112,0,57,56,57,55,66,51,67,48,45,52,51,69,70,45,52,52,70,56
	.byte 45,65,56,66,65,45,53,50,56,51,54,53,49,49,53,53,69,51,0,0,0,0,0,0,0,0,0,0,1,0,0,0
	.byte 1,0,0,0,5,0,0,0,0,0,0,0,83,121,115,116,101,109,46,76,105,110,113,0,70,49,53,56,52,67,57,49
	.byte 45,67,54,52,55,45,52,53,56,69,45,56,50,57,70,45,48,67,70,65,52,56,50,54,52,50,51,70,0,0,98,48
	.byte 51,102,53,102,55,102,49,49,100,53,48,97,51,97,0,0,1,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,83,121,115,116,101,109,46,80,114,105,118,97,116,101,46,88,109,108,46,76,105,110,113,0,48,65,68,57
	.byte 54,66,68,55,45,52,65,65,49,45,52,52,51,68,45,65,48,65,65,45,57,65,65,70,66,51,56,52,48,57,68,66
	.byte 0,0,99,99,55,98,49,51,102,102,99,100,50,100,100,100,53,49,0,0,0,0,0,0,1,0,0,0,7,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116,101,109,46,80,114,105,118,97,116,101,46,67,111,114,101,76
	.byte 105,98,0,50,52,55,69,67,50,56,67,45,67,54,69,53,45,52,66,55,55,45,56,67,70,51,45,57,50,53,57,54
	.byte 52,50,48,69,67,68,48,0,0,55,99,101,99,56,53,100,55,98,101,97,55,55,57,56,101,0,0,0,0,0,0,0
	.byte 1,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text 0
	.balign 8
weak_field_indexes:

	.byte 0,0,0,0
.section ".bss"
.subsection 0
	.balign 8
	.local mono_aot_EpubSharp_got
	.type mono_aot_EpubSharp_got,@object
mono_aot_EpubSharp_got:
	.skip 272
got_end:
.text 0
	.balign 8
blob:

	.byte 0,107,0,0,0,1,22,5,0,19,0,1,0,1,83,5,1,28,7,7,1,7,15,4,1,83,20,206,1,0,0,7
	.byte 23,1,23,207,1,0,0,7,23,208,1,0,0,7,23,11,0,35,37,45,49,51,31,47,54,8,54,9,54,10,54,11
	.byte 54,12,54,128,255,6,89,6,98,6,103,6,129,5,6,92,6,128,171,6,128,149,6,128,148,5,0,30,0,1,255,255
	.byte 255,255,255,108,5,1,28,7,89,1,7,100,2,2,19,2,7,100,4,1,83,105,2,7,100,2,128,128,3,4,2,128
	.byte 168,3,118,65,255,253,0,0,0,1,21,0,108,2,105,8,10,255,253,0,0,0,2,6,1,1,78,2,108,3,7,114
	.byte 0,7,114,3,7,125,13,255,253,0,0,0,7,114,0,129,209,1,105,32,7,125,1,255,253,0,0,0,7,114,0,129
	.byte 209,1,105,0,10,255,253,0,0,0,2,6,1,1,109,2,105,10,255,253,0,0,0,2,6,1,1,102,2,105,65,255
	.byte 253,0,0,0,7,23,0,129,207,1,20,2,3,7,23,0,7,23,6,129,5,6,129,21,3,255,253,0,0,0,2,6
	.byte 1,1,78,2,108,6,128,162,3,255,252,0,0,0,17,2,3,255,253,0,0,0,2,6,1,1,109,2,105,3,255,253
	.byte 0,0,0,2,6,1,1,102,2,105,6,110,3,255,253,0,0,0,7,23,0,129,208,1,20,11,0,2,1,15,16,0
	.byte 29,40,16,0,11,255,253,0,0,0,1,21,0,108,2,105,0,0,10,0,136,1,14,48,72,248,4,10,32,128,141,129
	.byte 168,68,129,208,0,63,0,68,2,4,0,4,0,8,0,8,5,4,0,4,0,20,0,4,5,4,255,255,255,255,246,4
	.byte 10,4,1,4,0,0,3,8,0,4,0,16,0,4,5,8,0,4,0,12,0,4,0,4,0,12,0,4,0,8,0,8
	.byte 0,4,0,4,0,4,0,12,0,12,0,4,0,8,0,4,0,4,0,8,0,4,0,4,0,4,0,4,0,4,0,4
	.byte 0,4,12,12,0,4,0,16,0,4,0,4,0,8,255,255,255,255,255,4,6,8,0,4,0,4,0,4,0,4,0,4
	.byte 5,4,0,4,0,4,0,0,5,4,1,0,11,19,2,1,15,12,0,29,16,12,0,12,255,253,0,0,0,7,23,0
	.byte 129,207,1,20,0,0,6,0,112,10,56,10,48,31,108,56,120,0,13,0,56,0,4,0,4,0,4,0,4,0,4,0
	.byte 0,0,8,5,4,0,8,0,8,5,4,1,0,11,33,2,1,0,12,0,29,16,12,0,12,255,253,0,0,0,7,23
	.byte 0,129,208,1,20,0,0,2,12,24,9,12,12,24,0,2,6,12,1,0,11,33,2,1,0,12,0,29,16,12,0,12
	.byte 255,253,0,0,0,7,23,0,129,209,1,20,0,0,4,0,32,18,24,15,28,16,40,0,5,0,16,7,4,0,4,2
	.byte 4,1,0,0,128,144,16,0,0,1,4,128,160,24,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2
	.byte 165,4,128,232,56,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,48,0,0,8,195
	.byte 0,2,170,195,0,2,167,28,195,0,2,165,4,128,160,56,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195
	.byte 0,2,165,4,128,160,40,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,48,0,0
	.byte 8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,48,0,0,8,195,0,2,170,195,0,2,167
	.byte 195,0,2,166,195,0,2,165,4,128,160,48,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,11
	.byte 128,160,128,144,0,0,8,195,0,2,170,195,0,2,167,195,0,2,133,195,0,2,165,195,0,2,132,195,0,2,137,195
	.byte 0,2,132,195,0,2,131,195,0,2,130,195,0,2,127,195,0,2,126,11,128,160,128,144,0,0,8,195,0,2,170,195
	.byte 0,2,167,195,0,2,133,195,0,2,165,195,0,2,132,195,0,2,137,195,0,2,132,195,0,2,131,195,0,2,130,195
	.byte 0,2,127,195,0,2,126,11,128,160,128,144,0,0,8,195,0,2,170,195,0,2,167,195,0,2,133,195,0,2,165,195
	.byte 0,2,132,195,0,2,137,195,0,2,132,195,0,2,131,195,0,2,130,195,0,2,127,195,0,2,126,4,128,152,16,0
	.byte 0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,23,128,144,20,0,0,4,195,0,2,51,195,0,2
	.byte 50,195,0,2,52,195,0,2,165,195,0,2,53,195,0,2,54,195,0,2,57,195,0,2,58,195,0,2,59,195,0,2
	.byte 60,195,0,2,61,195,0,2,62,195,0,2,63,195,0,2,64,195,0,2,65,195,0,2,66,195,0,2,67,195,0,2
	.byte 68,195,0,2,69,195,0,2,70,195,0,2,71,195,0,2,56,195,0,2,72,4,128,168,48,0,0,8,195,0,2,170
	.byte 195,0,2,167,195,0,2,166,195,0,2,165,4,128,144,16,0,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195
	.byte 0,2,165,4,128,160,32,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,132,103,16,16
	.byte 0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,144,16,0,0,1,195,0,2,170,195,0,2
	.byte 167,195,0,2,166,195,0,2,165,4,128,144,16,0,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165
	.byte 4,128,152,16,0,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,152,16,0,0,1,195,0
	.byte 2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,118,16,88,0,1,195,0,2,170,195,0,2,167,195,0
	.byte 2,166,195,0,2,165,23,128,144,20,0,0,4,195,0,2,51,195,0,2,50,195,0,2,52,195,0,2,165,195,0,2
	.byte 53,195,0,2,54,195,0,2,57,195,0,2,58,195,0,2,59,195,0,2,60,195,0,2,61,195,0,2,62,195,0,2
	.byte 63,195,0,2,64,195,0,2,65,195,0,2,66,195,0,2,67,195,0,2,68,195,0,2,69,195,0,2,70,195,0,2
	.byte 71,195,0,2,56,195,0,2,72,4,128,204,120,16,16,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2
	.byte 165,4,128,160,48,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,128,130,16,80,0
	.byte 1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,32,0,0,8,195,0,2,170,195,0,2,167
	.byte 195,0,2,166,195,0,2,165,4,128,160,48,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4
	.byte 128,168,64,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,168,40,0,0,8,195,0,2
	.byte 170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,32,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166
	.byte 195,0,2,165,4,128,168,56,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,128,181
	.byte 16,120,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,64,0,0,8,195,0,2,170,195
	.byte 0,2,167,195,0,2,166,195,0,2,165,4,128,168,40,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0
	.byte 2,165,4,128,160,32,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,168,64,0,0,8
	.byte 195,0,2,170,195,0,2,167,128,219,195,0,2,165,23,128,144,20,0,0,4,195,0,2,51,195,0,2,50,195,0,2
	.byte 52,195,0,2,165,195,0,2,53,195,0,2,54,195,0,2,57,195,0,2,58,195,0,2,59,195,0,2,60,195,0,2
	.byte 61,195,0,2,62,195,0,2,63,195,0,2,64,195,0,2,65,195,0,2,66,195,0,2,67,195,0,2,68,195,0,2
	.byte 69,195,0,2,70,195,0,2,71,195,0,2,56,195,0,2,72,4,128,160,32,0,0,8,195,0,2,170,195,0,2,167
	.byte 195,0,2,166,195,0,2,165,4,128,160,24,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4
	.byte 128,168,64,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,48,0,0,8,195,0,2
	.byte 170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,56,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166
	.byte 195,0,2,165,4,128,168,32,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,168,32,0
	.byte 0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,15,16,24,0,1,195,0,2,170,195
	.byte 0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,16,16,128,192,0,1,195,0,2,170,195,0,2,167,195,0,2
	.byte 166,195,0,2,165,23,128,144,20,0,0,4,195,0,2,51,195,0,2,50,195,0,2,52,195,0,2,165,195,0,2,53
	.byte 195,0,2,54,195,0,2,57,195,0,2,58,195,0,2,59,195,0,2,60,195,0,2,61,195,0,2,62,195,0,2,63
	.byte 195,0,2,64,195,0,2,65,195,0,2,66,195,0,2,67,195,0,2,68,195,0,2,69,195,0,2,70,195,0,2,71
	.byte 195,0,2,56,195,0,2,72,4,128,168,56,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4
	.byte 128,168,128,144,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,168,32,0,0,8,195,0
	.byte 2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,168,48,0,0,8,195,0,2,170,195,0,2,167,195,0,2
	.byte 166,195,0,2,165,4,128,168,40,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,168,64
	.byte 0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,232,24,0,0,8,195,0,2,170,195,0
	.byte 2,167,195,0,2,166,195,0,2,165,4,128,168,80,0,0,8,195,0,2,170,195,0,2,167,129,123,195,0,2,165,4
	.byte 128,168,32,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,168,48,0,0,8,195,0,2
	.byte 170,195,0,2,167,129,138,195,0,2,165,4,128,160,24,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0
	.byte 2,165,4,128,168,40,0,0,8,195,0,2,170,195,0,2,167,129,149,195,0,2,165,4,128,144,16,0,0,1,195,0
	.byte 2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,144,16,0,0,1,195,0,2,170,195,0,2,167,195,0,2
	.byte 166,195,0,2,165,4,128,144,16,0,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,144,16
	.byte 0,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,152,16,0,0,1,195,0,2,170,195,0
	.byte 2,167,195,0,2,166,195,0,2,165,4,128,152,16,0,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2
	.byte 165,4,128,152,16,0,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,152,16,0,0,1,195
	.byte 0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,136,16,6,0,1,195,0,2,170,195,0,2,167,195,0
	.byte 2,166,195,0,2,165,4,128,196,129,171,16,16,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4
	.byte 128,160,24,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,176,16,48,0,1,195
	.byte 0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,24,0,0,8,195,0,2,170,195,0,2,167,195,0
	.byte 2,166,195,0,2,165,4,128,160,32,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196
	.byte 129,187,16,32,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,24,0,0,8,195,0,2
	.byte 170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,40,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166
	.byte 195,0,2,165,4,128,160,24,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,24,0
	.byte 0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,24,0,0,8,195,0,2,170,195,0,2
	.byte 167,195,0,2,166,195,0,2,165,4,128,196,129,204,16,16,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0
	.byte 2,165,255,255,255,255,255,4,128,160,32,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128
	.byte 196,129,212,16,8,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,217,16,48,0,1
	.byte 195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,218,16,24,0,1,195,0,2,170,195,0,2
	.byte 167,195,0,2,166,195,0,2,165,4,128,204,129,219,16,32,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0
	.byte 2,165,4,128,196,129,220,16,24,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,221
	.byte 16,32,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,222,16,40,0,1,195,0,2
	.byte 170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,223,16,16,0,1,195,0,2,170,195,0,2,167,195,0
	.byte 2,166,195,0,2,165,4,128,196,129,226,16,16,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4
	.byte 128,196,129,227,16,8,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,24,0,0,8,195
	.byte 0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,230,16,24,0,1,195,0,2,170,195,0,2,167
	.byte 195,0,2,166,195,0,2,165,4,128,196,129,234,16,16,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2
	.byte 165,4,128,196,129,237,16,8,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,238,16
	.byte 24,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,239,16,16,0,1,195,0,2,170
	.byte 195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,240,16,48,0,1,195,0,2,170,195,0,2,167,195,0,2
	.byte 166,195,0,2,165,4,128,196,129,241,16,16,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128
	.byte 160,24,0,0,8,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,246,16,64,0,1,195,0
	.byte 2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,247,16,8,0,1,195,0,2,170,195,0,2,167,195
	.byte 0,2,166,195,0,2,165,4,128,196,129,248,16,32,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165
	.byte 4,128,196,129,249,16,24,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,129,250,16,32
	.byte 0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,160,24,0,0,8,195,0,2,170,195,0,2
	.byte 167,195,0,2,166,195,0,2,165,4,128,196,130,1,16,24,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0
	.byte 2,165,4,128,196,130,5,16,16,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,128,20,0
	.byte 0,4,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,4,128,196,130,10,16,56,0,1,195,0,2,170,195
	.byte 0,2,167,195,0,2,166,195,0,2,165,4,128,144,22,0,1,1,195,0,6,95,195,0,6,94,195,0,6,96,195,0
	.byte 2,165,4,128,192,16,0,0,1,195,0,2,170,195,0,2,167,195,0,2,166,195,0,2,165,115,103,101,110,0
.text 1
runtime_version:
	.string ""
.text 1
assembly_guid:
	.string "9897B3C0-43EF-44F8-A8BA-5283651155E3"
.text 1
assembly_name:
	.string "EpubSharp"
.data 0
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 183,0
	.balign 8
	.xword mono_aot_EpubSharp_got
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword jit_code_start
	.balign 8
	.xword jit_code_end
	.balign 8
	.xword method_addresses
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword blob
	.balign 8
	.xword class_name_table
	.balign 8
	.xword class_info_offsets
	.balign 8
	.xword method_info_offsets
	.balign 8
	.xword ex_info_offsets
	.balign 8
	.xword extra_method_info_offsets
	.balign 8
	.xword extra_method_table
	.balign 8
	.xword got_info_offsets
	.balign 8
	.xword 0
	.balign 8
	.xword image_table
	.balign 8
	.xword weak_field_indexes
	.balign 8
	.xword method_flags_table
	.balign 8
	.xword mem_end
	.balign 8
	.xword assembly_guid
	.balign 8
	.xword runtime_version
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword assembly_name
	.balign 8
	.xword plt
	.balign 8
	.xword plt_end
	.balign 8
	.xword unwind_info
	.balign 8
	.xword unbox_trampolines
	.balign 8
	.xword unbox_trampolines_end
	.balign 8
	.xword unbox_trampoline_addresses

	.long 24,24,272,176,10,530,0,32
	.long 374417919,0,3705,128,8,8,7,9
	.long 8388607,0,4,22,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0
	.byte 31,200,177,180,12,34,137,56,85,80,243,45,73,31,127,124
.section ".debug_info"
.subsection 0
.LTDIE_0:

	.byte 17
	.string "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
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
.LTDIE_4:

	.byte 17
	.string "System_Object"

	.byte 16,7
	.string "System_Object"

.LDIFF_SYM6=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM6
.LTDIE_4_POINTER:

	.byte 13
.LDIFF_SYM7=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM7
.LTDIE_4_REFERENCE:

	.byte 14
.LDIFF_SYM8=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM8
.LTDIE_7:

	.byte 5
	.string "System_Reflection_MemberInfo"

	.byte 16,16
.LDIFF_SYM9=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM9
	.byte 2,35,0,0,7
	.string "System_Reflection_MemberInfo"

.LDIFF_SYM10=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM10
.LTDIE_7_POINTER:

	.byte 13
.LDIFF_SYM11=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM11
.LTDIE_7_REFERENCE:

	.byte 14
.LDIFF_SYM12=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM12
.LTDIE_6:

	.byte 5
	.string "System_Reflection_MethodBase"

	.byte 16,16
.LDIFF_SYM13=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM13
	.byte 2,35,0,0,7
	.string "System_Reflection_MethodBase"

.LDIFF_SYM14=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM14
.LTDIE_6_POINTER:

	.byte 13
.LDIFF_SYM15=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM15
.LTDIE_6_REFERENCE:

	.byte 14
.LDIFF_SYM16=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM16
.LTDIE_5:

	.byte 5
	.string "System_Reflection_MethodInfo"

	.byte 16,16
.LDIFF_SYM17=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM17
	.byte 2,35,0,0,7
	.string "System_Reflection_MethodInfo"

.LDIFF_SYM18=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM18
.LTDIE_5_POINTER:

	.byte 13
.LDIFF_SYM19=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM19
.LTDIE_5_REFERENCE:

	.byte 14
.LDIFF_SYM20=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM20
.LTDIE_9:

	.byte 5
	.string "System_Type"

	.byte 24,16
.LDIFF_SYM21=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM21
	.byte 2,35,0,6
	.string "_impl"

.LDIFF_SYM22=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM22
	.byte 2,35,16,0,7
	.string "System_Type"

.LDIFF_SYM23=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM23
.LTDIE_9_POINTER:

	.byte 13
.LDIFF_SYM24=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM24
.LTDIE_9_REFERENCE:

	.byte 14
.LDIFF_SYM25=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM25
.LTDIE_11:

	.byte 5
	.string "System_ValueType"

	.byte 16,16
.LDIFF_SYM26=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM26
	.byte 2,35,0,0,7
	.string "System_ValueType"

.LDIFF_SYM27=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM27
.LTDIE_11_POINTER:

	.byte 13
.LDIFF_SYM28=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM28
.LTDIE_11_REFERENCE:

	.byte 14
.LDIFF_SYM29=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM29
.LTDIE_10:

	.byte 5
	.string "System_Boolean"

	.byte 17,16
.LDIFF_SYM30=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM30
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM31=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM31
	.byte 2,35,16,0,7
	.string "System_Boolean"

.LDIFF_SYM32=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM32
.LTDIE_10_POINTER:

	.byte 13
.LDIFF_SYM33=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM33
.LTDIE_10_REFERENCE:

	.byte 14
.LDIFF_SYM34=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM34
.LTDIE_8:

	.byte 5
	.string "System_DelegateData"

	.byte 40,16
.LDIFF_SYM35=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM35
	.byte 2,35,0,6
	.string "target_type"

.LDIFF_SYM36=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM36
	.byte 2,35,16,6
	.string "method_name"

.LDIFF_SYM37=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM37
	.byte 2,35,24,6
	.string "curried_first_arg"

.LDIFF_SYM38=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM38
	.byte 2,35,32,0,7
	.string "System_DelegateData"

.LDIFF_SYM39=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM39
.LTDIE_8_POINTER:

	.byte 13
.LDIFF_SYM40=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM40
.LTDIE_8_REFERENCE:

	.byte 14
.LDIFF_SYM41=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM41
.LTDIE_3:

	.byte 5
	.string "System_Delegate"

	.byte 120,16
.LDIFF_SYM42=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM42
	.byte 2,35,0,6
	.string "method_ptr"

.LDIFF_SYM43=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM43
	.byte 2,35,16,6
	.string "invoke_impl"

.LDIFF_SYM44=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM44
	.byte 2,35,24,6
	.string "_target"

.LDIFF_SYM45=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM45
	.byte 2,35,32,6
	.string "method"

.LDIFF_SYM46=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM46
	.byte 2,35,40,6
	.string "delegate_trampoline"

.LDIFF_SYM47=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM47
	.byte 2,35,48,6
	.string "extra_arg"

.LDIFF_SYM48=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM48
	.byte 2,35,56,6
	.string "method_code"

.LDIFF_SYM49=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM49
	.byte 2,35,64,6
	.string "interp_method"

.LDIFF_SYM50=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM50
	.byte 2,35,72,6
	.string "interp_invoke_impl"

.LDIFF_SYM51=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM51
	.byte 2,35,80,6
	.string "method_info"

.LDIFF_SYM52=.LTDIE_5_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM52
	.byte 2,35,88,6
	.string "original_method_info"

.LDIFF_SYM53=.LTDIE_5_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM53
	.byte 2,35,96,6
	.string "data"

.LDIFF_SYM54=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM54
	.byte 2,35,104,6
	.string "method_is_virtual"

.LDIFF_SYM55=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM55
	.byte 2,35,112,6
	.string "bound"

.LDIFF_SYM56=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM56
	.byte 2,35,113,0,7
	.string "System_Delegate"

.LDIFF_SYM57=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM57
.LTDIE_3_POINTER:

	.byte 13
.LDIFF_SYM58=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM58
.LTDIE_3_REFERENCE:

	.byte 14
.LDIFF_SYM59=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM59
.LTDIE_2:

	.byte 5
	.string "System_MulticastDelegate"

	.byte 128,1,16
.LDIFF_SYM60=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM60
	.byte 2,35,0,6
	.string "delegates"

.LDIFF_SYM61=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM61
	.byte 2,35,120,0,7
	.string "System_MulticastDelegate"

.LDIFF_SYM62=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM62
.LTDIE_2_POINTER:

	.byte 13
.LDIFF_SYM63=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM63
.LTDIE_2_REFERENCE:

	.byte 14
.LDIFF_SYM64=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM64
.LTDIE_1:

	.byte 5
	.string "System_Func`2"

	.byte 128,1,16
.LDIFF_SYM65=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM65
	.byte 2,35,0,0,7
	.string "System_Func`2"

.LDIFF_SYM66=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM66
.LTDIE_1_POINTER:

	.byte 13
.LDIFF_SYM67=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM67
.LTDIE_1_REFERENCE:

	.byte 14
.LDIFF_SYM68=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM68
	.byte 2
	.string "EpubSharp.XmlExt:AsObjectList<T_REF>"
	.string "EpubSharp_XmlExt_AsObjectList_T_REF_System_Collections_Generic_IEnumerable_1_System_Xml_Linq_XElement_System_Func_2_System_Xml_Linq_XElement_T_REF"

	.byte 0,0
	.string "EpubSharp.XmlExt:AsObjectList<T_REF>"
	.xword .Lm_6b
	.xword .Lme_6b

	.byte 2,118,16,3
	.string "self"

.LDIFF_SYM69=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM69
	.byte 1,105,3
	.string "factory"

.LDIFF_SYM70=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM70
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM71=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM71
.Lfde0_start:

	.long 0
	.balign 8
	.xword .Lm_6b

.LDIFF_SYM72=.Lme_6b - .Lm_6b
	.long .LDIFF_SYM72
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.balign 8
.Lfde0_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "EpubSharp.XmlExt/<>c__1`1<T_REF>:.cctor"
	.string "EpubSharp_XmlExt__c__1_1_T_REF__cctor"

	.byte 0,0
	.string "EpubSharp.XmlExt/<>c__1`1<T_REF>:.cctor"
	.xword .Lm_1ce
	.xword .Lme_1ce

	.byte 2,118,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM73=.Lfde1_end - .Lfde1_start
	.long .LDIFF_SYM73
.Lfde1_start:

	.long 0
	.balign 8
	.xword .Lm_1ce

.LDIFF_SYM74=.Lme_1ce - .Lm_1ce
	.long .LDIFF_SYM74
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde1_end:

.section ".debug_info"
.subsection 0
.LTDIE_12:

	.byte 5
	.string "_<>c__1`1"

	.byte 16,16
.LDIFF_SYM75=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM75
	.byte 2,35,0,0,7
	.string "_<>c__1`1"

.LDIFF_SYM76=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM76
.LTDIE_12_POINTER:

	.byte 13
.LDIFF_SYM77=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM77
.LTDIE_12_REFERENCE:

	.byte 14
.LDIFF_SYM78=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM78
	.byte 2
	.string "EpubSharp.XmlExt/<>c__1`1<T_REF>:.ctor"
	.string "EpubSharp_XmlExt__c__1_1_T_REF__ctor"

	.byte 0,0
	.string "EpubSharp.XmlExt/<>c__1`1<T_REF>:.ctor"
	.xword .Lm_1cf
	.xword .Lme_1cf

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM79=.LTDIE_12_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM79
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM80=.Lfde2_end - .Lfde2_start
	.long .LDIFF_SYM80
.Lfde2_start:

	.long 0
	.balign 8
	.xword .Lm_1cf

.LDIFF_SYM81=.Lme_1cf - .Lm_1cf
	.long .LDIFF_SYM81
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde2_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "EpubSharp.XmlExt/<>c__1`1<T_REF>:<AsObjectList>b__1_0"
	.string "EpubSharp_XmlExt__c__1_1_T_REF__AsObjectListb__1_0_T_REF"

	.byte 0,0
	.string "EpubSharp.XmlExt/<>c__1`1<T_REF>:<AsObjectList>b__1_0"
	.xword .Lm_1d0
	.xword .Lme_1d0

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM82=.LTDIE_12_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM82
	.byte 2,141,16,3
	.string "value"

.LDIFF_SYM83=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM83
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM84=.Lfde3_end - .Lfde3_start
	.long .LDIFF_SYM84
.Lfde3_start:

	.long 0
	.balign 8
	.xword .Lm_1d0

.LDIFF_SYM85=.Lme_1d0 - .Lm_1d0
	.long .LDIFF_SYM85
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
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
	.balign 8
mem_end:
