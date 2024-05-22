	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx900"
	.protected	_Z6kernelPiPm           ; -- Begin function _Z6kernelPiPm
	.globl	_Z6kernelPiPm
	.p2align	8
	.type	_Z6kernelPiPm,@function
_Z6kernelPiPm:                          ; @_Z6kernelPiPm
_Z6kernelPiPm$local:
; %bb.0:
	s_load_dwordx2 s[0:1], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s0, 0x80
	s_addc_u32 s3, s1, 0
	s_add_u32 s4, s0, 0x100
	v_mov_b32_e32 v2, s2
	s_addc_u32 s5, s1, 0
	v_mov_b32_e32 v3, s3
	s_add_u32 s2, s0, 0x180
	s_addc_u32 s3, s1, 0
	v_mov_b32_e32 v4, s4
	v_mov_b32_e32 v5, s5
	s_add_u32 s4, s0, 0x200
	s_addc_u32 s5, s1, 0
	v_mov_b32_e32 v7, s3
	v_mov_b32_e32 v6, s2
	s_add_u32 s2, s0, 4
	s_addc_u32 s3, s1, 0
	v_mov_b32_e32 v0, s0
	v_mov_b32_e32 v1, s1
	s_add_u32 s0, s0, 0x204
	s_addc_u32 s1, s1, 0
	v_mov_b32_e32 v9, s5
	v_mov_b32_e32 v11, s3
	v_mov_b32_e32 v13, s1
	v_mov_b32_e32 v8, s4
	v_mov_b32_e32 v10, s2
	v_mov_b32_e32 v12, s0
	;;#ASMSTART
	s_waitcnt vmcnt(0) & lgkmcnt(0)
	buffer_wbinvl1
	flat_load_dwordx2 v[0:1], v[0:1]
	flat_load_dwordx2 v[2:3], v[2:3]
	flat_load_dwordx2 v[4:5], v[4:5]
	flat_load_dwordx2 v[6:7], v[6:7]
	s_waitcnt vmcnt(0) & lgkmcnt(0)
	flat_load_dwordx2 v[8:9], v[8:9]
	s_waitcnt vmcnt(0) & lgkmcnt(0)
	flat_load_dwordx2 v[10:11], v[10:11]
	s_waitcnt vmcnt(0) & lgkmcnt(0)
	flat_load_dwordx2 v[12:13], v[12:13]
	s_waitcnt vmcnt(0) & lgkmcnt(0)
	s_nop 0
	
	;;#ASMEND
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z6kernelPiPm
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 14
		.amdhsa_next_free_sgpr 6
		.amdhsa_reserve_vcc 0
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	_Z6kernelPiPm, .Lfunc_end0-_Z6kernelPiPm
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 252
; NumSgprs: 6
; NumVgprs: 14
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 6
; NumVGPRsForWavesPerEU: 14
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.ident	"clang version 12.0.0 (/src/external/llvm-project/clang 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)"
	.section	".note.GNU-stack"
	.addrsig
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         24
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 72
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z6kernelPiPm
    .private_segment_fixed_size: 0
    .sgpr_count:     6
    .sgpr_spill_count: 0
    .symbol:         _Z6kernelPiPm.kd
    .vgpr_count:     14
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
