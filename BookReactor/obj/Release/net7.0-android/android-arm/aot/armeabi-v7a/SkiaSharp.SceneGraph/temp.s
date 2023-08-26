.text 0
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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

	.byte 0,0,0,0,10,0,0,0,0,0,0,0,4,0,0,0
.text 0
	.align 3
method_flags_table:

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

	.byte 11,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,2,0,0,0
.text 0
	.align 3
got_info_offsets:

	.byte 22,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,10,0,20,0,1,2,1,1,1,1,1,1,1,2
	.byte 14,2,2,2,3,2,2,2,3,2,37,3
.text 0
	.align 3
ex_info_offsets:

	.byte 0,0,0,0,10,0,0,0,0,0,0,0,4,0,0,0
.text 1
	.align 3
unwind_info:
.text 0
	.align 3
class_info_offsets:

	.byte 2,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,43,7

.text 0
	.align 4
plt:
mono_aot_SkiaSharp_SceneGraph_plt:
	.size mono_aot_SkiaSharp_SceneGraph_plt,.-mono_aot_SkiaSharp_SceneGraph_plt
plt_end:
.text 0
	.align 3
image_table:

	.byte 3,0,0,0,83,107,105,97,83,104,97,114,112,46,83,99,101,110,101,71,114,97,112,104,0,53,66,48,50,66,54,56
	.byte 67,45,68,53,55,51,45,52,66,69,48,45,57,56,54,56,45,49,67,70,70,55,50,68,48,65,49,65,56,0,0,48
	.byte 55,51,56,101,98,57,102,49,51,50,101,100,55,53,54,0,1,0,0,0,2,0,0,0,88,0,0,0,0,0,0,0
	.byte 0,0,0,0,83,107,105,97,83,104,97,114,112,0,68,49,50,52,66,57,67,65,45,50,65,70,50,45,52,48,57,48
	.byte 45,65,65,53,69,45,50,55,52,57,51,70,70,57,68,65,52,56,0,0,48,55,51,56,101,98,57,102,49,51,50,101
	.byte 100,55,53,54,0,0,0,0,1,0,0,0,2,0,0,0,88,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116
	.byte 101,109,46,80,114,105,118,97,116,101,46,67,111,114,101,76,105,98,0,50,56,67,68,48,65,66,50,45,49,70,68,65
	.byte 45,52,50,57,65,45,65,52,55,54,45,55,66,54,66,48,66,66,57,57,67,65,70,0,0,55,99,101,99,56,53,100
	.byte 55,98,101,97,55,55,57,56,101,0,0,0,0,0,0,0,1,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0
.text 0
	.align 3
weak_field_indexes:

	.byte 0,0,0,0
.section ".bss"
.subsection 0
	.align 3
	.local mono_aot_SkiaSharp_SceneGraph_got
	.type mono_aot_SkiaSharp_SceneGraph_got,#object
mono_aot_SkiaSharp_SceneGraph_got:
	.skip 92
got_end:
.text 0
	.align 3
blob:

	.byte 0,11,0,35,37,45,49,51,31,47,54,8,54,9,54,10,54,11,54,12,54,128,255,6,89,6,98,6,103,6,129,5
	.byte 6,92,6,128,171,6,128,149,6,128,148,0,128,144,8,0,0,1,13,128,162,193,0,2,121,36,0,0,4,194,0,2
	.byte 169,194,0,2,166,194,0,2,165,193,0,2,121,193,0,2,132,193,0,2,108,193,0,2,113,193,0,2,112,193,0,2
	.byte 111,193,0,2,125,193,0,2,124,193,0,2,110,193,0,2,109,115,103,101,110,0
.text 1
runtime_version:
	.string ""
.text 1
assembly_guid:
	.string "5B02B68C-D573-4BE0-9868-1CFF72D0A1A8"
.text 1
assembly_name:
	.string "SkiaSharp.SceneGraph"
.data 0
	.align 3
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,#object

	.long 183,0
	.align 2
	.long mono_aot_SkiaSharp_SceneGraph_got
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

	.long 22,22,92,88,1,0,0,32
	.long 374417919,0,113,128,8,8,7,9
	.long 0,0,0,22,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0
	.byte 168,145,174,184,160,78,21,170,152,255,219,231,186,182,28,166
.text 1
	.align 3
mem_end:
