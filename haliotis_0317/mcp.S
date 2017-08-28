#ifdef __linux__
#ifdef __i386__
	.text
	.file	"mcp-S.cc"
	.globl	_Z15serialize_stateiPK10game_state
	.align	16, 0x90
	.type	_Z15serialize_stateiPK10game_state,@function
_Z15serialize_stateiPK10game_state:     # @_Z15serialize_stateiPK10game_state
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp0:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp1:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp3:
	.cfi_def_cfa_offset 20
	subl	$92, %esp
.Ltmp4:
	.cfi_def_cfa_offset 112
.Ltmp5:
	.cfi_offset %esi, -20
.Ltmp6:
	.cfi_offset %edi, -16
.Ltmp7:
	.cfi_offset %ebx, -12
.Ltmp8:
	.cfi_offset %ebp, -8
	calll	.L0$pb
.Ltmp9:
	.cfi_adjust_cfa_offset 4
.L0$pb:
	popl	%eax
.Ltmp10:
	.cfi_adjust_cfa_offset -4
.Ltmp11:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp11-.L0$pb), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movzbl	(%eax), %edx
	movb	$66, %cl
	cmpl	$1, %edx
	je	.LBB0_2
# BB#1:                                 # %select.false
	movb	$87, %cl
.LBB0_2:                                # %select.end
	movb	%cl, 28(%esp)
	movb	$58, 29(%esp)
	movl	$2, %esi
	movl	$1, %ebp
	.align	16, 0x90
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	leal	-4(%ebp), %edx
	cmpl	$6, %ebp
	movl	$1, %ecx
	cmovll	%ecx, %edx
	cmpl	$9, %edx
	jg	.LBB0_4
# BB#5:                                 #   in Loop: Header=BB0_3 Depth=1
	leal	5(%ebp), %edi
	cmpl	%edi, %edx
	jge	.LBB0_6
# BB#7:                                 # %.lr.ph.split.us.preheader.i
                                        #   in Loop: Header=BB0_3 Depth=1
	leal	(%eax,%edx), %ebx
	movl	%eax, 24(%esp)          # 4-byte Spill
	decl	%edx
	.align	16, 0x90
.LBB0_8:                                # %.lr.ph.split.us.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	6(%edx), %eax
	movl	$24, %ecx
	cmpl	%ebp, %eax
	jle	.LBB0_11
# BB#9:                                 # %.lr.ph.split.us.i
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$8, %edx
	ja	.LBB0_11
# BB#10:                                #   in Loop: Header=BB0_8 Depth=2
	movb	(%ebx), %al
	decb	%al
	movzbl	%al, %ecx
	shll	$3, %ecx
.LBB0_11:                               # %_ZNK10game_state4getCEii.exit.us.i
                                        #   in Loop: Header=BB0_8 Depth=2
	movl	$539907906, %eax        # imm = 0x202E5742
	shrl	%cl, %eax
	movb	%al, 28(%esp,%esi)
	incl	%esi
	leal	2(%edx), %ecx
	cmpl	$9, %ecx
	jg	.LBB0_13
# BB#12:                                # %_ZNK10game_state4getCEii.exit.us.i
                                        #   in Loop: Header=BB0_8 Depth=2
	incl	%edx
	incl	%ebx
	cmpl	%edi, %ecx
	jl	.LBB0_8
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, 24(%esp)          # 4-byte Spill
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, 24(%esp)          # 4-byte Spill
.LBB0_13:                               # %.critedge.i
                                        #   in Loop: Header=BB0_3 Depth=1
	incl	%ebp
	movl	24(%esp), %eax          # 4-byte Reload
	addl	$9, %eax
	cmpl	$10, %ebp
	jne	.LBB0_3
# BB#14:
	movb	$0, 28(%esp,%esi)
	cmpl	$63, %esi
	jne	.LBB0_16
# BB#15:                                # %_ZNK10game_state8toStringEPc.exit
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	112(%esp), %eax
	movl	%eax, (%esp)
	movl	$64, 8(%esp)
	movl	20(%esp), %ebx          # 4-byte Reload
	calll	write@PLT
	movl	$64, %eax
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB0_16:
	movl	20(%esp), %ebx          # 4-byte Reload
	leal	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$197, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end0:
	.size	_Z15serialize_stateiPK10game_state, .Lfunc_end0-_Z15serialize_stateiPK10game_state
	.cfi_endproc

	.globl	_Z17deserialize_stateiP10game_state
	.align	16, 0x90
	.type	_Z17deserialize_stateiP10game_state,@function
_Z17deserialize_stateiP10game_state:    # @_Z17deserialize_stateiP10game_state
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp12:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp13:
	.cfi_def_cfa_offset 12
	subl	$84, %esp
.Ltmp14:
	.cfi_def_cfa_offset 96
.Ltmp15:
	.cfi_offset %esi, -12
.Ltmp16:
	.cfi_offset %ebx, -8
	calll	.L1$pb
.Ltmp17:
	.cfi_adjust_cfa_offset 4
.L1$pb:
	popl	%ebx
.Ltmp18:
	.cfi_adjust_cfa_offset -4
.Ltmp19:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp19-.L1$pb), %ebx
	movl	96(%esp), %eax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%esp)
	movaps	%xmm0, 48(%esp)
	movaps	%xmm0, 32(%esp)
	movaps	%xmm0, 16(%esp)
	leal	16(%esp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	$64, 8(%esp)
	calll	read@PLT
	cmpl	$64, %eax
	jne	.LBB1_3
# BB#1:
	cmpb	$0, 79(%esp)
	jne	.LBB1_4
# BB#2:
	movl	100(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	$1, %eax
	addl	$84, %esp
	popl	%esi
	popl	%ebx
	retl
.LBB1_3:
	leal	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$19, 8(%esp)
	calll	__assert_fail@PLT
.LBB1_4:
	leal	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$20, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end1:
	.size	_Z17deserialize_stateiP10game_state, .Lfunc_end1-_Z17deserialize_stateiP10game_state
	.cfi_endproc

	.section	.text._ZN10game_state5setupEPKc,"axG",@progbits,_ZN10game_state5setupEPKc,comdat
	.weak	_ZN10game_state5setupEPKc
	.align	16, 0x90
	.type	_ZN10game_state5setupEPKc,@function
_ZN10game_state5setupEPKc:              # @_ZN10game_state5setupEPKc
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	.L2$pb
.L2$pb:
	popl	%ebx
.Ltmp20:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp20-.L2$pb), %ebx
	movl	52(%esp), %esi
	testl	%esi, %esi
	je	.LBB2_18
# BB#1:
	movl	%esi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB2_19
# BB#2:
	movzbl	1(%esi), %eax
	cmpl	$58, %eax
	jne	.LBB2_20
# BB#3:
	movl	48(%esp), %ecx
	movsbl	(%esi), %eax
	cmpl	$87, %eax
	je	.LBB2_12
# BB#4:
	cmpl	$66, %eax
	jne	.LBB2_13
# BB#5:
	movb	$1, (%ecx)
	jmp	.LBB2_6
.LBB2_12:
	movb	$2, (%ecx)
.LBB2_6:                                # %.preheader
	movl	$2, %esi
	movl	$1, %ebp
	.align	16, 0x90
.LBB2_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	leal	-4(%ebp), %eax
	cmpl	$6, %ebp
	movl	$1, %edi
	cmovgel	%eax, %edi
	cmpl	$9, %edi
	jg	.LBB2_9
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	leal	5(%ebp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	cmpl	%eax, %edi
	jge	.LBB2_9
	.align	16, 0x90
.LBB2_15:                               # %.lr.ph
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	52(%esp), %eax
	movsbl	(%eax,%esi), %eax
	incl	%esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, %esi
	calll	_ZN10game_state3setEiic@PLT
	incl	%edi
	cmpl	$9, %edi
	jg	.LBB2_16
# BB#14:                                # %.lr.ph
                                        #   in Loop: Header=BB2_15 Depth=2
	cmpl	20(%esp), %edi          # 4-byte Folded Reload
	movl	%esi, %ecx
	movl	24(%esp), %esi          # 4-byte Reload
	jl	.LBB2_15
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_7 Depth=1
	movl	%esi, %ecx
	movl	24(%esp), %esi          # 4-byte Reload
.LBB2_9:                                # %.critedge
                                        #   in Loop: Header=BB2_7 Depth=1
	incl	%ebp
	cmpl	$10, %ebp
	jne	.LBB2_7
# BB#10:
	cmpl	$63, %esi
	jne	.LBB2_11
# BB#17:
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB2_18:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$203, 8(%esp)
	calll	__assert_fail@PLT
.LBB2_19:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$204, 8(%esp)
	calll	__assert_fail@PLT
.LBB2_20:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$205, 8(%esp)
	calll	__assert_fail@PLT
.LBB2_13:
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	printf@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.LBB2_11:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$227, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end2:
	.size	_ZN10game_state5setupEPKc, .Lfunc_end2-_ZN10game_state5setupEPKc

	.text
	.globl	_Z14serialize_moveiPK9game_move
	.align	16, 0x90
	.type	_Z14serialize_moveiPK9game_move,@function
_Z14serialize_moveiPK9game_move:        # @_Z14serialize_moveiPK9game_move
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp21:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp22:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp24:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %esi, -20
.Ltmp27:
	.cfi_offset %edi, -16
.Ltmp28:
	.cfi_offset %ebx, -12
.Ltmp29:
	.cfi_offset %ebp, -8
	calll	.L3$pb
.Ltmp30:
	.cfi_adjust_cfa_offset 4
.L3$pb:
	popl	%ebx
.Ltmp31:
	.cfi_adjust_cfa_offset -4
.Ltmp32:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp32-.L3$pb), %ebx
	movl	52(%esp), %ebp
	movl	48(%esp), %esi
	movl	4(%ebp), %edx
	movl	_ZZNK9game_move8toStringEPcE3row@GOT(%ebx), %ecx
	movb	(%ecx,%edx), %dl
	movb	%dl, 18(%esp)
	movl	8(%ebp), %edi
	movl	_ZZNK9game_move8toStringEPcE4diag@GOT(%ebx), %edx
	movb	(%edx,%edi), %al
	movb	%al, 19(%esp)
	movl	$2, %edi
	cmpl	$1, (%ebp)
	jne	.LBB3_2
# BB#1:
	movb	$45, 20(%esp)
	movl	12(%ebp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 21(%esp)
	movl	16(%ebp), %eax
	movb	(%edx,%eax), %al
	movb	%al, 22(%esp)
	movl	$5, %edi
.LBB3_2:                                # %_ZNK9game_move8toStringEPc.exit
	movb	$44, 18(%esp,%edi)
	movl	20(%ebp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 19(%esp,%edi)
	movl	24(%ebp), %eax
	movb	(%edx,%eax), %al
	movb	%al, 20(%esp,%edi)
	movb	$0, 21(%esp,%edi)
	leal	18(%esp), %edi
	movl	%edi, (%esp)
	calll	strlen@PLT
	incl	%eax
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	write@PLT
	movl	$1, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end3:
	.size	_Z14serialize_moveiPK9game_move, .Lfunc_end3-_Z14serialize_moveiPK9game_move
	.cfi_endproc

	.globl	_Z16deserialize_moveiP9game_move
	.align	16, 0x90
	.type	_Z16deserialize_moveiP9game_move,@function
_Z16deserialize_moveiP9game_move:       # @_Z16deserialize_moveiP9game_move
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp33:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp34:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp36:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.Ltmp37:
	.cfi_def_cfa_offset 48
.Ltmp38:
	.cfi_offset %esi, -20
.Ltmp39:
	.cfi_offset %edi, -16
.Ltmp40:
	.cfi_offset %ebx, -12
.Ltmp41:
	.cfi_offset %ebp, -8
	calll	.L4$pb
.Ltmp42:
	.cfi_adjust_cfa_offset 4
.L4$pb:
	popl	%ebx
.Ltmp43:
	.cfi_adjust_cfa_offset -4
.Ltmp44:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp44-.L4$pb), %ebx
	movl	48(%esp), %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 24(%esp)
	leal	16(%esp), %ebp
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$10, 8(%esp)
	calll	read@PLT
	movl	%eax, %esi
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cout@GOT(%ebx), %edi
	movl	%edi, (%esp)
	movl	$5, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSolsEi@PLT
	movl	%eax, %edi
	movl	(%edi), %eax
	movl	-12(%eax), %eax
	movl	124(%edi,%eax), %ebp
	testl	%ebp, %ebp
	je	.LBB4_15
# BB#1:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 28(%ebp)
	je	.LBB4_3
# BB#2:
	movb	39(%ebp), %al
	jmp	.LBB4_4
.LBB4_3:
	movl	%ebp, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%ebp), %eax
	movl	%ebp, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB4_4:                                # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	testl	%esi, %esi
	jle	.LBB4_5
# BB#6:
	cmpl	$6, %esi
	je	.LBB4_10
# BB#7:
	cmpl	$9, %esi
	jne	.LBB4_8
.LBB4_10:
	leal	16(%esp), %edi
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, %esi
	cmpl	$5, %esi
	je	.LBB4_13
# BB#11:
	cmpl	$8, %esi
	jne	.LBB4_12
.LBB4_13:
	movl	52(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	_ZN9game_move5setupEPKc@PLT
	jmp	.LBB4_14
.LBB4_5:
	xorl	%eax, %eax
	jmp	.LBB4_14
.LBB4_8:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %edi
	movl	%edi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$24, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSolsEi@PLT
	jmp	.LBB4_9
.LBB4_12:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %edi
	movl	%edi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$26, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSo9_M_insertImEERSoT_@PLT
.LBB4_9:
	leal	.L.str.6@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	xorl	%eax, %eax
.LBB4_14:
	movzbl	%al, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB4_15:
	calll	_ZSt16__throw_bad_castv@PLT
.Lfunc_end4:
	.size	_Z16deserialize_moveiP9game_move, .Lfunc_end4-_Z16deserialize_moveiP9game_move
	.cfi_endproc

	.section	.text._ZN9game_move5setupEPKc,"axG",@progbits,_ZN9game_move5setupEPKc,comdat
	.weak	_ZN9game_move5setupEPKc
	.align	16, 0x90
	.type	_ZN9game_move5setupEPKc,@function
_ZN9game_move5setupEPKc:                # @_ZN9game_move5setupEPKc
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp45:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp46:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp48:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.Ltmp49:
	.cfi_def_cfa_offset 48
.Ltmp50:
	.cfi_offset %esi, -20
.Ltmp51:
	.cfi_offset %edi, -16
.Ltmp52:
	.cfi_offset %ebx, -12
.Ltmp53:
	.cfi_offset %ebp, -8
	calll	.L5$pb
.Ltmp54:
	.cfi_adjust_cfa_offset 4
.L5$pb:
	popl	%ebx
.Ltmp55:
	.cfi_adjust_cfa_offset -4
.Ltmp56:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp56-.L5$pb), %ebx
	movl	52(%esp), %esi
	movsbl	(%esi), %eax
	movl	%eax, (%esp)
	calll	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_37
# BB#1:
	leal	-64(%eax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_37
# BB#2:                                 # %_ZN9game_move8rowToNumEc.exit
	movl	48(%esp), %edi
	movl	%ecx, 4(%edi)
	movsbl	1(%esi), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_38
# BB#3:                                 # %_ZN9game_move8rowToNumEc.exit
	leal	-48(%ecx), %edx
	cmpl	$10, %edx
	jge	.LBB5_38
# BB#4:                                 # %_ZN9game_move9diagToNumEc.exit
	movl	%edx, 8(%edi)
	leal	-21(%eax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_8
# BB#5:                                 # %_ZN9game_move9diagToNumEc.exit
	leal	-11(%eax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_8
# BB#6:                                 # %_ZN9game_move9diagToNumEc.exit
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_8
# BB#7:                                 # %_ZN9game_move9diagToNumEc.exit
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_8
# BB#9:
	movzbl	2(%esi), %ecx
	cmpl	$45, %ecx
	je	.LBB5_21
# BB#10:
	movzbl	%cl, %eax
	cmpl	$44, %eax
	jne	.LBB5_32
# BB#11:
	movl	$0, (%edi)
	movl	$3, %ebp
	jmp	.LBB5_12
.LBB5_8:                                # %_ZL15check_valid_posii.exit.thread
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$29, 8(%esp)
	jmp	.LBB5_35
.LBB5_21:
	movl	$1, (%edi)
	movsbl	3(%esi), %eax
	movl	%eax, (%esp)
	calll	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_37
# BB#22:
	leal	-64(%eax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_37
# BB#23:                                # %_ZN9game_move8rowToNumEc.exit5
	movl	%ecx, 12(%edi)
	movsbl	4(%esi), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_38
# BB#24:                                # %_ZN9game_move8rowToNumEc.exit5
	leal	-48(%ecx), %edx
	cmpl	$10, %edx
	jge	.LBB5_38
# BB#25:                                # %_ZN9game_move9diagToNumEc.exit7
	movl	%edx, 16(%edi)
	leal	-21(%eax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_29
# BB#26:                                # %_ZN9game_move9diagToNumEc.exit7
	leal	-11(%eax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_29
# BB#27:                                # %_ZN9game_move9diagToNumEc.exit7
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_29
# BB#28:                                # %_ZN9game_move9diagToNumEc.exit7
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_29
# BB#30:
	movzbl	5(%esi), %eax
	movl	$6, %ebp
	cmpl	$44, %eax
	jne	.LBB5_31
.LBB5_12:
	movsbl	(%esi,%ebp), %eax
	movl	%eax, (%esp)
	calll	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_37
# BB#13:
	leal	-64(%eax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_37
# BB#14:                                # %_ZN9game_move8rowToNumEc.exit14
	movl	%ecx, 20(%edi)
	movsbl	1(%ebp,%esi), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_38
# BB#15:                                # %_ZN9game_move8rowToNumEc.exit14
	leal	-48(%ecx), %edx
	cmpl	$10, %edx
	jge	.LBB5_38
# BB#16:                                # %_ZN9game_move9diagToNumEc.exit16
	movl	%edx, 24(%edi)
	leal	-21(%eax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_20
# BB#17:                                # %_ZN9game_move9diagToNumEc.exit16
	leal	-11(%eax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_20
# BB#18:                                # %_ZN9game_move9diagToNumEc.exit16
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_20
# BB#19:                                # %_ZN9game_move9diagToNumEc.exit16
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_20
# BB#33:
	movb	$1, %al
	cmpb	$0, 2(%ebp,%esi)
	je	.LBB5_36
# BB#34:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$38, 8(%esp)
	jmp	.LBB5_35
.LBB5_32:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	movl	%ecx, %edi
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$31, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%edi, %eax
	movb	%al, 27(%esp)
	leal	27(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.6@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	jmp	.LBB5_35
.LBB5_20:                               # %_ZL15check_valid_posii.exit20.thread
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$34, 8(%esp)
	jmp	.LBB5_35
.LBB5_29:                               # %_ZL15check_valid_posii.exit11.thread
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$30, 8(%esp)
	jmp	.LBB5_35
.LBB5_31:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$41, 8(%esp)
.LBB5_35:
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	xorl	%eax, %eax
.LBB5_36:
	movzbl	%al, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB5_37:
	leal	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$343, 8(%esp)           # imm = 0x157
	calll	__assert_fail@PLT
.LBB5_38:
	leal	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$350, 8(%esp)           # imm = 0x15E
	calll	__assert_fail@PLT
.Lfunc_end5:
	.size	_ZN9game_move5setupEPKc, .Lfunc_end5-_ZN9game_move5setupEPKc
	.cfi_endproc

	.text
	.globl	_Z16initialize_stateP10game_statePKc
	.align	16, 0x90
	.type	_Z16initialize_stateP10game_statePKc,@function
_Z16initialize_stateP10game_statePKc:   # @_Z16initialize_stateP10game_statePKc
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp57:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp58:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp59:
	.cfi_def_cfa_offset 16
	subl	$16, %esp
.Ltmp60:
	.cfi_def_cfa_offset 32
.Ltmp61:
	.cfi_offset %esi, -16
.Ltmp62:
	.cfi_offset %edi, -12
.Ltmp63:
	.cfi_offset %ebx, -8
	calll	.L6$pb
.Ltmp64:
	.cfi_adjust_cfa_offset 4
.L6$pb:
	popl	%ebx
.Ltmp65:
	.cfi_adjust_cfa_offset -4
.Ltmp66:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp66-.L6$pb), %ebx
	movl	36(%esp), %esi
	testl	%esi, %esi
	je	.LBB6_3
# BB#1:
	movl	%esi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB6_4
# BB#2:
	movl	32(%esp), %edi
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	%edi, (%esp)
	calll	_ZNK10game_state5printEv@PLT
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.LBB6_3:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$58, 8(%esp)
	calll	__assert_fail@PLT
.LBB6_4:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$59, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end6:
	.size	_Z16initialize_stateP10game_statePKc, .Lfunc_end6-_Z16initialize_stateP10game_statePKc
	.cfi_endproc

	.section	.text._ZNK10game_state5printEv,"axG",@progbits,_ZNK10game_state5printEv,comdat
	.weak	_ZNK10game_state5printEv
	.align	16, 0x90
	.type	_ZNK10game_state5printEv,@function
_ZNK10game_state5printEv:               # @_ZNK10game_state5printEv
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp67:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp68:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp70:
	.cfi_def_cfa_offset 20
	subl	$76, %esp
.Ltmp71:
	.cfi_def_cfa_offset 96
.Ltmp72:
	.cfi_offset %esi, -20
.Ltmp73:
	.cfi_offset %edi, -16
.Ltmp74:
	.cfi_offset %ebx, -12
.Ltmp75:
	.cfi_offset %ebp, -8
	calll	.L7$pb
.Ltmp76:
	.cfi_adjust_cfa_offset 4
.L7$pb:
	popl	%ebx
.Ltmp77:
	.cfi_adjust_cfa_offset -4
.Ltmp78:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp78-.L7$pb), %ebx
	movl	96(%esp), %eax
	leal	73(%eax), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	$9, %esi
	movl	_ZSt4cout@GOT(%ebx), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	leal	.L.str.46@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	leal	.L.str.47@GOTOFF(%ebx), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	leal	.L.str.48@GOTOFF(%ebx), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	.align	16, 0x90
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_42 Depth 2
                                        #     Child Loop BB7_33 Depth 2
                                        #     Child Loop BB7_28 Depth 2
	movl	%esi, 68(%esp)          # 4-byte Spill
	movb	.L.str.45@GOTOFF-1(%ebx,%esi), %al
	movb	%al, 75(%esp)
	leal	75(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	24(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$5, %eax
	subl	%esi, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	leal	1(%ecx), %ebp
	movl	$9, %edx
	subl	%ecx, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	cmpl	$5, %esi
	movl	$1, %eax
	cmovlel	%eax, %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	$9, %eax
	cmovll	%edx, %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	testl	%ecx, %ecx
	movl	%ecx, %esi
	movl	40(%esp), %ebp          # 4-byte Reload
	jle	.LBB7_2
	.align	16, 0x90
.LBB7_40:                               # %.lr.ph
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%esi
	jne	.LBB7_40
.LBB7_2:                                # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	68(%esp), %ebp          # 4-byte Reload
	leal	-1(%ebp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	5(%ebp), %edx
	movl	48(%esp), %esi          # 4-byte Reload
	leal	5(%esi), %ecx
	movb	$4, %al
	cmpl	%ebp, %ecx
	jle	.LBB7_3
# BB#9:                                 # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	%esi, %edx
	jle	.LBB7_3
# BB#10:                                # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	%edx, 56(%esp)          # 4-byte Spill
	leal	-1(%esi), %ecx
	cmpl	$8, %ecx
	movl	52(%esp), %edx          # 4-byte Reload
	ja	.LBB7_12
# BB#11:                                #   in Loop: Header=BB7_1 Depth=1
	leal	(%edx,%edx,8), %eax
	addl	96(%esp), %eax
	movb	1(%ecx,%eax), %al
	jmp	.LBB7_12
	.align	16, 0x90
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
.LBB7_12:                               # %_ZNK10game_state3getEii.exit
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	%edx, 52(%esp)          # 4-byte Spill
	decb	%al
	movsbl	%al, %eax
	movl	.Lswitch.table@GOTOFF(%ebx,%eax,4), %esi
	movl	%esi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	48(%esp), %ecx          # 4-byte Reload
	cmpl	64(%esp), %ecx          # 4-byte Folded Reload
	jge	.LBB7_19
# BB#13:                                # %.lr.ph25.split.us.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	32(%esp), %eax          # 4-byte Reload
	leal	(%eax,%ecx), %esi
	.align	16, 0x90
.LBB7_14:                               # %.lr.ph25.split.us
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	.L.str.49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$3, 8(%esp)
	movl	%ecx, %edi
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%edi, %edx
	leal	6(%edx), %edi
	movb	$4, %al
	cmpl	%ebp, %edi
	jle	.LBB7_18
# BB#15:                                # %.lr.ph25.split.us
                                        #   in Loop: Header=BB7_14 Depth=2
	leal	1(%edx), %ecx
	cmpl	%ecx, 56(%esp)          # 4-byte Folded Reload
	jle	.LBB7_18
# BB#16:                                # %.lr.ph25.split.us
                                        #   in Loop: Header=BB7_14 Depth=2
	cmpl	$8, %edx
	ja	.LBB7_18
# BB#17:                                #   in Loop: Header=BB7_14 Depth=2
	movb	(%esi), %al
.LBB7_18:                               # %_ZNK10game_state3getEii.exit9.us
                                        #   in Loop: Header=BB7_14 Depth=2
	decb	%al
	movsbl	%al, %eax
	movl	.Lswitch.table@GOTOFF(%ebx,%eax,4), %ebp
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	incl	%esi
	addl	$-5, %edi
	cmpl	64(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, %ecx
	movl	%ebp, %edi
	movl	68(%esp), %ebp          # 4-byte Reload
	jl	.LBB7_14
.LBB7_19:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$4, %ebp
	jg	.LBB7_21
# BB#20:                                #   in Loop: Header=BB7_1 Depth=1
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	28(%esp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSolsEi@PLT
.LBB7_21:                               #   in Loop: Header=BB7_1 Depth=1
	movl	(%edi), %eax
	movl	-12(%eax), %eax
	movl	124(%edi,%eax), %esi
	testl	%esi, %esi
	je	.LBB7_41
# BB#22:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpb	$0, 28(%esi)
	je	.LBB7_24
# BB#23:                                #   in Loop: Header=BB7_1 Depth=1
	movl	%ebp, 68(%esp)          # 4-byte Spill
	movb	39(%esi), %al
	jmp	.LBB7_25
	.align	16, 0x90
.LBB7_24:                               #   in Loop: Header=BB7_1 Depth=1
	movl	%ebp, 68(%esp)          # 4-byte Spill
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB7_25:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit16
                                        #   in Loop: Header=BB7_1 Depth=1
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	leal	.L.str.50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	44(%esp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, %esi
	movl	40(%esp), %ebp          # 4-byte Reload
	jle	.LBB7_26
	.align	16, 0x90
.LBB7_42:                               # %.lr.ph27
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%esi
	jne	.LBB7_42
.LBB7_26:                               # %._crit_edge28
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	68(%esp), %eax          # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB7_30
# BB#27:                                # %.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	64(%esp), %esi          # 4-byte Reload
	movl	44(%esp), %ebp          # 4-byte Reload
	jmp	.LBB7_28
	.align	16, 0x90
.LBB7_29:                               # %.lr.ph33
                                        #   in Loop: Header=BB7_28 Depth=2
	leal	.L.str.51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	incl	%ebp
.LBB7_28:                               # %.preheader
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %ebp
	jl	.LBB7_29
	jmp	.LBB7_34
	.align	16, 0x90
.LBB7_30:                               #   in Loop: Header=BB7_1 Depth=1
	cmpl	$2, %eax
	movl	64(%esp), %esi          # 4-byte Reload
	jl	.LBB7_34
# BB#31:                                #   in Loop: Header=BB7_1 Depth=1
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	cmpl	$2, %esi
	jl	.LBB7_34
# BB#32:                                # %.lr.ph31.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	decl	%esi
	.align	16, 0x90
.LBB7_33:                               # %.lr.ph31
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	.L.str.52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%esi
	jne	.LBB7_33
	.align	16, 0x90
.LBB7_34:                               # %.loopexit
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	(%edi), %eax
	movl	-12(%eax), %eax
	movl	124(%edi,%eax), %esi
	testl	%esi, %esi
	je	.LBB7_43
# BB#35:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpb	$0, 28(%esi)
	je	.LBB7_37
# BB#36:                                #   in Loop: Header=BB7_1 Depth=1
	movb	39(%esi), %al
	jmp	.LBB7_38
	.align	16, 0x90
.LBB7_37:                               #   in Loop: Header=BB7_1 Depth=1
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB7_38:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	68(%esp), %esi          # 4-byte Reload
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	addl	$-9, 32(%esp)           # 4-byte Folded Spill
	cmpl	$1, %esi
	movl	52(%esp), %esi          # 4-byte Reload
	jg	.LBB7_1
# BB#4:
	leal	.L.str.53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$32, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	(%edi), %eax
	movl	-12(%eax), %eax
	movl	124(%edi,%eax), %esi
	testl	%esi, %esi
	je	.LBB7_39
# BB#5:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 28(%esi)
	je	.LBB7_7
# BB#6:
	movb	39(%esi), %al
	jmp	.LBB7_8
.LBB7_7:
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB7_8:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB7_41:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB7_43:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB7_39:
	calll	_ZSt16__throw_bad_castv@PLT
.Lfunc_end7:
	.size	_ZNK10game_state5printEv, .Lfunc_end7-_ZNK10game_state5printEv
	.cfi_endproc

	.text
	.globl	_Z14is_final_statePK10game_state
	.align	16, 0x90
	.type	_Z14is_final_statePK10game_state,@function
_Z14is_final_statePK10game_state:       # @_Z14is_final_statePK10game_state
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp79:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp80:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp82:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.Ltmp83:
	.cfi_def_cfa_offset 48
.Ltmp84:
	.cfi_offset %esi, -20
.Ltmp85:
	.cfi_offset %edi, -16
.Ltmp86:
	.cfi_offset %ebx, -12
.Ltmp87:
	.cfi_offset %ebp, -8
	calll	.L8$pb
.Ltmp88:
	.cfi_adjust_cfa_offset 4
.L8$pb:
	popl	%ebx
.Ltmp89:
	.cfi_adjust_cfa_offset -4
.Ltmp90:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp90-.L8$pb), %ebx
	movl	48(%esp), %edi
	leal	1(%edi), %ebp
	addl	$82, %edi
	xorl	%esi, %esi
	movl	%ebp, %eax
	.align	16, 0x90
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%esi, %ecx
	movzbl	1(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	2(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	3(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	4(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	5(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	6(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	7(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	8(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %esi
	addl	%edx, %esi
	addl	$9, %eax
	cmpl	%edi, %eax
	jne	.LBB8_1
# BB#2:                                 # %_ZNK10game_state5countE9FieldType.exit.preheader
	movl	%edi, 24(%esp)          # 4-byte Spill
	xorl	%edi, %edi
	movl	%ebp, %eax
	.align	16, 0x90
.LBB8_3:                                # %_ZNK10game_state5countE9FieldType.exit
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edi, %ecx
	movzbl	1(%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	2(%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	3(%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	4(%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	5(%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	6(%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	7(%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	8(%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %edi
	addl	%edx, %edi
	addl	$9, %eax
	cmpl	24(%esp), %eax          # 4-byte Folded Reload
	jne	.LBB8_3
# BB#4:                                 # %_ZNK10game_state5countE9FieldType.exit36
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%eax, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, 4(%esp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, (%esp)
	calll	_ZNSo9_M_insertImEERSoT_@PLT
	movl	%eax, %esi
	leal	.L.str.11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$5, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSo9_M_insertImEERSoT_@PLT
	leal	.L.str.6@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	movl	24(%esp), %edi          # 4-byte Reload
	.align	16, 0x90
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	1(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	2(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	3(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	4(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	5(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	6(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	7(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %esi
	addl	%edx, %esi
	movzbl	8(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%esi, %ecx
	addl	$9, %eax
	cmpl	%edi, %eax
	jne	.LBB8_5
# BB#6:                                 # %_ZNK10game_state5countE9FieldType.exit24
	movb	$1, %al
	cmpl	$9, %ecx
	jb	.LBB8_10
# BB#7:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_8:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%ebp), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	1(%ebp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	2(%ebp), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	3(%ebp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	4(%ebp), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	5(%ebp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	6(%ebp), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	7(%ebp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	addl	%ecx, %edx
	movzbl	8(%ebp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	addl	$9, %ebp
	cmpl	%edi, %ebp
	jne	.LBB8_8
# BB#9:                                 # %_ZNK10game_state5countE9FieldType.exit12
	cmpl	$9, %eax
	setb	%al
.LBB8_10:
	movzbl	%al, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end8:
	.size	_Z14is_final_statePK10game_state, .Lfunc_end8-_Z14is_final_statePK10game_state
	.cfi_endproc

	.globl	_Z10move_validPK10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10move_validPK10game_statePK9game_move,@function
_Z10move_validPK10game_statePK9game_move: # @_Z10move_validPK10game_statePK9game_move
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	76(%esp), %esi
	movl	20(%esi), %ecx
	movl	4(%esi), %ebp
	movl	%ecx, %eax
	subl	%ebp, %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	leal	1(%eax), %edx
	xorl	%eax, %eax
	cmpl	$2, %edx
	ja	.LBB9_77
# BB#1:
	movl	8(%esi), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	movl	24(%esi), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	subl	%edi, %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	incl	%edx
	cmpl	$2, %edx
	ja	.LBB9_77
# BB#2:
	movl	%ecx, %eax
	subl	%ebp, %eax
	movl	%eax, (%esp)            # 4-byte Spill
	setne	%dl
	movl	40(%esp), %eax          # 4-byte Reload
	subl	8(%esp), %eax           # 4-byte Folded Reload
	movl	%eax, 36(%esp)          # 4-byte Spill
	setne	%bl
	movl	12(%esp), %eax          # 4-byte Reload
	cmpl	%eax, 48(%esp)          # 4-byte Folded Reload
	sete	%dh
	movb	%dl, %bh
	orb	%bl, %bh
	xorl	%eax, %eax
	movzbl	%bh, %edi
	cmpl	$1, %edi
	jne	.LBB9_77
# BB#3:
	andb	%bl, %dl
	xorb	$1, %dl
	orb	%dl, %dh
	je	.LBB9_77
# BB#4:
	movl	72(%esp), %edi
	movl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB9_44
# BB#5:
	cmpl	$1, %eax
	jne	.LBB9_76
# BB#6:
	movl	12(%esi), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	subl	%ebp, %edx
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	cmpl	$2, %eax
	jg	.LBB9_76
# BB#7:
	movl	16(%esi), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	subl	8(%esp), %esi           # 4-byte Folded Reload
	movl	%esi, %eax
	negl	%eax
	cmovll	%esi, %eax
	cmpl	$2, %eax
	jg	.LBB9_76
# BB#8:
	cmpl	%ebp, 44(%esp)          # 4-byte Folded Reload
	setne	%bl
	movl	36(%esp), %eax          # 4-byte Reload
	cmpl	8(%esp), %eax           # 4-byte Folded Reload
	setne	%al
	cmpl	%esi, %edx
	sete	%bh
	movb	%bl, %ah
	orb	%al, %ah
	movzbl	%ah, %edi
	cmpl	$1, %edi
	movl	72(%esp), %edi
	jne	.LBB9_76
# BB#9:
	andb	%al, %bl
	xorb	$1, %bl
	orb	%bl, %bh
	je	.LBB9_76
# BB#10:
	imull	48(%esp), %esi          # 4-byte Folded Reload
	imull	12(%esp), %edx          # 4-byte Folded Reload
	cmpl	%edx, %esi
	je	.LBB9_76
# BB#11:
	movl	40(%esp), %eax          # 4-byte Reload
	leal	5(%eax), %eax
	cmpl	%ecx, %eax
	jle	.LBB9_76
# BB#12:
	leal	5(%ecx), %eax
	cmpl	40(%esp), %eax          # 4-byte Folded Reload
	jle	.LBB9_76
# BB#13:
	decl	%ecx
	cmpl	$8, %ecx
	ja	.LBB9_76
# BB#14:
	movl	40(%esp), %eax          # 4-byte Reload
	decl	%eax
	cmpl	$8, %eax
	movl	%eax, %edx
	ja	.LBB9_76
# BB#15:                                # %_ZNK10game_state3getEii.exit
	leal	(%ecx,%ecx,8), %eax
	addl	%edi, %eax
	movzbl	1(%edx,%eax), %eax
	cmpl	$3, %eax
	jne	.LBB9_76
# BB#16:
	movl	48(%esp), %eax          # 4-byte Reload
	movl	44(%esp), %ecx          # 4-byte Reload
	leal	(%ecx,%eax), %eax
	movl	12(%esp), %ecx          # 4-byte Reload
	movl	36(%esp), %edx          # 4-byte Reload
	leal	5(%edx,%ecx), %edx
	cmpl	%eax, %edx
	jle	.LBB9_76
# BB#17:
	movl	12(%esp), %eax          # 4-byte Reload
	movl	36(%esp), %ecx          # 4-byte Reload
	leal	(%ecx,%eax), %eax
	movl	48(%esp), %ecx          # 4-byte Reload
	movl	44(%esp), %edx          # 4-byte Reload
	leal	5(%edx,%ecx), %edx
	cmpl	%eax, %edx
	jle	.LBB9_76
# BB#18:
	movl	48(%esp), %eax          # 4-byte Reload
	movl	44(%esp), %ecx          # 4-byte Reload
	leal	-1(%ecx,%eax), %eax
	cmpl	$8, %eax
	ja	.LBB9_76
# BB#19:
	movl	12(%esp), %ecx          # 4-byte Reload
	movl	36(%esp), %edx          # 4-byte Reload
	leal	-1(%edx,%ecx), %edx
	cmpl	$8, %edx
	ja	.LBB9_76
# BB#20:                                # %_ZNK10game_state3getEii.exit87
	leal	(%eax,%eax,8), %eax
	addl	%edi, %eax
	movzbl	1(%edx,%eax), %eax
	cmpl	$3, %eax
	jne	.LBB9_76
# BB#21:
	movl	44(%esp), %eax          # 4-byte Reload
	leal	(%eax,%ebp), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movl	48(%esp), %eax          # 4-byte Reload
	leal	(%ebx,%eax), %eax
	movl	8(%esp), %ecx           # 4-byte Reload
	movl	36(%esp), %edx          # 4-byte Reload
	leal	(%edx,%ecx), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	movl	12(%esp), %ecx          # 4-byte Reload
	leal	5(%esi,%ecx), %edx
	cmpl	%eax, %edx
	jle	.LBB9_76
# BB#22:
	movl	12(%esp), %eax          # 4-byte Reload
	leal	(%esi,%eax), %eax
	movl	48(%esp), %ecx          # 4-byte Reload
	leal	5(%ebx,%ecx), %edx
	cmpl	%eax, %edx
	jle	.LBB9_76
# BB#23:
	movl	48(%esp), %eax          # 4-byte Reload
	leal	-1(%ebx,%eax), %eax
	cmpl	$8, %eax
	ja	.LBB9_76
# BB#24:
	movl	12(%esp), %ecx          # 4-byte Reload
	leal	-1(%esi,%ecx), %edx
	cmpl	$8, %edx
	ja	.LBB9_76
# BB#25:                                # %_ZNK10game_state3getEii.exit81
	leal	(%eax,%eax,8), %eax
	addl	%edi, %eax
	movzbl	1(%edx,%eax), %eax
	cmpl	$3, %eax
	jne	.LBB9_76
# BB#26:
	movl	8(%esp), %ecx           # 4-byte Reload
	leal	5(%ecx), %eax
	movb	$4, %dl
	cmpl	%ebp, %eax
	jle	.LBB9_31
# BB#27:
	leal	5(%ebp), %eax
	cmpl	%ecx, %eax
	movl	%ecx, %eax
	jle	.LBB9_31
# BB#28:
	decl	%ebp
	cmpl	$8, %ebp
	ja	.LBB9_31
# BB#29:
	decl	%eax
	cmpl	$8, %eax
	movl	%eax, %ecx
	ja	.LBB9_31
# BB#30:
	leal	(%ebp,%ebp,8), %eax
	addl	%edi, %eax
	movb	1(%ecx,%eax), %dl
.LBB9_31:                               # %_ZNK10game_state3getEii.exit75
	movzbl	(%edi), %eax
	movzbl	%dl, %ecx
	cmpl	%eax, %ecx
	jne	.LBB9_76
# BB#32:
	movl	36(%esp), %eax          # 4-byte Reload
	leal	5(%eax), %eax
	movb	$4, %dl
	cmpl	44(%esp), %eax          # 4-byte Folded Reload
	jle	.LBB9_37
# BB#33:
	movl	44(%esp), %eax          # 4-byte Reload
	leal	5(%eax), %eax
	cmpl	36(%esp), %eax          # 4-byte Folded Reload
	jle	.LBB9_37
# BB#34:
	movl	44(%esp), %eax          # 4-byte Reload
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB9_37
# BB#35:
	movl	36(%esp), %ebp          # 4-byte Reload
	decl	%ebp
	cmpl	$8, %ebp
	ja	.LBB9_37
# BB#36:
	leal	(%eax,%eax,8), %eax
	addl	%edi, %eax
	movb	1(%ebp,%eax), %dl
.LBB9_37:                               # %_ZNK10game_state3getEii.exit69
	movzbl	%dl, %eax
	cmpl	%ecx, %eax
	jne	.LBB9_76
# BB#38:
	leal	5(%esi), %edx
	movb	$4, %al
	cmpl	%ebx, %edx
	jle	.LBB9_43
# BB#39:
	leal	5(%ebx), %edx
	cmpl	%esi, %edx
	jle	.LBB9_43
# BB#40:
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB9_43
# BB#41:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB9_43
# BB#42:
	leal	(%ebx,%ebx,8), %eax
	addl	%eax, %edi
	movb	1(%esi,%edi), %al
.LBB9_43:                               # %_ZNK10game_state3getEii.exit63
	movzbl	%al, %edx
	movb	$1, %al
	cmpl	%ecx, %edx
	jne	.LBB9_76
	jmp	.LBB9_77
.LBB9_44:
	movl	8(%esp), %esi           # 4-byte Reload
	leal	-1(%esi), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	leal	5(%esi), %edx
	movb	$4, %al
	cmpl	%ebp, %edx
	jle	.LBB9_45
# BB#46:
	leal	5(%ebp), %edx
	cmpl	%esi, %edx
	jle	.LBB9_47
# BB#48:
	leal	-1(%ebp), %edx
	movl	%esi, %ebx
	cmpl	$8, %edx
	ja	.LBB9_51
# BB#49:
	cmpl	$8, 20(%esp)            # 4-byte Folded Reload
	ja	.LBB9_51
# BB#50:
	leal	(%edx,%edx,8), %eax
	addl	%edi, %eax
	movl	20(%esp), %edx          # 4-byte Reload
	movb	1(%edx,%eax), %al
	jmp	.LBB9_51
.LBB9_45:
	movl	%esi, %ebx
	jmp	.LBB9_51
.LBB9_47:
	movl	%esi, %ebx
.LBB9_51:                               # %_ZNK10game_state3getEii.exit57
	movzbl	(%edi), %edx
	movzbl	%al, %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	cmpl	%edx, %eax
	jne	.LBB9_76
# BB#52:                                # %.preheader.preheader
	leal	(%ebp,%ebp,8), %eax
	leal	-9(%edi,%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	leal	(%ecx,%ecx,8), %esi
	movl	40(%esp), %ecx          # 4-byte Reload
	addl	%esi, %ecx
	movl	%ebx, %esi
	subl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	xorl	%edi, %edi
	movl	$0, 24(%esp)            # 4-byte Folded Spill
	jmp	.LBB9_53
	.align	16, 0x90
.LBB9_56:                               #   in Loop: Header=BB9_53 Depth=1
	incl	24(%esp)                # 4-byte Folded Spill
	movl	%ebx, %ebp
	addl	48(%esp), %ebp          # 4-byte Folded Reload
	addl	40(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	addl	36(%esp), %edi          # 4-byte Folded Reload
.LBB9_53:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	(%esi,%edi), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	leal	-1(%ebp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	cmpl	$9, %eax
	sbbb	%al, %al
	movl	20(%esp), %ecx          # 4-byte Reload
	leal	(%ecx,%edi), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	cmpl	$9, %ecx
	sbbb	%ah, %ah
	movl	%ebp, %ebx
	movl	%esi, %ebp
	leal	5(%ebx), %esi
	cmpl	%edx, %esi
	setg	%cl
	andb	%al, %cl
	leal	5(%ebp,%edi), %esi
	cmpl	%ebx, %esi
	movl	%ebp, %esi
	setg	%al
	andb	%cl, %al
	andb	%ah, %al
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	movb	$4, %ah
	movl	44(%esp), %edx          # 4-byte Reload
	jne	.LBB9_55
# BB#54:                                #   in Loop: Header=BB9_53 Depth=1
	movb	(%esi,%edx), %ah
.LBB9_55:                               # %_ZNK10game_state3getEii.exit51
                                        #   in Loop: Header=BB9_53 Depth=1
	movzbl	%ah, %ecx
	cmpl	16(%esp), %ecx          # 4-byte Folded Reload
	je	.LBB9_56
# BB#57:
	movl	24(%esp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	movl	%ebx, %ebp
	movl	32(%esp), %ebx          # 4-byte Reload
	je	.LBB9_76
# BB#58:
	cmpl	$3, %ecx
	jg	.LBB9_76
# BB#59:
	cmpl	$1, 16(%esp)            # 4-byte Folded Reload
	sete	%ah
	testb	%al, %al
	movl	4(%esp), %ecx           # 4-byte Reload
	je	.LBB9_60
# BB#61:                                # %_ZNK10game_state3getEii.exit45.preheader
	incb	%ah
	movl	28(%esp), %edx          # 4-byte Reload
	leal	-1(%edx), %esi
	leal	-1(%ebp), %edi
	movzbl	%ah, %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	%ecx, %ebx
	movb	$1, %al
	movl	%eax, 40(%esp)          # 4-byte Spill
.LBB9_62:                               # %_ZNK10game_state3getEii.exit45
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %edx
	leal	(%ebx,%ebx,8), %eax
	addl	72(%esp), %eax
	movl	44(%esp), %esi          # 4-byte Reload
	movzbl	1(%esi,%eax), %eax
	cmpl	20(%esp), %eax          # 4-byte Folded Reload
	jne	.LBB9_63
# BB#64:                                #   in Loop: Header=BB9_62 Depth=1
	movl	%ebp, %ebx
	decl	24(%esp)                # 4-byte Folded Spill
	movl	36(%esp), %esi          # 4-byte Reload
	leal	6(%esi,%edx), %eax
	movl	(%esp), %ecx            # 4-byte Reload
	leal	1(%ecx,%edi), %ebp
	movl	$0, 40(%esp)            # 4-byte Folded Spill
	cmpl	%ebp, %eax
	leal	(%ecx,%edi), %ebp
	leal	(%esi,%edx), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	jle	.LBB9_65
# BB#66:                                #   in Loop: Header=BB9_62 Depth=1
	leal	1(%esi,%edx), %eax
	leal	6(%ecx,%edi), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_65
# BB#67:                                #   in Loop: Header=BB9_62 Depth=1
	movl	%ebp, %ecx
	cmpl	$8, %ecx
	ja	.LBB9_68
# BB#69:                                #   in Loop: Header=BB9_62 Depth=1
	movl	48(%esp), %eax          # 4-byte Reload
	movl	%ebx, %ebp
	leal	-1(%ebp,%eax), %ebx
	addl	%eax, %ebp
	movl	12(%esp), %eax          # 4-byte Reload
	movl	28(%esp), %edx          # 4-byte Reload
	leal	-1(%edx,%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	addl	%eax, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	cmpl	$9, %edx
	movl	%ecx, %edi
	movl	%edx, %esi
	movl	$0, %eax
	jb	.LBB9_62
	jmp	.LBB9_70
.LBB9_60:
	movb	$1, %al
	movl	%eax, 40(%esp)          # 4-byte Spill
	xorl	%eax, %eax
	movl	%ebx, %edx
	jmp	.LBB9_70
.LBB9_63:
	movb	$1, %al
	movl	%esi, %edx
	movl	%ebx, %ecx
	jmp	.LBB9_70
.LBB9_65:
	xorl	%eax, %eax
	movl	%ebp, %ecx
	movl	32(%esp), %edx          # 4-byte Reload
.LBB9_70:                               # %_ZNK10game_state3getEii.exit45.thread
	movl	%eax, %edi
	movl	%ecx, %eax
	cmpl	$0, 24(%esp)            # 4-byte Folded Reload
	movl	72(%esp), %esi
	jle	.LBB9_76
# BB#71:
	movl	%edi, %ecx
	testb	%cl, %cl
	je	.LBB9_72
# BB#73:                                # %_ZNK10game_state3getEii.exit39
	leal	(%eax,%eax,8), %eax
	addl	%eax, %esi
	movzbl	1(%edx,%esi), %ecx
	movb	$1, %al
	cmpl	$3, %ecx
	je	.LBB9_77
# BB#74:
	movzbl	%cl, %eax
	cmpl	$4, %eax
	setne	%al
	jmp	.LBB9_75
.LBB9_72:
	xorl	%eax, %eax
.LBB9_75:                               # %_ZNK10game_state3getEii.exit33
	movl	40(%esp), %ecx          # 4-byte Reload
	orb	%al, %cl
	movb	$1, %al
	testb	$1, %cl
	je	.LBB9_77
.LBB9_76:                               # %.thread92
	xorl	%eax, %eax
.LBB9_77:
	movzbl	%al, %eax
	addl	$52, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB9_68:
	xorl	%eax, %eax
	movl	32(%esp), %edx          # 4-byte Reload
	jmp	.LBB9_70
.Lfunc_end9:
	.size	_Z10move_validPK10game_statePK9game_move, .Lfunc_end9-_Z10move_validPK10game_statePK9game_move

	.globl	_Z10apply_moveP10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10apply_moveP10game_statePK9game_move,@function
_Z10apply_moveP10game_statePK9game_move: # @_Z10apply_moveP10game_statePK9game_move
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	.L10$pb
.L10$pb:
	popl	%ebx
.Ltmp91:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp91-.L10$pb), %ebx
	movl	84(%esp), %esi
	movl	80(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_Z10move_validPK10game_statePK9game_move@PLT
	testb	%al, %al
	je	.LBB10_1
# BB#2:
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	20(%esi), %ebx
	movl	(%esi), %eax
	movl	4(%esi), %ebp
	movl	%ebx, %ecx
	subl	%ebp, %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	24(%esi), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	8(%esi), %edi
	subl	%edi, %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	cmpl	$1, %eax
	movb	$1, %dl
	je	.LBB10_12
# BB#3:
	testl	%eax, %eax
	jne	.LBB10_36
# BB#4:                                 # %.preheader.preheader
	leal	(%ebp,%ebp,8), %eax
	movl	80(%esp), %ecx
	leal	-9(%ecx,%eax), %esi
	leal	(%ebx,%ebx,8), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	addl	%edx, %ecx
	subl	%edi, %ecx
	subl	%eax, %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	leal	-1(%edi), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movb	$3, %dl
	xorl	%eax, %eax
	.align	16, 0x90
.LBB10_5:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	5(%edi,%eax), %ebx
	cmpl	%ebp, %ebx
	jle	.LBB10_11
# BB#6:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	leal	5(%ebp), %ebx
	leal	(%edi,%eax), %ecx
	cmpl	%ecx, %ebx
	jle	.LBB10_11
# BB#7:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	leal	-1(%ebp), %ecx
	cmpl	$8, %ecx
	ja	.LBB10_11
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	44(%esp), %ecx          # 4-byte Reload
	leal	(%ecx,%eax), %ecx
	cmpl	$8, %ecx
	ja	.LBB10_11
# BB#9:                                 # %_ZNK10game_state3getEii.exit50
                                        #   in Loop: Header=BB10_5 Depth=1
	movzbl	(%edi,%esi), %ebx
	cmpl	$4, %ebx
	je	.LBB10_11
# BB#10:                                #   in Loop: Header=BB10_5 Depth=1
	movb	%dl, (%edi,%esi)
	addl	48(%esp), %ebp          # 4-byte Folded Reload
	addl	52(%esp), %esi          # 4-byte Folded Reload
	addl	56(%esp), %eax          # 4-byte Folded Reload
	movzbl	%bl, %ecx
	cmpl	$3, %ecx
	movb	%bl, %dl
	jne	.LBB10_5
.LBB10_11:
	movb	$1, %dl
	jmp	.LBB10_36
.LBB10_1:
	xorl	%edx, %edx
	jmp	.LBB10_36
.LBB10_12:
	leal	-1(%ebp), %ecx
	cmpl	$9, %ecx
	sbbb	%al, %al
	leal	-1(%edi), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	cmpl	$9, %edx
	sbbb	%dl, %dl
	movb	%dl, 40(%esp)           # 1-byte Spill
	leal	5(%ebp), %edx
	cmpl	%edi, %edx
	setg	%dl
	andb	%al, %dl
	leal	5(%edi), %eax
	cmpl	%ebp, %eax
	setg	%al
	andb	%dl, %al
	andb	40(%esp), %al           # 1-byte Folded Reload
	movb	%al, 35(%esp)           # 1-byte Spill
	movb	$4, %dl
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB10_14
# BB#13:
	leal	(%ecx,%ecx,8), %eax
	addl	80(%esp), %eax
	movl	36(%esp), %edx          # 4-byte Reload
	movb	1(%edx,%eax), %dl
.LBB10_14:                              # %_ZNK10game_state3getEii.exit
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	leal	5(%ecx), %eax
	cmpl	%ebx, %eax
	jle	.LBB10_37
# BB#15:                                # %_ZNK10game_state3getEii.exit
	leal	5(%ebx), %eax
	cmpl	%ecx, %eax
	jle	.LBB10_37
# BB#16:                                # %_ZNK10game_state3getEii.exit
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB10_37
# BB#17:                                # %_ZNK10game_state3getEii.exit
	decl	%ecx
	cmpl	$9, %ecx
	jae	.LBB10_37
# BB#18:                                # %_ZN10game_state3setEii9FieldType.exit13
	leal	(%ebx,%ebx,8), %eax
	addl	80(%esp), %eax
	movb	%dl, 1(%ecx,%eax)
	movb	%dl, 52(%esp)           # 1-byte Spill
	movl	12(%esi), %ebx
	movl	16(%esi), %ecx
	movl	48(%esp), %esi          # 4-byte Reload
	leal	(%ebx,%esi), %eax
	movl	56(%esp), %edx          # 4-byte Reload
	leal	5(%ecx,%edx), %edx
	cmpl	%eax, %edx
	jle	.LBB10_37
# BB#19:                                # %_ZN10game_state3setEii9FieldType.exit13
	movl	56(%esp), %eax          # 4-byte Reload
	leal	(%ecx,%eax), %eax
	leal	5(%ebx,%esi), %edx
	cmpl	%eax, %edx
	jle	.LBB10_37
# BB#20:                                # %_ZN10game_state3setEii9FieldType.exit13
	leal	-1(%ebx,%esi), %eax
	cmpl	$8, %eax
	ja	.LBB10_37
# BB#21:                                # %_ZN10game_state3setEii9FieldType.exit13
	movl	56(%esp), %edx          # 4-byte Reload
	leal	-1(%ecx,%edx), %edx
	cmpl	$9, %edx
	jae	.LBB10_37
# BB#22:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	(%eax,%eax,8), %eax
	addl	80(%esp), %eax
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movb	52(%esp), %cl           # 1-byte Reload
	movb	%cl, 1(%edx,%eax)
	addl	%ebx, %ebp
	movl	%ebx, 24(%esp)          # 4-byte Spill
	movl	%esi, %eax
	movl	%ebp, %ebx
	shrl	$31, %ebx
	addl	%ebp, %ebx
	sarl	%ebx
	leal	(%ebx,%eax), %esi
	addl	40(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, %ebp
	shrl	$31, %ebp
	addl	%edi, %ebp
	sarl	%ebp
	movl	56(%esp), %ecx          # 4-byte Reload
	leal	5(%ebp,%ecx), %edx
	cmpl	%esi, %edx
	jle	.LBB10_37
# BB#23:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	(%ebp,%ecx), %edi
	leal	5(%ebx,%eax), %edx
	cmpl	%edi, %edx
	jle	.LBB10_37
# BB#24:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	-1(%ebx,%eax), %eax
	cmpl	$8, %eax
	ja	.LBB10_37
# BB#25:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	-1(%ebp,%ecx), %edx
	cmpl	$9, %edx
	jae	.LBB10_37
# BB#26:                                # %_ZN10game_state3setEii9FieldType.exit25
	leal	(%eax,%eax,8), %eax
	movl	80(%esp), %esi
	addl	%esi, %eax
	movb	52(%esp), %cl           # 1-byte Reload
	movb	%cl, 1(%edx,%eax)
	cmpb	$0, 35(%esp)            # 1-byte Folded Reload
	je	.LBB10_37
# BB#27:                                # %_ZN10game_state3setEii9FieldType.exit31
	movl	28(%esp), %eax          # 4-byte Reload
	leal	(%eax,%eax,8), %eax
	addl	%esi, %eax
	movl	36(%esp), %edx          # 4-byte Reload
	movb	$3, 1(%edx,%eax)
	movl	40(%esp), %ecx          # 4-byte Reload
	leal	5(%ecx), %eax
	movl	24(%esp), %edi          # 4-byte Reload
	cmpl	%edi, %eax
	movb	$1, %dl
	jle	.LBB10_37
# BB#28:                                # %_ZN10game_state3setEii9FieldType.exit31
	leal	5(%edi), %eax
	cmpl	%ecx, %eax
	jle	.LBB10_37
# BB#29:                                # %_ZN10game_state3setEii9FieldType.exit31
	decl	%edi
	cmpl	$8, %edi
	ja	.LBB10_37
# BB#30:                                # %_ZN10game_state3setEii9FieldType.exit31
	decl	%ecx
	cmpl	$9, %ecx
	jae	.LBB10_37
# BB#31:                                # %_ZN10game_state3setEii9FieldType.exit37
	leal	(%edi,%edi,8), %eax
	addl	%esi, %eax
	movb	$3, 1(%ecx,%eax)
	leal	5(%ebp), %eax
	cmpl	%ebx, %eax
	jle	.LBB10_37
# BB#32:                                # %_ZN10game_state3setEii9FieldType.exit37
	leal	5(%ebx), %eax
	cmpl	%ebp, %eax
	jle	.LBB10_37
# BB#33:                                # %_ZN10game_state3setEii9FieldType.exit37
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB10_37
# BB#34:                                # %_ZN10game_state3setEii9FieldType.exit37
	decl	%ebp
	cmpl	$9, %ebp
	jae	.LBB10_37
# BB#35:                                # %_ZN10game_state3setEii9FieldType.exit43
	leal	(%ebx,%ebx,8), %eax
	addl	%eax, %esi
	movb	$3, 1(%ebp,%esi)
.LBB10_36:                              # %.thread
	movzbl	%dl, %eax
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB10_37:                              # %_ZL15check_valid_posii.exit.thread.i12
	movl	44(%esp), %ebx          # 4-byte Reload
	leal	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$148, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end10:
	.size	_Z10apply_moveP10game_statePK9game_move, .Lfunc_end10-_Z10apply_moveP10game_statePK9game_move

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp92:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp93:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp95:
	.cfi_def_cfa_offset 20
	subl	$540, %esp              # imm = 0x21C
.Ltmp96:
	.cfi_def_cfa_offset 560
.Ltmp97:
	.cfi_offset %esi, -20
.Ltmp98:
	.cfi_offset %edi, -16
.Ltmp99:
	.cfi_offset %ebx, -12
.Ltmp100:
	.cfi_offset %ebp, -8
	calll	.L11$pb
.Ltmp101:
	.cfi_adjust_cfa_offset 4
.L11$pb:
	popl	%ebx
.Ltmp102:
	.cfi_adjust_cfa_offset -4
.Ltmp103:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp103-.L11$pb), %ebx
	movl	564(%esp), %ebp
	movl	560(%esp), %esi
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	%edi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$23, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.12@GOTOFF(%ebx), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	leal	.L.str.14@GOTOFF(%ebx), %edi
	jmp	.LBB11_1
.LBB11_18:                              #   in Loop: Header=BB11_1 Depth=1
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	shll	$20, %eax
	movl	%eax, _ZL9mem_limit@GOTOFF+4(%ebx)
	.align	16, 0x90
.LBB11_1:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	calll	getopt@PLT
	cmpl	$99, %eax
	jle	.LBB11_2
# BB#9:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$114, %eax
	jg	.LBB11_14
# BB#10:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$100, %eax
	je	.LBB11_80
# BB#11:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$109, %eax
	jne	.LBB11_12
# BB#17:                                #   in Loop: Header=BB11_1 Depth=1
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	shll	$20, %eax
	movl	%eax, _ZL9mem_limit@GOTOFF(%ebx)
	jmp	.LBB11_1
	.align	16, 0x90
.LBB11_2:                               # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$76, %eax
	jle	.LBB11_3
# BB#6:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$77, %eax
	je	.LBB11_18
# BB#7:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$84, %eax
	jne	.LBB11_1
# BB#8:                                 #   in Loop: Header=BB11_1 Depth=1
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	movl	%eax, _ZL9cpu_limit.1@GOTOFF(%ebx)
	jmp	.LBB11_1
	.align	16, 0x90
.LBB11_14:                              # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$115, %eax
	je	.LBB11_19
# BB#15:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$116, %eax
	jne	.LBB11_1
# BB#16:                                #   in Loop: Header=BB11_1 Depth=1
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	movl	%eax, _ZL9cpu_limit.0@GOTOFF(%ebx)
	jmp	.LBB11_1
.LBB11_3:                               # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$-1, %eax
	je	.LBB11_20
# BB#4:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$58, %eax
	je	.LBB11_13
# BB#5:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$63, %eax
	jne	.LBB11_1
	jmp	.LBB11_13
.LBB11_80:                              #   in Loop: Header=BB11_1 Depth=1
	movb	$1, _ZL5debug@GOTOFF(%ebx)
	jmp	.LBB11_1
.LBB11_19:                              #   in Loop: Header=BB11_1 Depth=1
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	jmp	.LBB11_1
.LBB11_12:                              # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$104, %eax
	jne	.LBB11_1
	jmp	.LBB11_13
.LBB11_20:
	movl	optind@GOT(%ebx), %edi
	movl	(%edi), %eax
	addl	$2, %eax
	cmpl	%esi, %eax
	jg	.LBB11_13
# BB#21:
	movl	$1, 360(%esp)
	leal	364(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 496(%esp)
	movl	$0, 360(%esp)
	movl	$0, 492(%esp)
	leal	360(%esp), %ebp
	movl	%ebp, 4(%esp)
	movl	$0, 8(%esp)
	movl	$13, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB11_81
# BB#22:
	movl	$0, 216(%esp)
	leal	220(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 352(%esp)
	leal	_ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 216(%esp)
	movl	$268435460, 348(%esp)   # imm = 0x10000004
	leal	216(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$14, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	movl	56(%esp), %esi          # 4-byte Reload
	jne	.LBB11_81
# BB#23:
	movl	$0, 72(%esp)
	leal	76(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 208(%esp)
	leal	_ZL13child_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 72(%esp)
	movl	$268435460, 204(%esp)   # imm = 0x10000004
	leal	72(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$17, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB11_81
# BB#24:                                # %_ZL21setup_signal_handlersv.exit
	movl	(%edi), %eax
	movl	%edi, 64(%esp)          # 4-byte Spill
	movl	564(%esp), %edi
	movl	(%edi,%eax,4), %ecx
	leal	_ZL6player@GOTOFF(%ebx), %edx
	calll	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB11_82
# BB#25:
	movl	64(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	movl	4(%edi,%eax,4), %ecx
	leal	_ZL6player@GOTOFF+16(%ebx), %edx
	calll	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB11_82
# BB#26:
	movl	%ebp, (%esp)
	movl	$82, 8(%esp)
	movl	$4, 4(%esp)
	calll	memset@PLT
	movl	68(%esp), %edi          # 4-byte Reload
	testl	%edi, %edi
	je	.LBB11_83
# BB#27:
	movl	%edi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB11_84
# BB#28:                                # %_Z16initialize_stateP10game_statePKc.exit
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	%ebp, (%esp)
	calll	_ZNK10game_state5printEv@PLT
	movzbl	360(%esp), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	xorl	%edx, %edx
.LBB11_29:                              # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_32 Depth 2
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%ebp, (%esp)
	calll	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	movl	36(%esp), %edi          # 4-byte Reload
	jne	.LBB11_30
# BB#31:                                # %.lr.ph
                                        #   in Loop: Header=BB11_29 Depth=1
	movl	68(%esp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	orl	$1, %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	shll	$4, %eax
	leal	_ZL6player@GOTOFF(%ebx,%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+13(%ebx,%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+12(%ebx,%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+8(%ebx,%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+4(%ebx,%eax), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	.align	16, 0x90
.LBB11_32:                              #   Parent Loop BB11_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, 52(%esp)            # 4-byte Folded Reload
	jne	.LBB11_85
# BB#33:                                #   in Loop: Header=BB11_32 Depth=2
	cmpl	$1, %ecx
	je	.LBB11_36
# BB#34:                                #   in Loop: Header=BB11_32 Depth=2
	testl	%ecx, %ecx
	jne	.LBB11_37
# BB#35:                                #   in Loop: Header=BB11_32 Depth=2
	movb	$1, 360(%esp)
	jmp	.LBB11_38
	.align	16, 0x90
.LBB11_36:                              #   in Loop: Header=BB11_32 Depth=2
	movb	$2, 360(%esp)
	jmp	.LBB11_38
	.align	16, 0x90
.LBB11_37:                              #   in Loop: Header=BB11_32 Depth=2
	movb	$4, 360(%esp)
.LBB11_38:                              # %_ZN10game_state6playerEi.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	%edi, %esi
	leal	512(%esp), %edi
	movl	%edi, (%esp)
	calll	time@PLT
	cmpl	$-1, 512(%esp)
	je	.LBB11_39
.LBB11_40:                              #   in Loop: Header=BB11_32 Depth=2
	movl	%edi, (%esp)
	calll	localtime@PLT
	movl	%eax, %edi
	testl	%edi, %edi
	je	.LBB11_41
.LBB11_42:                              # %_ZL10getTimeStrPcj.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	%edi, 12(%esp)
	leal	.L.str.95@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	216(%esp), %ebp
	movl	%ebp, (%esp)
	movl	$64, 4(%esp)
	calll	strftime@PLT
	movl	%esi, %edi
	movl	%edi, 4(%esp)
	movl	56(%esp), %esi          # 4-byte Reload
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.18@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$9, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$7, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	calll	fflush@PLT
	leal	360(%esp), %ebp
	movl	%ebp, 4(%esp)
	movl	$2, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	movl	64(%esp), %eax          # 4-byte Reload
	movb	$0, (%eax)
	movl	48(%esp), %eax          # 4-byte Reload
	movb	$0, (%eax)
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, _ZL14current_player@GOTOFF(%ebx)
	movl	_ZL9cpu_limit.0@GOTOFF(%ebx), %eax
	movl	$0, 512(%esp)
	movl	$0, 516(%esp)
	cmpl	$-1, %eax
	movl	$0, %ecx
	cmovel	%ecx, %eax
	movl	%eax, 520(%esp)
	movl	$0, 524(%esp)
	leal	512(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB11_43
# BB#45:                                # %_ZL9arm_timerl.exit.i
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	(%ebp), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	leal	360(%esp), %ebp
	js	.LBB11_58
# BB#46:                                #   in Loop: Header=BB11_32 Depth=2
	movl	44(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	64(%esp), %eax          # 4-byte Reload
	cmpb	$0, (%eax)
	jne	.LBB11_57
# BB#47:                                #   in Loop: Header=BB11_32 Depth=2
	movl	40(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	leal	72(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_Z16deserialize_moveiP9game_move@PLT
	movl	64(%esp), %ecx          # 4-byte Reload
	cmpb	$0, (%ecx)
	je	.LBB11_48
.LBB11_57:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.98@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$16, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
.LBB11_58:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit.thread
                                        #   in Loop: Header=BB11_32 Depth=2
	movzbl	_ZL5debug@GOTOFF(%ebx), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB11_62
# BB#59:                                #   in Loop: Header=BB11_32 Depth=2
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$20, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.6@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
.LBB11_60:                              # %.thread
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	%ebp, (%esp)
	calll	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	movl	68(%esp), %ecx          # 4-byte Reload
	je	.LBB11_32
	jmp	.LBB11_61
.LBB11_48:                              #   in Loop: Header=BB11_32 Depth=2
	testb	%al, %al
	je	.LBB11_58
# BB#49:                                #   in Loop: Header=BB11_32 Depth=2
	movl	60(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$19, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	js	.LBB11_58
# BB#50:                                #   in Loop: Header=BB11_32 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 512(%esp)
	leal	512(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB11_51
# BB#52:                                # %_ZL9arm_timerl.exit2.i
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	$0, _ZL14current_player@GOTOFF(%ebx)
	movl	$0, 504(%esp)
	movl	$0, 500(%esp)
	movw	$0, 508(%esp)
	movl	76(%esp), %ecx
	movl	_ZZNK9game_move8toStringEPcE3row@GOT(%ebx), %eax
	movb	(%eax,%ecx), %cl
	movb	%cl, 500(%esp)
	movl	80(%esp), %edx
	movl	_ZZNK9game_move8toStringEPcE4diag@GOT(%ebx), %ecx
	movb	(%ecx,%edx), %dl
	movb	%dl, 501(%esp)
	movl	$2, %edx
	cmpl	$1, 72(%esp)
	jne	.LBB11_54
# BB#53:                                #   in Loop: Header=BB11_32 Depth=2
	movb	$45, 502(%esp)
	movl	84(%esp), %edx
	movb	(%eax,%edx), %dl
	movb	%dl, 503(%esp)
	movl	88(%esp), %edx
	movb	(%ecx,%edx), %dl
	movb	%dl, 504(%esp)
	movl	$5, %edx
.LBB11_54:                              #   in Loop: Header=BB11_32 Depth=2
	movb	$44, 500(%esp,%edx)
	movl	92(%esp), %edi
	movb	(%eax,%edi), %al
	movb	%al, 501(%esp,%edx)
	movl	96(%esp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 502(%esp,%edx)
	movb	$0, 503(%esp,%edx)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$9, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	500(%esp), %eax
	movl	%eax, %edi
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.6@GOTOFF(%ebx), %edi
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	72(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_Z10apply_moveP10game_statePK9game_move@PLT
	movb	%al, 28(%esp)           # 1-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	cmpb	$0, 28(%esp)            # 1-byte Folded Reload
	jne	.LBB11_63
# BB#55:                                #   in Loop: Header=BB11_32 Depth=2
	leal	.L.str.21@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$25, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movb	_ZL5debug@GOTOFF(%ebx), %al
	andb	$1, %al
	movl	36(%esp), %edi          # 4-byte Reload
	jne	.LBB11_60
	jmp	.LBB11_56
.LBB11_39:                              #   in Loop: Header=BB11_32 Depth=2
	leal	.L.str.93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	jmp	.LBB11_40
.LBB11_41:                              #   in Loop: Header=BB11_32 Depth=2
	leal	.L.str.94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	jmp	.LBB11_42
.LBB11_63:                              #   in Loop: Header=BB11_29 Depth=1
	leal	.L.str.22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	68(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.23@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$8, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$1, %ecx
	subl	%edi, %ecx
	sete	%al
	movzbl	%al, %eax
	movl	32(%esp), %edx          # 4-byte Reload
	addl	%eax, %edx
	cmpl	$101, %edx
	movl	%ecx, %eax
	jl	.LBB11_29
	jmp	.LBB11_64
.LBB11_61:
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
.LBB11_64:                              # %.loopexit
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	%ebp, %edi
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	movl	%esi, %ecx
	movl	124(%ecx,%eax), %esi
	movl	%ecx, %ebp
	testl	%esi, %esi
	je	.LBB11_86
# BB#65:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 28(%esi)
	je	.LBB11_67
# BB#66:
	movl	%edx, 32(%esp)          # 4-byte Spill
	movb	39(%esi), %al
	jmp	.LBB11_68
.LBB11_67:
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB11_68:                              # %_Z8print_nlv.exit
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	leal	.Lstr@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	puts@PLT
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	calll	fflush@PLT
	movl	%edi, 4(%esp)
	movl	$1, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	movl	124(%ebp,%eax), %esi
	testl	%esi, %esi
	je	.LBB11_86
# BB#69:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i4
	cmpb	$0, 28(%esi)
	je	.LBB11_71
# BB#70:
	movb	39(%esi), %al
	jmp	.LBB11_72
.LBB11_71:
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB11_72:                              # %_Z8print_nlv.exit6
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	movl	124(%ebp,%eax), %esi
	testl	%esi, %esi
	je	.LBB11_86
# BB#73:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i7
	cmpb	$0, 28(%esi)
	je	.LBB11_75
# BB#74:
	movb	39(%esi), %al
	jmp	.LBB11_76
.LBB11_75:
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB11_76:                              # %_Z8print_nlv.exit9
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$13, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	32(%esp), %edi          # 4-byte Reload
	cmpl	$100, %edi
	jg	.LBB11_78
# BB#77:
	movl	$1, %eax
	subl	68(%esp), %eax          # 4-byte Folded Reload
	movb	.L.str.26@GOTOFF(%ebx,%eax), %al
	movb	%al, 68(%esp)           # 1-byte Spill
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movb	68(%esp), %al           # 1-byte Reload
	movb	%al, 216(%esp)
	leal	216(%esp), %edi
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%eax, %esi
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$12, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.28@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$8, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB11_79
.LBB11_78:
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$13, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.28@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$8, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	216(%esp), %edi
.LBB11_79:                              # %.preheader
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	xorl	%eax, %eax
	addl	$540, %esp              # imm = 0x21C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB11_30:
	movl	68(%esp), %ecx          # 4-byte Reload
	movl	32(%esp), %edx          # 4-byte Reload
	jmp	.LBB11_64
.LBB11_85:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.92@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$115, 8(%esp)
	calll	__assert_fail@PLT
.LBB11_43:
	movl	%edi, 4(%esp)
.LBB11_44:
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$21, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	calll	abort@PLT
.LBB11_62:
	movl	68(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%esp)
	addl	$3, %ecx
	leal	.L.str.20@GOTOFF(%ebx), %edx
	calll	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
.LBB11_13:                              # %.loopexit12
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	movl	$527, 4(%esp)           # imm = 0x20F
	calll	fwrite@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.LBB11_81:
	calll	abort@PLT
.LBB11_86:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB11_82:
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$24, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$5, (%esp)
	calll	exit@PLT
.LBB11_83:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$58, 8(%esp)
	calll	__assert_fail@PLT
.LBB11_84:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$59, 8(%esp)
	calll	__assert_fail@PLT
.LBB11_51:
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	jmp	.LBB11_44
.LBB11_56:
	movl	68(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%esp)
	incl	%ecx
	movl	28(%esp), %edx          # 4-byte Reload
	calll	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL11fork_playerPcP6player,@function
_ZL11fork_playerPcP6player:             # @_ZL11fork_playerPcP6player
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp104:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp105:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp106:
	.cfi_def_cfa_offset 16
	subl	$32, %esp
.Ltmp107:
	.cfi_def_cfa_offset 48
.Ltmp108:
	.cfi_offset %esi, -16
.Ltmp109:
	.cfi_offset %edi, -12
.Ltmp110:
	.cfi_offset %ebx, -8
	movl	%edx, %edi
	movl	%ecx, %esi
	calll	.L12$pb
.Ltmp111:
	.cfi_adjust_cfa_offset 4
.L12$pb:
	popl	%ebx
.Ltmp112:
	.cfi_adjust_cfa_offset -4
.Ltmp113:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp113-.L12$pb), %ebx
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	calll	pipe@PLT
	testl	%eax, %eax
	je	.LBB12_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB12_9
.LBB12_2:
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	calll	pipe@PLT
	testl	%eax, %eax
	je	.LBB12_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB12_9
.LBB12_4:
	calll	fork@PLT
	movl	%eax, (%edi)
	movl	(%edi), %eax
	cmpl	$-1, %eax
	je	.LBB12_10
# BB#5:
	cmpl	$0, (%edi)
	je	.LBB12_11
# BB#6:
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$19, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	js	.LBB12_7
# BB#8:
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	24(%esp), %eax
	movl	%eax, 4(%edi)
	movl	20(%esp), %eax
	movl	%eax, 8(%edi)
	movb	$1, %al
	jmp	.LBB12_9
.LBB12_7:
	xorl	%eax, %eax
.LBB12_9:
	movzbl	%al, %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.LBB12_10:
	calll	abort@PLT
.LBB12_11:
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	movl	$3, 4(%esp)
	calll	dup2@PLT
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$4, 4(%esp)
	calll	dup2@PLT
	movl	$2, (%esp)
	calll	close@PLT
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	calll	dup2@PLT
	leal	_ZL9mem_limit@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	calll	setrlimit@PLT
	movl	%esi, 4(%esp)
	movl	%esi, (%esp)
	movl	$0, 8(%esp)
	calll	execl@PLT
	movl	%esi, 4(%esp)
	leal	.L.str.90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	printf@PLT
	leal	.L.str.91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	movl	$5, (%esp)
	calll	_exit@PLT
.Lfunc_end12:
	.size	_ZL11fork_playerPcP6player, .Lfunc_end12-_ZL11fork_playerPcP6player
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_,@function
_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_: # @_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp114:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp115:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp117:
	.cfi_def_cfa_offset 20
	subl	$12, %esp
.Ltmp118:
	.cfi_def_cfa_offset 32
.Ltmp119:
	.cfi_offset %esi, -20
.Ltmp120:
	.cfi_offset %edi, -16
.Ltmp121:
	.cfi_offset %ebx, -12
.Ltmp122:
	.cfi_offset %ebp, -8
	movl	%edx, %edi
	movl	%ecx, %esi
	calll	.L13$pb
.Ltmp123:
	.cfi_adjust_cfa_offset 4
.L13$pb:
	popl	%ebx
.Ltmp124:
	.cfi_adjust_cfa_offset -4
.Ltmp125:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp125-.L13$pb), %ebx
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %ebp
	movl	%ebp, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	testl	%edi, %edi
	jne	.LBB13_2
# BB#1:
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	leal	(%ebp,%eax), %ecx
	movl	20(%ebp,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.LBB13_3
.LBB13_2:
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
.LBB13_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.6@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, (%esp)
	calll	exit@PLT
.Lfunc_end13:
	.size	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_, .Lfunc_end13-_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
	.cfi_endproc

	.section	.text._ZN10game_state3setEiic,"axG",@progbits,_ZN10game_state3setEiic,comdat
	.weak	_ZN10game_state3setEiic
	.align	16, 0x90
	.type	_ZN10game_state3setEiic,@function
_ZN10game_state3setEiic:                # @_ZN10game_state3setEiic
# BB#0:
	pushl	%ebx
	pushl	%esi
	subl	$20, %esp
	calll	.L14$pb
.L14$pb:
	popl	%ebx
.Ltmp126:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp126-.L14$pb), %ebx
	movl	40(%esp), %eax
	movl	36(%esp), %edx
	movl	32(%esp), %ecx
	movsbl	44(%esp), %esi
	cmpl	$46, %esi
	je	.LBB14_13
# BB#1:
	cmpl	$87, %esi
	je	.LBB14_8
# BB#2:
	cmpl	$66, %esi
	jne	.LBB14_18
# BB#3:
	leal	5(%eax), %esi
	cmpl	%edx, %esi
	jle	.LBB14_24
# BB#4:
	leal	5(%edx), %esi
	cmpl	%eax, %esi
	jle	.LBB14_24
# BB#5:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB14_24
# BB#6:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB14_24
# BB#7:                                 # %_ZN10game_state3setEii9FieldType.exit
	leal	(%edx,%edx,8), %edx
	addl	%edx, %ecx
	movb	$1, 1(%eax,%ecx)
	jmp	.LBB14_23
.LBB14_13:
	leal	5(%eax), %esi
	cmpl	%edx, %esi
	jle	.LBB14_24
# BB#14:
	leal	5(%edx), %esi
	cmpl	%eax, %esi
	jle	.LBB14_24
# BB#15:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB14_24
# BB#16:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB14_24
# BB#17:                                # %_ZN10game_state3setEii9FieldType.exit12
	leal	(%edx,%edx,8), %edx
	addl	%edx, %ecx
	movb	$3, 1(%eax,%ecx)
	jmp	.LBB14_23
.LBB14_8:
	leal	5(%eax), %esi
	cmpl	%edx, %esi
	jle	.LBB14_24
# BB#9:
	leal	5(%edx), %esi
	cmpl	%eax, %esi
	jle	.LBB14_24
# BB#10:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB14_24
# BB#11:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB14_24
# BB#12:                                # %_ZN10game_state3setEii9FieldType.exit6
	leal	(%edx,%edx,8), %edx
	addl	%edx, %ecx
	movb	$2, 1(%eax,%ecx)
	jmp	.LBB14_23
.LBB14_18:
	leal	5(%eax), %esi
	cmpl	%edx, %esi
	jle	.LBB14_24
# BB#19:
	leal	5(%edx), %esi
	cmpl	%eax, %esi
	jle	.LBB14_24
# BB#20:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB14_24
# BB#21:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB14_24
# BB#22:                                # %_ZN10game_state3setEii9FieldType.exit18
	leal	(%edx,%edx,8), %edx
	addl	%edx, %ecx
	movb	$4, 1(%eax,%ecx)
.LBB14_23:
	addl	$20, %esp
	popl	%esi
	popl	%ebx
	retl
.LBB14_24:                              # %_ZL15check_valid_posii.exit.thread.i
	leal	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$148, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end14:
	.size	_ZN10game_state3setEiic, .Lfunc_end14-_ZN10game_state3setEiic

	.text
	.align	16, 0x90
	.type	_ZL13alarm_handleriP9siginfo_tPv,@function
_ZL13alarm_handleriP9siginfo_tPv:       # @_ZL13alarm_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp127:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp128:
	.cfi_def_cfa_offset 12
	subl	$36, %esp
.Ltmp129:
	.cfi_def_cfa_offset 48
.Ltmp130:
	.cfi_offset %esi, -12
.Ltmp131:
	.cfi_offset %ebx, -8
	calll	.L15$pb
.Ltmp132:
	.cfi_adjust_cfa_offset 4
.L15$pb:
	popl	%ebx
.Ltmp133:
	.cfi_adjust_cfa_offset -4
.Ltmp134:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp134-.L15$pb), %ebx
	cmpl	$14, 48(%esp)
	jne	.LBB15_7
# BB#1:
	movl	_ZL14current_player@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.LBB15_8
# BB#2:
	cmpb	$0, 12(%eax)
	je	.LBB15_3
# BB#5:
	movb	$1, 13(%eax)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$9, 4(%esp)
	calll	kill@PLT
	jmp	.LBB15_6
.LBB15_3:
	movb	$1, 12(%eax)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$24, 4(%esp)
	calll	kill@PLT
	movl	_ZL9cpu_limit.1@GOTOFF(%ebx), %eax
	subl	_ZL9cpu_limit.0@GOTOFF(%ebx), %eax
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	cmovnel	%eax, %ecx
	movl	%ecx, 24(%esp)
	movl	$0, 28(%esp)
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB15_4
.LBB15_6:
	addl	$36, %esp
	popl	%esi
	popl	%ebx
	retl
.LBB15_7:
	leal	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$80, 8(%esp)
	calll	__assert_fail@PLT
.LBB15_8:
	leal	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$83, 8(%esp)
	calll	__assert_fail@PLT
.LBB15_4:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$21, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	calll	abort@PLT
.Lfunc_end15:
	.size	_ZL13alarm_handleriP9siginfo_tPv, .Lfunc_end15-_ZL13alarm_handleriP9siginfo_tPv
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL13child_handleriP9siginfo_tPv,@function
_ZL13child_handleriP9siginfo_tPv:       # @_ZL13child_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp135:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp136:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp138:
	.cfi_def_cfa_offset 20
	subl	$44, %esp
.Ltmp139:
	.cfi_def_cfa_offset 64
.Ltmp140:
	.cfi_offset %esi, -20
.Ltmp141:
	.cfi_offset %edi, -16
.Ltmp142:
	.cfi_offset %ebx, -12
.Ltmp143:
	.cfi_offset %ebp, -8
	calll	.L16$pb
.Ltmp144:
	.cfi_adjust_cfa_offset 4
.L16$pb:
	popl	%ebx
.Ltmp145:
	.cfi_adjust_cfa_offset -4
.Ltmp146:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp146-.L16$pb), %ebx
	movl	68(%esp), %edi
	movl	8(%edi), %eax
	addl	$-5, %eax
	cmpl	$2, %eax
	jb	.LBB16_19
# BB#1:
	movl	20(%edi), %esi
	cmpl	$15, %esi
	je	.LBB16_13
# BB#2:
	cmpl	$11, %esi
	je	.LBB16_4
# BB#3:
	cmpl	$9, %esi
	je	.LBB16_4
# BB#21:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %edi
	movl	%edi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.63@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$14, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.70@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$2, 8(%esp)
	jmp	.LBB16_18
.LBB16_13:
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	movl	124(%esi,%eax), %edi
	testl	%edi, %edi
	je	.LBB16_20
# BB#14:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5
	cmpb	$0, 28(%edi)
	je	.LBB16_16
# BB#15:
	movb	39(%edi), %al
	jmp	.LBB16_17
.LBB16_16:
	movl	%edi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%edi), %eax
	movl	%edi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB16_17:                              # %_Z8print_nlv.exit7
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.69@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$39, 8(%esp)
.LBB16_18:                              # %_Z8print_nlv.exit7
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
.LBB16_19:
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB16_4:
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	movl	124(%esi,%eax), %ebp
	testl	%ebp, %ebp
	jne	.LBB16_5
.LBB16_20:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB16_5:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 28(%ebp)
	jne	.LBB16_6
# BB#7:
	movl	%ebp, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%ebp), %eax
	movl	%ebp, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
	jmp	.LBB16_8
.LBB16_6:
	movb	39(%ebp), %al
.LBB16_8:                               # %_Z8print_nlv.exit
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	movl	8(%edi), %ebp
	movl	20(%edi), %eax
	leal	-1(%ebp), %ecx
	leal	.L.str.75@GOTOFF(%ebx), %edx
	cmpl	$3, %ecx
	movl	%edx, %ecx
	ja	.LBB16_10
# BB#9:                                 # %switch.lookup.i
	movl	.Lswitch.table.99@GOTOFF-4(%ebx,%ebp,4), %ecx
.LBB16_10:                              # %_ZL11si_code_stri.exit
	leal	-1(%eax), %edi
	cmpl	$16, %edi
	ja	.LBB16_12
# BB#11:                                # %switch.lookup.i4
	movl	.Lswitch.table.100@GOTOFF-4(%ebx,%eax,4), %edx
.LBB16_12:                              # %_ZL10signal_stri.exit
	leal	.L.str.66@GOTOFF(%ebx), %edi
	movl	%edi, 24(%esp)
	movl	%edx, 20(%esp)
	leal	.L.str.65@GOTOFF(%ebx), %edx
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	leal	.L.str.64@GOTOFF(%ebx), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.L.str.63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_@PLT
	leal	.L.str.44@GOTOFF(%ebx), %edi
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.67@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$22, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	leal	40(%esp), %ebp
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$8, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.Lfunc_end16:
	.size	_ZL13child_handleriP9siginfo_tPv, .Lfunc_end16-_ZL13child_handleriP9siginfo_tPv
	.cfi_endproc

	.section	.text._Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,"axG",@progbits,_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,comdat
	.weak	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.align	16, 0x90
	.type	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,@function
_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_:   # @_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp147:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp148:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp149:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp150:
	.cfi_def_cfa_offset 20
	subl	$12, %esp
.Ltmp151:
	.cfi_def_cfa_offset 32
.Ltmp152:
	.cfi_offset %esi, -20
.Ltmp153:
	.cfi_offset %edi, -16
.Ltmp154:
	.cfi_offset %ebx, -12
.Ltmp155:
	.cfi_offset %ebp, -8
	calll	.L17$pb
.Ltmp156:
	.cfi_adjust_cfa_offset 4
.L17$pb:
	popl	%ebx
.Ltmp157:
	.cfi_adjust_cfa_offset -4
.Ltmp158:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp158-.L17$pb), %ebx
	movl	40(%esp), %edi
	movl	32(%esp), %ebp
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	testl	%ebp, %ebp
	je	.LBB17_1
# BB#2:
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_3
.LBB17_1:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	leal	(%esi,%eax), %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movl	44(%esp), %ebp
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	movl	%eax, %esi
	testl	%edi, %edi
	je	.LBB17_4
# BB#5:
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_6
.LBB17_4:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	leal	(%esi,%eax), %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_6:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
	movl	48(%esp), %edi
	testl	%ebp, %ebp
	je	.LBB17_7
# BB#8:
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_9
.LBB17_7:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	leal	(%esi,%eax), %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_9:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
	movl	52(%esp), %ebp
	testl	%edi, %edi
	je	.LBB17_10
# BB#11:
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_12
.LBB17_10:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	leal	(%esi,%eax), %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_12:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
	movl	56(%esp), %edi
	testl	%ebp, %ebp
	je	.LBB17_13
# BB#14:
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_15
.LBB17_13:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	leal	(%esi,%eax), %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_15:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
	testl	%edi, %edi
	je	.LBB17_16
# BB#18:
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_17
.LBB17_16:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	movl	%esi, %ecx
	addl	%eax, %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_17:
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end17:
	.size	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_, .Lfunc_end17-_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_mcp_S.cc,@function
_GLOBAL__sub_I_mcp_S.cc:                # @_GLOBAL__sub_I_mcp_S.cc
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp159:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp160:
	.cfi_def_cfa_offset 12
	subl	$20, %esp
.Ltmp161:
	.cfi_def_cfa_offset 32
.Ltmp162:
	.cfi_offset %esi, -12
.Ltmp163:
	.cfi_offset %ebx, -8
	calll	.L18$pb
.Ltmp164:
	.cfi_adjust_cfa_offset 4
.L18$pb:
	popl	%ebx
.Ltmp165:
	.cfi_adjust_cfa_offset -4
.Ltmp166:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp166-.L18$pb), %ebx
	leal	_ZStL8__ioinit@GOTOFF(%ebx), %esi
	movl	%esi, (%esp)
	calll	_ZNSt8ios_base4InitC1Ev@PLT
	movl	__dso_handle@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	_ZNSt8ios_base4InitD1Ev@GOT(%ebx), %eax
	movl	%eax, (%esp)
	calll	__cxa_atexit@PLT
	addl	$20, %esp
	popl	%esi
	popl	%ebx
	retl
.Lfunc_end18:
	.size	_GLOBAL__sub_I_mcp_S.cc, .Lfunc_end18-_GLOBAL__sub_I_mcp_S.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cnt == 64"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./abalone.cc"
	.size	.L.str.1, 13

	.type	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state,@object # @__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state
.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state:
	.asciz	"bool deserialize_state(int, game_state *)"
	.size	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state, 42

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"buf[63] == '\\0'"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Read "
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	", len "
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid length of move: "
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\n"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unexpected EOF in move at "
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"init"
	.size	.L.str.8, 5

	.type	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc,@object # @__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc
.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc:
	.asciz	"void initialize_state(game_state *, const char *)"
	.size	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"strlen(init) == 63"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"W: "
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	", B: "
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"B:BBBBBBBBBBB..BBB.............................WWW..WWWWWWWWWWW"
	.size	.L.str.12, 64

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Master Control Program\n"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"dT:t:m:M:s:h"
	.size	.L.str.14, 13

	.type	_ZL5debug,@object       # @_ZL5debug
	.local	_ZL5debug
	.comm	_ZL5debug,1,1
	.type	_ZL9mem_limit,@object   # @_ZL9mem_limit
	.data
	.align	4
_ZL9mem_limit:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.size	_ZL9mem_limit, 8

	.type	_ZL6player,@object      # @_ZL6player
	.local	_ZL6player
	.comm	_ZL6player,32,4
	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"Unable to fork players.\n"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"["
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"] P"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"'s turn.\n"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"State: "
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"No move from player "
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Invalid move from player "
	.size	.L.str.21, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"P"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	" moves.\n"
	.size	.L.str.23, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"End of Line.\n"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"BW"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	" wins after "
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	" turns.\n"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"A draw after "
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"str"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"./board.h"
	.size	.L.str.31, 10

	.type	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc,@object # @__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc
.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc:
	.asciz	"void game_state::toString(char *) const"
	.size	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc, 40

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"i == 64"
	.size	.L.str.32, 8

	.type	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc,@object # @__PRETTY_FUNCTION__._ZN10game_state5setupEPKc
.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc:
	.asciz	"void game_state::setup(const char *)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc, 37

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"strlen(str) == 63"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"str[1] == ':'"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Unknown player type in '%s'\n"
	.size	.L.str.35, 29

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"i == 63"
	.size	.L.str.36, 8

	.type	_ZZNK9game_move8toStringEPcE3row,@object # @_ZZNK9game_move8toStringEPcE3row
	.section	.rodata._ZZNK9game_move8toStringEPcE3row,"aG",@progbits,_ZZNK9game_move8toStringEPcE3row,comdat
	.weak	_ZZNK9game_move8toStringEPcE3row
_ZZNK9game_move8toStringEPcE3row:
	.asciz	"-ABCDEFGHI"
	.size	_ZZNK9game_move8toStringEPcE3row, 11

	.type	_ZZNK9game_move8toStringEPcE4diag,@object # @_ZZNK9game_move8toStringEPcE4diag
	.section	.rodata._ZZNK9game_move8toStringEPcE4diag,"aG",@progbits,_ZZNK9game_move8toStringEPcE4diag,comdat
	.weak	_ZZNK9game_move8toStringEPcE4diag
_ZZNK9game_move8toStringEPcE4diag:
	.asciz	"-123456789"
	.size	_ZZNK9game_move8toStringEPcE4diag, 11

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"Invalid move: source invalid\n"
	.size	.L.str.37, 30

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Invalid move: source2 invalid\n"
	.size	.L.str.38, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Invalid move: missing comma after source\n"
	.size	.L.str.39, 42

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Invalid move: Unexpected char: "
	.size	.L.str.40, 32

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Invalid move: destination invalid\n"
	.size	.L.str.41, 35

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Invalid move: Unexpected chars at end\n"
	.size	.L.str.42, 39

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"i >= 1 && i <= 9"
	.size	.L.str.43, 17

	.type	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc,@object # @__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc
.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc:
	.asciz	"static idx_t game_move::rowToNum(char)"
	.size	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc, 39

	.type	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc,@object # @__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc
.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc:
	.asciz	"static idx_t game_move::diagToNum(char)"
	.size	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc, 40

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"<MCP> "
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"ABCDEFGHI"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	" "
	.size	.L.str.46, 2

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"  "
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"   "
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	" - "
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"    "
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/ \\ "
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\\ / "
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"               1   2   3   4   5"
	.size	.L.str.53, 33

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"\033[31;1mB\033[0m"
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\033[32;1mW\033[0m"
	.size	.L.str.55, 13

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"o"
	.size	.L.str.56, 2

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"check_valid_pos(row, diagonal)"
	.size	.L.str.57, 31

	.type	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType,@object # @__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType
.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType:
	.asciz	"void game_state::set(idx_t, idx_t, FieldType)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType, 46

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Usage: mcp [-s state_string] [-t soft-player-time] [-m soft-player-mem]\n           [-T hard-player-time] [-M hard-player-mem]\n           [-d]\n           [-h]\n           player1 player2\n state_string - 63 character string representing an initial field state\n                (this is the string the MCP prints before every move.)\n player-time  - CPU time per turn in seconds\n player-mem   - Memory limit per player in megabytes\n -d           - turn on debugging, program won't exit on invalid move\n -h           - Show this help\n"
	.size	.L.str.58, 528

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"signum == SIGALRM"
	.size	.L.str.59, 18

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"./mcp-shared.h"
	.size	.L.str.60, 15

	.type	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv,@object # @__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv
.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv:
	.asciz	"void alarm_handler(int, siginfo_t *, void *)"
	.size	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv, 45

	.type	_ZL14current_player,@object # @_ZL14current_player
	.local	_ZL14current_player
	.comm	_ZL14current_player,4,4
	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"p"
	.size	.L.str.61, 2

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Failed to set timer.\n"
	.size	.L.str.62, 22

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Child signal: "
	.size	.L.str.63, 15

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	" ("
	.size	.L.str.64, 3

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	","
	.size	.L.str.65, 2

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	")\n"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"killing the other one\n"
	.size	.L.str.67, 23

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"exiting\n"
	.size	.L.str.68, 9

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"\033[32mCHILD terminated successfully\033[0m\n"
	.size	.L.str.69, 40

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"!\n"
	.size	.L.str.70, 3

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"exited"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"killed"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"coredumped"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"trapped"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"unknown"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"SIGHUP"
	.size	.L.str.76, 7

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"SIGINT"
	.size	.L.str.77, 7

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"SIGILL"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"SIGABRT"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"SIGSEGV"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"SIGFPE"
	.size	.L.str.81, 7

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"SIGPIPE"
	.size	.L.str.82, 8

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"SIGKILL"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"SIGTERM"
	.size	.L.str.84, 8

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"SIGALRM"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"SIGUSR1"
	.size	.L.str.86, 8

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"SIGUSR2"
	.size	.L.str.87, 8

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"SIGBUS"
	.size	.L.str.88, 7

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"SIGCHLD"
	.size	.L.str.89, 8

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"EXECL '%s' FAILED\n"
	.size	.L.str.90, 19

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"execl"
	.size	.L.str.91, 6

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"( p == 0) or (p == 1)"
	.size	.L.str.92, 22

	.type	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi,@object # @__PRETTY_FUNCTION__._ZN10game_state6playerEi
.L__PRETTY_FUNCTION__._ZN10game_state6playerEi:
	.asciz	"void game_state::player(idx_t)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi, 31

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"time()"
	.size	.L.str.93, 7

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"localtime()"
	.size	.L.str.94, 12

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"%H:%M:%S"
	.size	.L.str.95, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Move is: "
	.size	.L.str.97, 10

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Player timeout!\n"
	.size	.L.str.98, 17

	.section	.init_array,"aw",@init_array
	.align	4
	.long	_GLOBAL__sub_I_mcp_S.cc
	.type	_ZL9cpu_limit.0,@object # @_ZL9cpu_limit.0
	.data
	.align	4
_ZL9cpu_limit.0:
	.long	4294967295              # 0xffffffff
	.size	_ZL9cpu_limit.0, 4

	.type	_ZL9cpu_limit.1,@object # @_ZL9cpu_limit.1
	.align	4
_ZL9cpu_limit.1:
	.long	4294967295              # 0xffffffff
	.size	_ZL9cpu_limit.1, 4

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Final state:"
	.size	.Lstr, 13

	.type	.Lswitch.table,@object  # @switch.table
	.section	.data.rel.ro,"aw",@progbits
	.align	4
.Lswitch.table:
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.46
	.size	.Lswitch.table, 16

	.type	.Lswitch.table.99,@object # @switch.table.99
	.align	4
.Lswitch.table.99:
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.size	.Lswitch.table.99, 16

	.type	.Lswitch.table.100,@object # @switch.table.100
	.align	16
.Lswitch.table.100:
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.75
	.long	.L.str.78
	.long	.L.str.75
	.long	.L.str.79
	.long	.L.str.88
	.long	.L.str.81
	.long	.L.str.83
	.long	.L.str.86
	.long	.L.str.80
	.long	.L.str.87
	.long	.L.str.82
	.long	.L.str.85
	.long	.L.str.84
	.long	.L.str.75
	.long	.L.str.89
	.size	.Lswitch.table.100, 68


	.ident	"clang version 3.8.1-17 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
#endif
#ifdef __x86_64__
	.text
	.file	"mcp-S.cc"
	.globl	_Z15serialize_stateiPK10game_state
	.align	16, 0x90
	.type	_Z15serialize_stateiPK10game_state,@function
_Z15serialize_stateiPK10game_state:     # @_Z15serialize_stateiPK10game_state
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 96
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movzbl	(%rsi), %ecx
	movb	$66, %al
	cmpl	$1, %ecx
	je	.LBB0_2
# BB#1:                                 # %select.false
	movb	$87, %al
.LBB0_2:                                # %select.end
	movb	%al, (%rsp)
	movb	$58, 1(%rsp)
	movl	$2, %r11d
	movl	$1, %r9d
	movl	$1, %r8d
	.align	16, 0x90
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	leal	-4(%r9), %edx
	cmpq	$6, %r9
	cmovll	%r8d, %edx
	cmpl	$9, %edx
	jg	.LBB0_11
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=1
	leaq	5(%r9), %r10
	movslq	%edx, %rax
	cmpq	%r10, %rax
	jge	.LBB0_11
# BB#5:                                 # %.lr.ph.split.us.preheader.i
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	-1(%r9), %r14
	movslq	%r11d, %r11
	addq	$5, %rax
	decl	%edx
	.align	16, 0x90
.LBB0_6:                                # %.lr.ph.split.us.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$24, %ecx
	cmpq	%r9, %rax
	jle	.LBB0_9
# BB#7:                                 # %.lr.ph.split.us.i
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$8, %edx
	ja	.LBB0_9
# BB#8:                                 #   in Loop: Header=BB0_6 Depth=2
	movslq	%edx, %rcx
	leaq	(%r14,%r14,8), %rbx
	addq	%rsi, %rbx
	movb	1(%rcx,%rbx), %cl
	decb	%cl
	movzbl	%cl, %ecx
	shll	$3, %ecx
.LBB0_9:                                # %_ZNK10game_state4getCEii.exit.us.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	$539907906, %ebx        # imm = 0x202E5742
	shrl	%cl, %ebx
	movb	%bl, (%rsp,%r11)
	leaq	-4(%rax), %rcx
	incq	%r11
	cmpq	$9, %rcx
	jg	.LBB0_11
# BB#10:                                # %_ZNK10game_state4getCEii.exit.us.i
                                        #   in Loop: Header=BB0_6 Depth=2
	incq	%rax
	incl	%edx
	cmpq	%r10, %rcx
	jl	.LBB0_6
.LBB0_11:                               # %.critedge.i
                                        #   in Loop: Header=BB0_3 Depth=1
	incq	%r9
	cmpq	$10, %r9
	jne	.LBB0_3
# BB#12:
	movslq	%r11d, %rax
	movb	$0, (%rsp,%rax)
	cmpl	$63, %eax
	jne	.LBB0_14
# BB#13:                                # %_ZNK10game_state8toStringEPc.exit
	leaq	(%rsp), %rsi
	movl	$64, %edx
	callq	write@PLT
	movl	$64, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB0_14:
	leaq	.L.str.32(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc(%rip), %rcx
	movl	$197, %edx
	callq	__assert_fail@PLT
.Lfunc_end0:
	.size	_Z15serialize_stateiPK10game_state, .Lfunc_end0-_Z15serialize_stateiPK10game_state
	.cfi_endproc

	.globl	_Z17deserialize_stateiP10game_state
	.align	16, 0x90
	.type	_Z17deserialize_stateiP10game_state,@function
_Z17deserialize_stateiP10game_state:    # @_Z17deserialize_stateiP10game_state
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	leaq	(%rsp), %rsi
	movl	$64, %edx
	callq	read@PLT
	cmpq	$64, %rax
	jne	.LBB1_3
# BB#1:
	cmpb	$0, 63(%rsp)
	jne	.LBB1_4
# BB#2:
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ZN10game_state5setupEPKc@PLT
	movb	$1, %al
	addq	$64, %rsp
	popq	%rbx
	retq
.LBB1_3:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state(%rip), %rcx
	movl	$19, %edx
	callq	__assert_fail@PLT
.LBB1_4:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state(%rip), %rcx
	movl	$20, %edx
	callq	__assert_fail@PLT
.Lfunc_end1:
	.size	_Z17deserialize_stateiP10game_state, .Lfunc_end1-_Z17deserialize_stateiP10game_state
	.cfi_endproc

	.section	.text._ZN10game_state5setupEPKc,"axG",@progbits,_ZN10game_state5setupEPKc,comdat
	.weak	_ZN10game_state5setupEPKc
	.align	16, 0x90
	.type	_ZN10game_state5setupEPKc,@function
_ZN10game_state5setupEPKc:              # @_ZN10game_state5setupEPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 64
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	testq	%r14, %r14
	je	.LBB2_17
# BB#1:
	movq	%r14, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB2_18
# BB#2:
	movzbl	1(%r14), %eax
	cmpl	$58, %eax
	jne	.LBB2_19
# BB#3:
	movsbl	(%r14), %eax
	cmpl	$87, %eax
	je	.LBB2_15
# BB#4:
	cmpl	$66, %eax
	jne	.LBB2_16
# BB#5:
	movb	$1, (%r15)
	jmp	.LBB2_6
.LBB2_15:
	movb	$2, (%r15)
.LBB2_6:                                # %.preheader
	movl	$2, %ebx
	movl	$1, %r12d
	.align	16, 0x90
.LBB2_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
	leal	-4(%r12), %eax
	cmpl	$6, %r12d
	movl	$1, %ebp
	cmovgel	%eax, %ebp
	cmpl	$9, %ebp
	jg	.LBB2_12
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	leal	5(%r12), %r13d
	cmpl	%r13d, %ebp
	jge	.LBB2_12
# BB#9:                                 # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	movslq	%ebx, %rbx
	.align	16, 0x90
.LBB2_10:                               # %.lr.ph
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r14,%rbx), %ecx
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	callq	_ZN10game_state3setEiic@PLT
	incl	%ebp
	incq	%rbx
	cmpl	$9, %ebp
	jg	.LBB2_12
# BB#11:                                # %.lr.ph
                                        #   in Loop: Header=BB2_10 Depth=2
	cmpl	%r13d, %ebp
	jl	.LBB2_10
.LBB2_12:                               # %.critedge
                                        #   in Loop: Header=BB2_7 Depth=1
	incl	%r12d
	cmpl	$10, %r12d
	jne	.LBB2_7
# BB#13:
	cmpl	$63, %ebx
	jne	.LBB2_20
# BB#14:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_17:
	leaq	.L.str.30(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$203, %edx
	callq	__assert_fail@PLT
.LBB2_18:
	leaq	.L.str.33(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$204, %edx
	callq	__assert_fail@PLT
.LBB2_19:
	leaq	.L.str.34(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$205, %edx
	callq	__assert_fail@PLT
.LBB2_16:
	leaq	.L.str.35(%rip), %rdi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB2_20:
	leaq	.L.str.36(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$227, %edx
	callq	__assert_fail@PLT
.Lfunc_end2:
	.size	_ZN10game_state5setupEPKc, .Lfunc_end2-_ZN10game_state5setupEPKc
	.cfi_endproc

	.text
	.globl	_Z14serialize_moveiPK9game_move
	.align	16, 0x90
	.type	_Z14serialize_moveiPK9game_move,@function
_Z14serialize_moveiPK9game_move:        # @_Z14serialize_moveiPK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 48
.Ltmp24:
	.cfi_offset %rbx, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movslq	4(%rsi), %rcx
	movq	_ZZNK9game_move8toStringEPcE3row@GOTPCREL(%rip), %rax
	movb	(%rax,%rcx), %cl
	movb	%cl, 14(%rsp)
	movslq	8(%rsi), %rdx
	movq	_ZZNK9game_move8toStringEPcE4diag@GOTPCREL(%rip), %rcx
	movb	(%rcx,%rdx), %dl
	movb	%dl, 15(%rsp)
	movl	$2, %edx
	cmpl	$1, (%rsi)
	jne	.LBB3_2
# BB#1:
	movb	$45, 16(%rsp)
	movslq	12(%rsi), %rdx
	movb	(%rax,%rdx), %dl
	movb	%dl, 17(%rsp)
	movslq	16(%rsi), %rdx
	movb	(%rcx,%rdx), %dl
	movb	%dl, 18(%rsp)
	movl	$5, %edx
.LBB3_2:                                # %_ZNK9game_move8toStringEPc.exit
	movl	%edx, %edx
	movb	$44, 14(%rsp,%rdx)
	movslq	20(%rsi), %rdi
	movb	(%rax,%rdi), %al
	movb	%al, 15(%rsp,%rdx)
	movslq	24(%rsi), %rax
	movb	(%rcx,%rax), %al
	movb	%al, 16(%rsp,%rdx)
	movb	$0, 17(%rsp,%rdx)
	leaq	14(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	1(%rax), %rdx
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	write@PLT
	movb	$1, %al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_Z14serialize_moveiPK9game_move, .Lfunc_end3-_Z14serialize_moveiPK9game_move
	.cfi_endproc

	.globl	_Z16deserialize_moveiP9game_move
	.align	16, 0x90
	.type	_Z16deserialize_moveiP9game_move,@function
_Z16deserialize_moveiP9game_move:       # @_Z16deserialize_moveiP9game_move
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 64
.Ltmp31:
	.cfi_offset %rbx, -40
.Ltmp32:
	.cfi_offset %r12, -32
.Ltmp33:
	.cfi_offset %r14, -24
.Ltmp34:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movl	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %r12
	movl	$10, %edx
	movq	%r12, %rsi
	callq	read@PLT
	movq	%rax, %r15
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.3(%rip), %rsi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.4(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %r12
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_15
# BB#1:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 56(%rbx)
	je	.LBB4_3
# BB#2:
	movb	67(%rbx), %al
	jmp	.LBB4_4
.LBB4_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB4_4:                                # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	testq	%r15, %r15
	jle	.LBB4_5
# BB#6:
	cmpq	$6, %r15
	je	.LBB4_10
# BB#7:
	cmpq	$9, %r15
	jne	.LBB4_8
.LBB4_10:
	leaq	8(%rsp), %rdi
	callq	strlen@PLT
	movq	%rax, %rbx
	cmpq	$5, %rbx
	je	.LBB4_13
# BB#11:
	cmpq	$8, %rbx
	jne	.LBB4_12
.LBB4_13:
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	_ZN9game_move5setupEPKc@PLT
	jmp	.LBB4_14
.LBB4_5:
	xorl	%eax, %eax
	jmp	.LBB4_14
.LBB4_8:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.5(%rip), %rsi
	movl	$24, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_@PLT
	jmp	.LBB4_9
.LBB4_12:
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.7(%rip), %rsi
	movl	$26, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
.LBB4_9:
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	xorl	%eax, %eax
.LBB4_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB4_15:
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end4:
	.size	_Z16deserialize_moveiP9game_move, .Lfunc_end4-_Z16deserialize_moveiP9game_move
	.cfi_endproc

	.section	.text._ZN9game_move5setupEPKc,"axG",@progbits,_ZN9game_move5setupEPKc,comdat
	.weak	_ZN9game_move5setupEPKc
	.align	16, 0x90
	.type	_ZN9game_move5setupEPKc,@function
_ZN9game_move5setupEPKc:                # @_ZN9game_move5setupEPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movsbl	(%r14), %edi
	callq	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_38
# BB#1:
	leal	-64(%rax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_38
# BB#2:                                 # %_ZN9game_move8rowToNumEc.exit
	movl	%ecx, 4(%rbx)
	movsbl	1(%r14), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_39
# BB#3:                                 # %_ZN9game_move8rowToNumEc.exit
	leal	-48(%rcx), %edx
	cmpl	$10, %edx
	jge	.LBB5_39
# BB#4:                                 # %_ZN9game_move9diagToNumEc.exit
	movl	%edx, 8(%rbx)
	leal	-21(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_8
# BB#5:                                 # %_ZN9game_move9diagToNumEc.exit
	leal	-11(%rax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_8
# BB#6:                                 # %_ZN9game_move9diagToNumEc.exit
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_8
# BB#7:                                 # %_ZN9game_move9diagToNumEc.exit
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_8
# BB#9:
	movzbl	2(%r14), %ebp
	cmpl	$45, %ebp
	je	.LBB5_21
# BB#10:
	movzbl	%bpl, %eax
	cmpl	$44, %eax
	jne	.LBB5_32
# BB#11:
	movl	$0, (%rbx)
	movl	$3, %eax
	jmp	.LBB5_12
.LBB5_8:                                # %_ZL15check_valid_posii.exit.thread
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.37(%rip), %rsi
	movl	$29, %edx
	jmp	.LBB5_35
.LBB5_21:
	movl	$1, (%rbx)
	movsbl	3(%r14), %edi
	callq	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_38
# BB#22:
	leal	-64(%rax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_38
# BB#23:                                # %_ZN9game_move8rowToNumEc.exit5
	movl	%ecx, 12(%rbx)
	movsbl	4(%r14), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_39
# BB#24:                                # %_ZN9game_move8rowToNumEc.exit5
	leal	-48(%rcx), %edx
	cmpl	$10, %edx
	jge	.LBB5_39
# BB#25:                                # %_ZN9game_move9diagToNumEc.exit7
	movl	%edx, 16(%rbx)
	leal	-21(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_29
# BB#26:                                # %_ZN9game_move9diagToNumEc.exit7
	leal	-11(%rax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_29
# BB#27:                                # %_ZN9game_move9diagToNumEc.exit7
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_29
# BB#28:                                # %_ZN9game_move9diagToNumEc.exit7
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_29
# BB#30:
	movzbl	5(%r14), %ecx
	movl	$6, %eax
	cmpl	$44, %ecx
	jne	.LBB5_31
.LBB5_12:
	movl	%eax, %r15d
	movsbl	(%r14,%r15), %edi
	callq	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_38
# BB#13:
	leal	-64(%rax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_38
# BB#14:                                # %_ZN9game_move8rowToNumEc.exit14
	movl	%ecx, 20(%rbx)
	movsbl	1(%r15,%r14), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_39
# BB#15:                                # %_ZN9game_move8rowToNumEc.exit14
	leal	-48(%rcx), %edx
	cmpl	$10, %edx
	jge	.LBB5_39
# BB#16:                                # %_ZN9game_move9diagToNumEc.exit16
	movl	%edx, 24(%rbx)
	leal	-21(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_20
# BB#17:                                # %_ZN9game_move9diagToNumEc.exit16
	leal	-11(%rax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_20
# BB#18:                                # %_ZN9game_move9diagToNumEc.exit16
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_20
# BB#19:                                # %_ZN9game_move9diagToNumEc.exit16
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_20
# BB#33:
	movb	$1, %al
	cmpb	$0, 2(%r15,%r14)
	je	.LBB5_37
# BB#34:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.42(%rip), %rsi
	movl	$38, %edx
	jmp	.LBB5_35
.LBB5_32:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.40(%rip), %rsi
	movl	$31, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movb	%bpl, 7(%rsp)
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	jmp	.LBB5_36
.LBB5_20:                               # %_ZL15check_valid_posii.exit20.thread
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.41(%rip), %rsi
	movl	$34, %edx
	jmp	.LBB5_35
.LBB5_29:                               # %_ZL15check_valid_posii.exit11.thread
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.38(%rip), %rsi
	movl	$30, %edx
	jmp	.LBB5_35
.LBB5_31:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.39(%rip), %rsi
	movl	$41, %edx
.LBB5_35:
	movq	%rbx, %rdi
.LBB5_36:
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	xorl	%eax, %eax
.LBB5_37:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_38:
	leaq	.L.str.43(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc(%rip), %rcx
	movl	$343, %edx              # imm = 0x157
	callq	__assert_fail@PLT
.LBB5_39:
	leaq	.L.str.43(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc(%rip), %rcx
	movl	$350, %edx              # imm = 0x15E
	callq	__assert_fail@PLT
.Lfunc_end5:
	.size	_ZN9game_move5setupEPKc, .Lfunc_end5-_ZN9game_move5setupEPKc
	.cfi_endproc

	.text
	.globl	_Z16initialize_stateP10game_statePKc
	.align	16, 0x90
	.type	_Z16initialize_stateP10game_statePKc,@function
_Z16initialize_stateP10game_statePKc:   # @_Z16initialize_stateP10game_statePKc
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp46:
	.cfi_def_cfa_offset 32
.Ltmp47:
	.cfi_offset %rbx, -24
.Ltmp48:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB6_3
# BB#1:
	movq	%rbx, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB6_4
# BB#2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN10game_state5setupEPKc@PLT
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_ZNK10game_state5printEv@PLT # TAILCALL
.LBB6_3:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$58, %edx
	callq	__assert_fail@PLT
.LBB6_4:
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$59, %edx
	callq	__assert_fail@PLT
.Lfunc_end6:
	.size	_Z16initialize_stateP10game_statePKc, .Lfunc_end6-_Z16initialize_stateP10game_statePKc
	.cfi_endproc

	.section	.text._ZNK10game_state5printEv,"axG",@progbits,_ZNK10game_state5printEv,comdat
	.weak	_ZNK10game_state5printEv
	.align	16, 0x90
	.type	_ZNK10game_state5printEv,@function
_ZNK10game_state5printEv:               # @_ZNK10game_state5printEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 144
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	leaq	73(%rdi), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$9, %r14d
	movq	_ZSt4cout@GOTPCREL(%rip), %r15
	leaq	.L.str.47(%rip), %r12
	.align	16, 0x90
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_42 Depth 2
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_27 Depth 2
                                        #     Child Loop BB7_35 Depth 2
                                        #     Child Loop BB7_31 Depth 2
	leaq	.L.str.45(%rip), %rax
	movb	-1(%r14,%rax), %al
	movb	%al, 87(%rsp)
	movl	$1, %edx
	movq	%r15, %rdi
	leaq	87(%rsp), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	leaq	.L.str.46(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leal	-5(%r14), %eax
	movl	$5, %ecx
	subq	%r14, %rcx
	cmovsl	%eax, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leal	1(%rcx), %ebp
	movl	$9, %edx
	subl	%ecx, %edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	cmpq	$5, %r14
	movl	$1, %eax
	cmovlel	%eax, %ebp
	movl	$9, %eax
	cmovll	%edx, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	testl	%ecx, %ecx
	movl	%ecx, %ebx
	jle	.LBB7_2
	.align	16, 0x90
.LBB7_42:                               # %.lr.ph
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decl	%ebx
	jne	.LBB7_42
.LBB7_2:                                # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-1(%r14), %rbx
	movl	$3, %edx
	movq	%r15, %rdi
	leaq	.L.str.48(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	5(%r14), %rdx
	movslq	%ebp, %r13
	leal	5(%rbp), %eax
	movslq	%eax, %rcx
	movb	$4, %al
	cmpq	%r14, %rcx
	jle	.LBB7_3
# BB#9:                                 # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpq	%r13, %rdx
	jle	.LBB7_3
# BB#10:                                # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%r14, %r12
	leal	-1(%rbp), %ecx
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	cmpl	$8, %ecx
	ja	.LBB7_12
# BB#11:                                #   in Loop: Header=BB7_1 Depth=1
	movslq	%ecx, %rax
	leaq	(%rbx,%rbx,8), %rcx
	addq	16(%rsp), %rcx          # 8-byte Folded Reload
	movb	1(%rax,%rcx), %al
	jmp	.LBB7_12
	.align	16, 0x90
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%r14, %r12
.LBB7_12:                               # %_ZNK10game_state3getEii.exit
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	decb	%al
	movsbq	%al, %rax
	leaq	.Lswitch.table(%rip), %rcx
	movq	(%rcx,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	60(%rsp), %eax          # 4-byte Folded Reload
	jge	.LBB7_19
# BB#13:                                # %.lr.ph25.split.us.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	60(%rsp), %r14          # 4-byte Folded Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rbx
	addq	32(%rsp), %rbx          # 8-byte Folded Reload
	.align	16, 0x90
.LBB7_14:                               # %.lr.ph25.split.us
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$3, %edx
	movq	%r15, %rdi
	leaq	.L.str.49(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%r13d, %ecx
	incq	%r13
	leal	6(%rcx), %eax
	movslq	%eax, %rdx
	movb	$4, %al
	cmpq	%r12, %rdx
	jle	.LBB7_18
# BB#15:                                # %.lr.ph25.split.us
                                        #   in Loop: Header=BB7_14 Depth=2
	cmpq	%r13, 72(%rsp)          # 8-byte Folded Reload
	jle	.LBB7_18
# BB#16:                                # %.lr.ph25.split.us
                                        #   in Loop: Header=BB7_14 Depth=2
	cmpl	$8, %ecx
	ja	.LBB7_18
# BB#17:                                #   in Loop: Header=BB7_14 Depth=2
	movb	(%rbx), %al
.LBB7_18:                               # %_ZNK10game_state3getEii.exit9.us
                                        #   in Loop: Header=BB7_14 Depth=2
	decb	%al
	movsbq	%al, %rax
	leaq	.Lswitch.table(%rip), %rcx
	movq	(%rcx,%rax,8), %rbp
	movq	%rbp, %rdi
	callq	strlen@PLT
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	incq	%rbx
	cmpq	%r14, %r13
	jl	.LBB7_14
.LBB7_19:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%r12, %r14
	cmpq	$4, %r14
	jg	.LBB7_21
# BB#20:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$3, %edx
	movq	%r15, %rdi
	leaq	.L.str.48(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	28(%rsp), %esi          # 4-byte Reload
	incl	%esi
	movq	%r15, %rdi
	callq	_ZNSolsEi@PLT
.LBB7_21:                               #   in Loop: Header=BB7_1 Depth=1
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbp
	testq	%rbp, %rbp
	leaq	.L.str.47(%rip), %r12
	leaq	.L.str.51(%rip), %r13
	je	.LBB7_43
# BB#22:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB7_24
# BB#23:                                #   in Loop: Header=BB7_1 Depth=1
	movb	67(%rbp), %al
	jmp	.LBB7_25
	.align	16, 0x90
.LBB7_24:                               #   in Loop: Header=BB7_1 Depth=1
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB7_25:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit16
                                        #   in Loop: Header=BB7_1 Depth=1
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movl	$4, %edx
	movq	%r15, %rdi
	leaq	.L.str.50(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB7_28
# BB#26:                                # %.lr.ph27.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	%eax, %rbx
	.align	16, 0x90
.LBB7_27:                               # %.lr.ph27
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decq	%rbx
	jne	.LBB7_27
.LBB7_28:                               # %._crit_edge28
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpq	$5, %r14
	jle	.LBB7_32
# BB#29:                                #   in Loop: Header=BB7_1 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %eax
	jg	.LBB7_36
# BB#30:                                # %.lr.ph34.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	%ecx, %rbx
	movslq	%eax, %rbp
	decq	%rbp
	.align	16, 0x90
.LBB7_31:                               # %.lr.ph34
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	incq	%rbp
	cmpq	%rbx, %rbp
	jl	.LBB7_31
	jmp	.LBB7_36
	.align	16, 0x90
.LBB7_32:                               #   in Loop: Header=BB7_1 Depth=1
	cmpq	$2, %r14
	movq	64(%rsp), %rbp          # 8-byte Reload
	movl	60(%rsp), %ebx          # 4-byte Reload
	jl	.LBB7_36
# BB#33:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpl	%ebx, %ebp
	jge	.LBB7_36
# BB#34:                                # %.lr.ph31.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	%ebx, %rbx
	movslq	%ebp, %rax
	subq	%rax, %rbx
	.align	16, 0x90
.LBB7_35:                               # %.lr.ph31
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$4, %edx
	movq	%r15, %rdi
	leaq	.L.str.52(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decq	%rbx
	jne	.LBB7_35
	.align	16, 0x90
.LBB7_36:                               # %.loopexit
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB7_43
# BB#37:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpb	$0, 56(%rbp)
	movq	40(%rsp), %rbx          # 8-byte Reload
	je	.LBB7_39
# BB#38:                                #   in Loop: Header=BB7_1 Depth=1
	movb	67(%rbp), %al
	jmp	.LBB7_40
	.align	16, 0x90
.LBB7_39:                               #   in Loop: Header=BB7_1 Depth=1
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB7_40:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19
                                        #   in Loop: Header=BB7_1 Depth=1
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$-9, 32(%rsp)           # 8-byte Folded Spill
	cmpq	$1, %r14
	movq	%rbx, %r14
	jg	.LBB7_1
# BB#4:
	leaq	.L.str.53(%rip), %rsi
	movl	$32, %edx
	movq	%r15, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_41
# BB#5:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%rbx)
	je	.LBB7_7
# BB#6:
	movb	67(%rbx), %al
	jmp	.LBB7_8
.LBB7_7:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB7_8:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_43:
	callq	_ZSt16__throw_bad_castv@PLT
.LBB7_41:
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end7:
	.size	_ZNK10game_state5printEv, .Lfunc_end7-_ZNK10game_state5printEv
	.cfi_endproc

	.text
	.globl	_Z14is_final_statePK10game_state
	.align	16, 0x90
	.type	_Z14is_final_statePK10game_state,@function
_Z14is_final_statePK10game_state:       # @_Z14is_final_statePK10game_state
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 48
.Ltmp67:
	.cfi_offset %rbx, -48
.Ltmp68:
	.cfi_offset %r12, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	leaq	1(%r15), %r12
	addq	$82, %r15
	xorl	%ebp, %ebp
	movq	%r12, %rax
	.align	16, 0x90
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%ebp, %ecx
	movzbl	1(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	2(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	3(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	4(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	5(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	6(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	7(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	8(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ebp
	addl	%edx, %ebp
	addq	$9, %rax
	cmpq	%r15, %rax
	jne	.LBB8_1
# BB#2:                                 # %_ZNK10game_state5countE9FieldType.exit.preheader
	xorl	%ebx, %ebx
	movq	%r12, %rax
	.align	16, 0x90
.LBB8_3:                                # %_ZNK10game_state5countE9FieldType.exit
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%ebx, %ecx
	movzbl	1(%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	2(%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	3(%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	4(%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	5(%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	6(%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	7(%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	8(%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ebx
	addl	%edx, %ebx
	addq	$9, %rax
	cmpq	%r15, %rax
	jne	.LBB8_3
# BB#4:                                 # %_ZNK10game_state5countE9FieldType.exit36
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.10(%rip), %rsi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%ebp, %esi
	movq	%r14, %rdi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.11(%rip), %rsi
	movl	$5, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%ebx, %esi
	movq	%r14, %rdi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rax
	.align	16, 0x90
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	2(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	3(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	4(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	5(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	6(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	7(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %esi
	addl	%edx, %esi
	movzbl	8(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%esi, %ecx
	addq	$9, %rax
	cmpq	%r15, %rax
	jne	.LBB8_5
# BB#6:                                 # %_ZNK10game_state5countE9FieldType.exit24
	movb	$1, %al
	cmpl	$9, %ecx
	jb	.LBB8_10
# BB#7:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_8:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	1(%r12), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	2(%r12), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	3(%r12), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	4(%r12), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	5(%r12), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	6(%r12), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	7(%r12), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	addl	%ecx, %edx
	movzbl	8(%r12), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	addq	$9, %r12
	cmpq	%r15, %r12
	jne	.LBB8_8
# BB#9:                                 # %_ZNK10game_state5countE9FieldType.exit12
	cmpl	$9, %eax
	setb	%al
.LBB8_10:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_Z14is_final_statePK10game_state, .Lfunc_end8-_Z14is_final_statePK10game_state
	.cfi_endproc

	.globl	_Z10move_validPK10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10move_validPK10game_statePK9game_move,@function
_Z10move_validPK10game_statePK9game_move: # @_Z10move_validPK10game_statePK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 56
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movl	20(%rsi), %edx
	movslq	4(%rsi), %r9
	movl	%edx, %r12d
	subl	%r9d, %r12d
	leal	1(%r12), %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	ja	.LBB9_79
# BB#1:
	movl	24(%rsi), %r15d
	movq	%r15, -8(%rsp)          # 8-byte Spill
	movslq	8(%rsi), %r13
	subl	%r13d, %r15d
	leal	1(%r15), %ecx
	cmpl	$2, %ecx
	ja	.LBB9_79
# BB#2:
	movq	%rdx, %rbp
	cmpl	%r9d, %ebp
	setne	%dl
	movq	-8(%rsp), %rax          # 8-byte Reload
	cmpl	%r13d, %eax
	setne	%bl
	cmpl	%r15d, %r12d
	sete	%r8b
	movb	%dl, %cl
	orb	%bl, %cl
	xorl	%eax, %eax
	movzbl	%cl, %ecx
	cmpl	$1, %ecx
	jne	.LBB9_79
# BB#3:
	movq	%rbp, -16(%rsp)         # 8-byte Spill
	andb	%bl, %dl
	xorb	$1, %dl
	orb	%dl, %r8b
	je	.LBB9_79
# BB#4:
	movl	(%rsi), %eax
	testl	%eax, %eax
	je	.LBB9_44
# BB#5:
	cmpl	$1, %eax
	jne	.LBB9_78
# BB#6:
	movl	12(%rsi), %r8d
	movl	%r8d, %ecx
	subl	%r9d, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	cmpl	$2, %eax
	jg	.LBB9_78
# BB#7:
	movl	16(%rsi), %esi
	movl	%esi, %edx
	subl	%r13d, %edx
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	cmpl	$2, %eax
	jg	.LBB9_78
# BB#8:
	cmpl	%r9d, %r8d
	setne	%al
	cmpl	%r13d, %esi
	setne	%r10b
	cmpl	%edx, %ecx
	sete	%r11b
	movb	%al, %bl
	orb	%r10b, %bl
	movzbl	%bl, %ebx
	cmpl	$1, %ebx
	jne	.LBB9_78
# BB#9:
	andb	%r10b, %al
	xorb	$1, %al
	orb	%al, %r11b
	je	.LBB9_78
# BB#10:
	imull	%r12d, %edx
	imull	%r15d, %ecx
	cmpl	%ecx, %edx
	je	.LBB9_78
# BB#11:
	movq	-8(%rsp), %rax          # 8-byte Reload
	leal	5(%rax), %eax
	movq	-16(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB9_78
# BB#12:
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	5(%rax), %eax
	movq	-8(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB9_78
# BB#13:
	movq	-16(%rsp), %rax         # 8-byte Reload
	decl	%eax
	cmpl	$8, %eax
	movq	%rax, %rcx
	ja	.LBB9_78
# BB#14:
	movq	-8(%rsp), %rax          # 8-byte Reload
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB9_78
# BB#15:                                # %_ZNK10game_state3getEii.exit
	cltq
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rdi, %rcx
	movzbl	1(%rax,%rcx), %eax
	cmpl	$3, %eax
	jne	.LBB9_78
# BB#16:
	leal	(%r8,%r12), %eax
	leal	5(%rsi,%r15), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_78
# BB#17:
	leal	(%rsi,%r15), %eax
	leal	5(%r8,%r12), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_78
# BB#18:
	leal	-1(%r8,%r12), %eax
	cmpl	$8, %eax
	ja	.LBB9_78
# BB#19:
	leal	-1(%rsi,%r15), %ecx
	cmpl	$8, %ecx
	ja	.LBB9_78
# BB#20:                                # %_ZNK10game_state3getEii.exit87
	movslq	%ecx, %rcx
	cltq
	leaq	(%rax,%rax,8), %rax
	addq	%rdi, %rax
	movzbl	1(%rcx,%rax), %eax
	cmpl	$3, %eax
	jne	.LBB9_78
# BB#21:
	leal	(%r8,%r9), %eax
	movl	%eax, %r10d
	shrl	$31, %r10d
	addl	%eax, %r10d
	sarl	%r10d
	leal	(%r10,%r12), %eax
	leal	(%rsi,%r13), %ecx
	movl	%ecx, %ebx
	shrl	$31, %ebx
	addl	%ecx, %ebx
	sarl	%ebx
	leal	5(%rbx,%r15), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_78
# BB#22:
	movl	%r15d, %eax
	addl	%ebx, %eax
	leal	5(%r10,%r12), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_78
# BB#23:
	leal	-1(%r10,%r12), %eax
	cmpl	$8, %eax
	ja	.LBB9_78
# BB#24:
	leal	-1(%rbx,%r15), %ecx
	cmpl	$8, %ecx
	ja	.LBB9_78
# BB#25:                                # %_ZNK10game_state3getEii.exit81
	movslq	%ecx, %rcx
	cltq
	leaq	(%rax,%rax,8), %rax
	addq	%rdi, %rax
	movzbl	1(%rcx,%rax), %eax
	cmpl	$3, %eax
	jne	.LBB9_78
# BB#26:
	leal	5(%r13), %eax
	movb	$4, %cl
	cmpl	%r9d, %eax
	jle	.LBB9_31
# BB#27:
	leal	5(%r9), %eax
	cmpl	%r13d, %eax
	jle	.LBB9_31
# BB#28:
	decl	%r9d
	cmpl	$8, %r9d
	ja	.LBB9_31
# BB#29:
	decl	%r13d
	cmpl	$8, %r13d
	movq	%r13, %rax
	ja	.LBB9_31
# BB#30:
	cltq
	movslq	%r9d, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rdi, %rcx
	movb	1(%rax,%rcx), %cl
.LBB9_31:                               # %_ZNK10game_state3getEii.exit75
	movzbl	(%rdi), %eax
	movzbl	%cl, %ecx
	cmpl	%eax, %ecx
	jne	.LBB9_78
# BB#32:
	leal	5(%rsi), %eax
	movb	$4, %dl
	cmpl	%r8d, %eax
	jle	.LBB9_37
# BB#33:
	leal	5(%r8), %eax
	cmpl	%esi, %eax
	jle	.LBB9_37
# BB#34:
	decl	%r8d
	cmpl	$8, %r8d
	ja	.LBB9_37
# BB#35:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB9_37
# BB#36:
	movslq	%esi, %rax
	movslq	%r8d, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdi, %rdx
	movb	1(%rax,%rdx), %dl
.LBB9_37:                               # %_ZNK10game_state3getEii.exit69
	movzbl	%dl, %eax
	cmpl	%ecx, %eax
	jne	.LBB9_78
# BB#38:
	movq	%rdi, %rsi
	leal	5(%rbx), %edx
	movb	$4, %al
	cmpl	%r10d, %edx
	jle	.LBB9_43
# BB#39:
	leal	5(%r10), %edx
	cmpl	%ebx, %edx
	jle	.LBB9_43
# BB#40:
	decl	%r10d
	cmpl	$8, %r10d
	ja	.LBB9_43
# BB#41:
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB9_43
# BB#42:
	movslq	%ebx, %rax
	movslq	%r10d, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rsi
	movb	1(%rax,%rsi), %al
.LBB9_43:                               # %_ZNK10game_state3getEii.exit63
	movzbl	%al, %edx
	movb	$1, %al
	cmpl	%ecx, %edx
	jne	.LBB9_78
	jmp	.LBB9_79
.LBB9_44:
	leal	5(%r13), %ecx
	movb	$4, %al
	cmpl	%r9d, %ecx
	jle	.LBB9_49
# BB#45:
	leal	5(%r9), %ecx
	cmpl	%r13d, %ecx
	jle	.LBB9_49
# BB#46:
	leal	-1(%r9), %ecx
	cmpl	$8, %ecx
	ja	.LBB9_49
# BB#47:
	leal	-1(%r13), %edx
	cmpl	$8, %edx
	ja	.LBB9_49
# BB#48:
	movslq	%edx, %rax
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rdi, %rcx
	movb	1(%rax,%rcx), %al
.LBB9_49:                               # %_ZNK10game_state3getEii.exit57
	movzbl	(%rdi), %ecx
	movzbl	%al, %r14d
	cmpl	%ecx, %r14d
	jne	.LBB9_78
# BB#50:                                # %.preheader.preheader
	movq	%rdi, %r10
	movq	%r13, %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movslq	%r12d, %r13
	movslq	%r15d, %r8
	xorl	%r11d, %r11d
	movq	%rax, %rsi
	movq	%r9, %rbx
	movq	%r9, -32(%rsp)          # 8-byte Spill
	jmp	.LBB9_51
	.align	16, 0x90
.LBB9_56:                               #   in Loop: Header=BB9_51 Depth=1
	incl	%r11d
	addq	%r13, %rbx
	addq	%r8, %rsi
.LBB9_51:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rbx), %ebp
	cmpl	$9, %ebp
	sbbb	%al, %al
	leal	-1(%rsi), %edx
	cmpl	$9, %edx
	sbbb	%cl, %cl
	andb	%al, %cl
	andb	$1, %cl
	leaq	5(%rsi), %r9
	movb	$4, %al
	cmpq	%rbx, %r9
	jle	.LBB9_55
# BB#52:                                # %.preheader
                                        #   in Loop: Header=BB9_51 Depth=1
	leaq	5(%rbx), %rdi
	cmpq	%rsi, %rdi
	jle	.LBB9_55
# BB#53:                                # %.preheader
                                        #   in Loop: Header=BB9_51 Depth=1
	testb	%cl, %cl
	je	.LBB9_55
# BB#54:                                #   in Loop: Header=BB9_51 Depth=1
	movslq	%edx, %rax
	movslq	%ebp, %rdi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r10, %rdi
	movb	1(%rax,%rdi), %al
.LBB9_55:                               # %_ZNK10game_state3getEii.exit51
                                        #   in Loop: Header=BB9_51 Depth=1
	movzbl	%al, %eax
	cmpl	%r14d, %eax
	je	.LBB9_56
# BB#57:
	testl	%r11d, %r11d
	movq	-32(%rsp), %r9          # 8-byte Reload
	je	.LBB9_78
# BB#58:
	cmpl	$3, %r11d
	jg	.LBB9_78
# BB#59:
	movq	%r10, -24(%rsp)         # 8-byte Spill
	cmpl	$1, %r14d
	sete	%r8b
	leal	5(%rbx), %eax
	cmpl	%esi, %eax
	setg	%r13b
	leal	5(%rsi), %edi
	movb	$1, %r14b
	xorl	%eax, %eax
	cmpl	%ebx, %edi
	jle	.LBB9_60
# BB#61:
	andb	%cl, %r13b
	movq	-16(%rsp), %r10         # 8-byte Reload
	je	.LBB9_60
# BB#62:                                # %_ZNK10game_state3getEii.exit45.preheader
	incb	%r8b
	leal	-1(%rsi), %ecx
	movq	-40(%rsp), %rax         # 8-byte Reload
	movq	-8(%rsp), %rdi          # 8-byte Reload
	subl	%eax, %edi
	movq	%rdi, -8(%rsp)          # 8-byte Spill
	leal	-1(%rbx), %r13d
	subl	%r9d, %r10d
	movzbl	%r8b, %eax
	movl	%eax, -16(%rsp)         # 4-byte Spill
	movb	$1, %r14b
.LBB9_63:                               # %_ZNK10game_state3getEii.exit45
                                        # =>This Inner Loop Header: Depth=1
	movslq	%edx, %rax
	movslq	%ebp, %rdi
	leaq	(%rdi,%rdi,8), %rdi
	addq	-24(%rsp), %rdi         # 8-byte Folded Reload
	movzbl	1(%rax,%rdi), %eax
	cmpl	-16(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB9_64
# BB#65:                                #   in Loop: Header=BB9_63 Depth=1
	decl	%r11d
	leal	(%r10,%r13), %r8d
	movq	-8(%rsp), %rdi          # 8-byte Reload
	leal	(%rdi,%rcx), %r9d
	leal	6(%rdi,%rcx), %eax
	leal	1(%r10,%r13), %edx
	xorl	%r14d, %r14d
	cmpl	%edx, %eax
	jle	.LBB9_66
# BB#67:                                #   in Loop: Header=BB9_63 Depth=1
	leal	1(%rdi,%rcx), %eax
	leal	6(%r10,%r13), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_68
# BB#69:                                #   in Loop: Header=BB9_63 Depth=1
	cmpl	$8, %r8d
	ja	.LBB9_70
# BB#71:                                #   in Loop: Header=BB9_63 Depth=1
	leal	-1(%rbx,%r12), %ebp
	movl	%ebx, %eax
	addl	%r12d, %eax
	leal	-1(%rsi,%r15), %edx
	addl	%r15d, %esi
	cmpl	$9, %r9d
	movl	%r8d, %r13d
	movl	%r9d, %ecx
	movl	%eax, %ebx
	movl	$0, %eax
	jb	.LBB9_63
	jmp	.LBB9_72
.LBB9_64:
	movb	$1, %al
.LBB9_60:
	movl	%edx, %r9d
	movl	%ebp, %r8d
.LBB9_72:                               # %_ZNK10game_state3getEii.exit45.thread
	testl	%r11d, %r11d
	movq	-24(%rsp), %rdx         # 8-byte Reload
	jle	.LBB9_78
# BB#73:
	testb	%al, %al
	je	.LBB9_74
# BB#75:                                # %_ZNK10game_state3getEii.exit39
	movslq	%r9d, %rax
	movslq	%r8d, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdx
	movzbl	1(%rax,%rdx), %ecx
	movb	$1, %al
	cmpl	$3, %ecx
	je	.LBB9_79
# BB#76:
	movzbl	%cl, %eax
	cmpl	$4, %eax
	setne	%al
	jmp	.LBB9_77
.LBB9_74:
	xorl	%eax, %eax
.LBB9_77:                               # %_ZNK10game_state3getEii.exit33
	orb	%al, %r14b
	movb	$1, %al
	testb	$1, %r14b
	je	.LBB9_79
.LBB9_78:                               # %.thread92
	xorl	%eax, %eax
.LBB9_79:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_66:
	xorl	%eax, %eax
	jmp	.LBB9_72
.LBB9_68:
	xorl	%eax, %eax
	jmp	.LBB9_72
.LBB9_70:
	xorl	%eax, %eax
	jmp	.LBB9_72
.Lfunc_end9:
	.size	_Z10move_validPK10game_statePK9game_move, .Lfunc_end9-_Z10move_validPK10game_statePK9game_move
	.cfi_endproc

	.globl	_Z10apply_moveP10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10apply_moveP10game_statePK9game_move,@function
_Z10apply_moveP10game_statePK9game_move: # @_Z10apply_moveP10game_statePK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp90:
	.cfi_def_cfa_offset 64
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	_Z10move_validPK10game_statePK9game_move@PLT
	testb	%al, %al
	je	.LBB10_1
# BB#2:
	movl	(%rbx), %ecx
	movl	20(%rbx), %r12d
	movslq	4(%rbx), %r10
	movl	%r12d, %r11d
	subl	%r10d, %r11d
	movl	24(%rbx), %r13d
	movslq	8(%rbx), %r15
	movl	%r13d, %r9d
	subl	%r15d, %r9d
	movb	$1, %al
	cmpl	$1, %ecx
	je	.LBB10_11
# BB#3:
	testl	%ecx, %ecx
	jne	.LBB10_35
# BB#4:                                 # %.preheader.preheader
	movslq	%r11d, %r8
	movslq	%r9d, %r9
	subl	%r15d, %r13d
	leal	-1(%r15), %ebp
	subl	%r10d, %r12d
	leal	-1(%r10), %ebx
	movb	$3, %cl
	.align	16, 0x90
.LBB10_5:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	5(%r15), %rdx
	cmpq	%r10, %rdx
	jle	.LBB10_35
# BB#6:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	leaq	5(%r10), %rdx
	cmpq	%r15, %rdx
	jle	.LBB10_35
# BB#7:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	cmpl	$8, %ebx
	ja	.LBB10_35
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	cmpl	$8, %ebp
	ja	.LBB10_35
# BB#9:                                 # %_ZNK10game_state3getEii.exit50
                                        #   in Loop: Header=BB10_5 Depth=1
	movslq	%ebp, %rdi
	movslq	%ebx, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r14, %rdx
	movzbl	1(%rdi,%rdx), %esi
	cmpl	$4, %esi
	je	.LBB10_35
# BB#10:                                #   in Loop: Header=BB10_5 Depth=1
	leaq	1(%rdi,%rdx), %rdx
	movb	%cl, (%rdx)
	addq	%r8, %r10
	addq	%r9, %r15
	addl	%r13d, %ebp
	addl	%r12d, %ebx
	movzbl	%sil, %ecx
	cmpl	$3, %ecx
	movb	%sil, %cl
	jne	.LBB10_5
	jmp	.LBB10_35
.LBB10_1:
	xorl	%eax, %eax
	jmp	.LBB10_35
.LBB10_11:
	leal	-1(%r10), %edi
	cmpl	$9, %edi
	sbbb	%cl, %cl
	leal	-1(%r15), %ebp
	cmpl	$9, %ebp
	sbbb	%dl, %dl
	andb	%cl, %dl
	leal	5(%r10), %ecx
	cmpl	%r15d, %ecx
	setg	%cl
	leal	5(%r15), %esi
	cmpl	%r10d, %esi
	setg	%r8b
	andb	%cl, %r8b
	andb	%dl, %r8b
	movb	$4, %sil
	movzbl	%r8b, %ecx
	cmpl	$1, %ecx
	jne	.LBB10_13
# BB#12:
	movslq	%ebp, %rcx
	movslq	%edi, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r14, %rdx
	movb	1(%rcx,%rdx), %sil
.LBB10_13:                              # %_ZNK10game_state3getEii.exit
	leal	5(%r13), %ecx
	cmpl	%r12d, %ecx
	jle	.LBB10_36
# BB#14:                                # %_ZNK10game_state3getEii.exit
	leal	5(%r12), %ecx
	cmpl	%r13d, %ecx
	jle	.LBB10_36
# BB#15:                                # %_ZNK10game_state3getEii.exit
	decl	%r12d
	cmpl	$8, %r12d
	ja	.LBB10_36
# BB#16:                                # %_ZNK10game_state3getEii.exit
	decl	%r13d
	cmpl	$9, %r13d
	jae	.LBB10_36
# BB#17:                                # %_ZN10game_state3setEii9FieldType.exit13
	movl	%ebp, (%rsp)            # 4-byte Spill
	movl	%edi, 4(%rsp)           # 4-byte Spill
	movslq	%r13d, %rcx
	movslq	%r12d, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r14, %rdx
	movb	%sil, %r12b
	movb	%r12b, 1(%rcx,%rdx)
	movl	12(%rbx), %esi
	movl	16(%rbx), %ecx
	leal	(%rsi,%r11), %edx
	leal	5(%rcx,%r9), %edi
	cmpl	%edx, %edi
	jle	.LBB10_36
# BB#18:                                # %_ZN10game_state3setEii9FieldType.exit13
	leal	(%rcx,%r9), %edx
	leal	5(%rsi,%r11), %edi
	cmpl	%edx, %edi
	jle	.LBB10_36
# BB#19:                                # %_ZN10game_state3setEii9FieldType.exit13
	leal	-1(%rsi,%r11), %ebx
	cmpl	$8, %ebx
	ja	.LBB10_36
# BB#20:                                # %_ZN10game_state3setEii9FieldType.exit13
	leal	-1(%rcx,%r9), %edi
	cmpl	$9, %edi
	jae	.LBB10_36
# BB#21:                                # %_ZN10game_state3setEii9FieldType.exit19
	movslq	%edi, %rdx
	movslq	%ebx, %rdi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r14, %rdi
	movb	%r12b, 1(%rdx,%rdi)
	addl	%esi, %r10d
	movl	%r10d, %ebx
	shrl	$31, %ebx
	addl	%r10d, %ebx
	sarl	%ebx
	leal	(%rbx,%r11), %edi
	addl	%ecx, %r15d
	movl	%r15d, %edx
	shrl	$31, %edx
	addl	%r15d, %edx
	sarl	%edx
	leal	5(%rdx,%r9), %ebp
	cmpl	%edi, %ebp
	jle	.LBB10_36
# BB#22:                                # %_ZN10game_state3setEii9FieldType.exit19
	movl	%r9d, %edi
	addl	%edx, %edi
	leal	5(%rbx,%r11), %ebp
	cmpl	%edi, %ebp
	jle	.LBB10_36
# BB#23:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	-1(%rbx,%r11), %edi
	cmpl	$8, %edi
	ja	.LBB10_36
# BB#24:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	-1(%rdx,%r9), %ebp
	cmpl	$9, %ebp
	jae	.LBB10_36
# BB#25:                                # %_ZN10game_state3setEii9FieldType.exit25
	movslq	%ebp, %rbp
	movslq	%edi, %rdi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r14, %rdi
	movb	%r12b, 1(%rbp,%rdi)
	testb	%r8b, %r8b
	je	.LBB10_36
# BB#26:                                # %_ZN10game_state3setEii9FieldType.exit31
	movslq	(%rsp), %rdi            # 4-byte Folded Reload
	movslq	4(%rsp), %rbp           # 4-byte Folded Reload
	leaq	(%rbp,%rbp,8), %rbp
	addq	%r14, %rbp
	movb	$3, 1(%rdi,%rbp)
	leal	5(%rcx), %edi
	cmpl	%esi, %edi
	jle	.LBB10_36
# BB#27:                                # %_ZN10game_state3setEii9FieldType.exit31
	leal	5(%rsi), %edi
	cmpl	%ecx, %edi
	jle	.LBB10_36
# BB#28:                                # %_ZN10game_state3setEii9FieldType.exit31
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB10_36
# BB#29:                                # %_ZN10game_state3setEii9FieldType.exit31
	decl	%ecx
	cmpl	$9, %ecx
	jae	.LBB10_36
# BB#30:                                # %_ZN10game_state3setEii9FieldType.exit37
	movslq	%ecx, %rcx
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	$3, 1(%rcx,%rsi)
	leal	5(%rdx), %ecx
	cmpl	%ebx, %ecx
	jle	.LBB10_36
# BB#31:                                # %_ZN10game_state3setEii9FieldType.exit37
	leal	5(%rbx), %ecx
	cmpl	%edx, %ecx
	jle	.LBB10_36
# BB#32:                                # %_ZN10game_state3setEii9FieldType.exit37
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB10_36
# BB#33:                                # %_ZN10game_state3setEii9FieldType.exit37
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB10_36
# BB#34:                                # %_ZN10game_state3setEii9FieldType.exit43
	movslq	%edx, %rcx
	movslq	%ebx, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %r14
	movb	$3, 1(%rcx,%r14)
.LBB10_35:                              # %.thread
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_36:                              # %_ZL15check_valid_posii.exit.thread.i12
	leaq	.L.str.57(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType(%rip), %rcx
	movl	$148, %edx
	callq	__assert_fail@PLT
.Lfunc_end10:
	.size	_Z10apply_moveP10game_statePK9game_move, .Lfunc_end10-_Z10apply_moveP10game_statePK9game_move
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.zero	16
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp101:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 56
	subq	$664, %rsp              # imm = 0x298
.Ltmp103:
	.cfi_def_cfa_offset 720
.Ltmp104:
	.cfi_offset %rbx, -56
.Ltmp105:
	.cfi_offset %r12, -48
.Ltmp106:
	.cfi_offset %r13, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movl	%edi, %ebx
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.13(%rip), %rsi
	movl	$23, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.12(%rip), %r14
	leaq	.L.str.14(%rip), %r15
	movq	optarg@GOTPCREL(%rip), %r12
	jmp	.LBB11_1
.LBB11_18:                              #   in Loop: Header=BB11_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	shlq	$20, %rax
	movq	%rax, _ZL9mem_limit+8(%rip)
	.align	16, 0x90
.LBB11_1:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	getopt@PLT
	cmpl	$99, %eax
	jle	.LBB11_2
# BB#9:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$114, %eax
	jg	.LBB11_14
# BB#10:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$100, %eax
	je	.LBB11_77
# BB#11:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$109, %eax
	jne	.LBB11_12
# BB#17:                                #   in Loop: Header=BB11_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	shlq	$20, %rax
	movq	%rax, _ZL9mem_limit(%rip)
	jmp	.LBB11_1
	.align	16, 0x90
.LBB11_2:                               # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$76, %eax
	jle	.LBB11_3
# BB#6:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$77, %eax
	je	.LBB11_18
# BB#7:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$84, %eax
	jne	.LBB11_1
# BB#8:                                 #   in Loop: Header=BB11_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	movq	%rax, _ZL9cpu_limit.1(%rip)
	jmp	.LBB11_1
	.align	16, 0x90
.LBB11_14:                              # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$115, %eax
	je	.LBB11_19
# BB#15:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$116, %eax
	jne	.LBB11_1
# BB#16:                                #   in Loop: Header=BB11_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	movq	%rax, _ZL9cpu_limit.0(%rip)
	jmp	.LBB11_1
.LBB11_3:                               # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$-1, %eax
	je	.LBB11_20
# BB#4:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$58, %eax
	je	.LBB11_13
# BB#5:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$63, %eax
	jne	.LBB11_1
	jmp	.LBB11_13
.LBB11_77:                              #   in Loop: Header=BB11_1 Depth=1
	movb	$1, _ZL5debug(%rip)
	jmp	.LBB11_1
.LBB11_19:                              #   in Loop: Header=BB11_1 Depth=1
	movq	(%r12), %r14
	jmp	.LBB11_1
.LBB11_12:                              # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$104, %eax
	jne	.LBB11_1
	jmp	.LBB11_13
.LBB11_20:
	movq	optind@GOTPCREL(%rip), %r15
	movl	(%r15), %eax
	addl	$2, %eax
	cmpl	%ebx, %eax
	jg	.LBB11_13
# BB#21:
	movq	$1, 496(%rsp)
	leaq	504(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 640(%rsp)
	movq	$0, 496(%rsp)
	movl	$0, 632(%rsp)
	leaq	496(%rsp), %rsi
	movl	$13, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB11_78
# BB#22:
	movq	$0, 336(%rsp)
	leaq	344(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 480(%rsp)
	leaq	_ZL13alarm_handleriP9siginfo_tPv(%rip), %rax
	movq	%rax, 336(%rsp)
	movl	$268435460, 472(%rsp)   # imm = 0x10000004
	leaq	336(%rsp), %rsi
	movl	$14, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB11_78
# BB#23:
	movq	$0, 176(%rsp)
	leaq	184(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 320(%rsp)
	leaq	_ZL13child_handleriP9siginfo_tPv(%rip), %rax
	movq	%rax, 176(%rsp)
	movl	$268435460, 312(%rsp)   # imm = 0x10000004
	leaq	176(%rsp), %rsi
	movl	$17, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB11_78
# BB#24:                                # %_ZL21setup_signal_handlersv.exit
	movslq	(%r15), %rax
	movq	(%rbp,%rax,8), %rdi
	leaq	_ZL6player(%rip), %rsi
	callq	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB11_79
# BB#25:
	movslq	(%r15), %rax
	movq	8(%rbp,%rax,8), %rdi
	leaq	_ZL6player+16(%rip), %rsi
	callq	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB11_79
# BB#26:
	movabsq	$289360691352306692, %rax # imm = 0x404040404040404
	movq	%rax, 568(%rsp)
	movq	%rax, 560(%rsp)
	movq	%rax, 552(%rsp)
	movq	%rax, 544(%rsp)
	movq	%rax, 536(%rsp)
	movq	%rax, 528(%rsp)
	movq	%rax, 520(%rsp)
	movq	%rax, 512(%rsp)
	movq	%rax, 504(%rsp)
	movq	%rax, 496(%rsp)
	movw	$1028, 576(%rsp)        # imm = 0x404
	testq	%r14, %r14
	je	.LBB11_80
# BB#27:
	movq	%r14, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB11_81
# BB#28:                                # %_Z16initialize_stateP10game_statePKc.exit
	leaq	496(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	_ZN10game_state5setupEPKc@PLT
	movq	%rbp, %rdi
	callq	_ZNK10game_state5printEv@PLT
	movzbl	496(%rsp), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %r15d
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	xorl	%r12d, %r12d
.LBB11_29:                              # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_32 Depth 2
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	callq	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	jne	.LBB11_30
# BB#31:                                # %.lr.ph
                                        #   in Loop: Header=BB11_29 Depth=1
	movl	%r12d, 84(%rsp)         # 4-byte Spill
	movl	%r15d, %eax
	orl	$1, %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movslq	%r15d, %rax
	shlq	$4, %rax
	leaq	_ZL6player(%rip), %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	leaq	13(%rax,%rcx), %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	leaq	12(%rax,%rcx), %rdx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	leaq	8(%rax,%rcx), %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	leaq	4(%rax,%rcx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	176(%rsp), %r13
	leaq	.L.str.44(%rip), %r12
	.align	16, 0x90
.LBB11_32:                              #   Parent Loop BB11_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, 116(%rsp)           # 4-byte Folded Reload
	jne	.LBB11_82
# BB#33:                                #   in Loop: Header=BB11_32 Depth=2
	movq	%r15, %rax
	movq	%r14, %r15
	cmpl	$1, %eax
	je	.LBB11_36
# BB#34:                                #   in Loop: Header=BB11_32 Depth=2
	testl	%eax, %eax
	jne	.LBB11_37
# BB#35:                                #   in Loop: Header=BB11_32 Depth=2
	movb	$1, 496(%rsp)
	jmp	.LBB11_38
	.align	16, 0x90
.LBB11_36:                              #   in Loop: Header=BB11_32 Depth=2
	movb	$2, 496(%rsp)
	jmp	.LBB11_38
	.align	16, 0x90
.LBB11_37:                              #   in Loop: Header=BB11_32 Depth=2
	movb	$4, 496(%rsp)
.LBB11_38:                              # %_ZN10game_state6playerEi.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movq	%r12, %r14
	movq	%r13, %rdi
	callq	time@PLT
	cmpq	$-1, 176(%rsp)
	je	.LBB11_39
.LBB11_40:                              #   in Loop: Header=BB11_32 Depth=2
	movq	%r13, %rdi
	callq	localtime@PLT
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB11_41
.LBB11_42:                              # %_ZL10getTimeStrPcm.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	$64, %esi
	leaq	336(%rsp), %rbx
	movq	%rbx, %rdi
	leaq	.L.str.95(%rip), %rdx
	movq	%r12, %rcx
	callq	strftime@PLT
	movl	$6, %edx
	movq	%r15, %rdi
	movq	%r14, %r12
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%r15, %rdi
	leaq	.L.str.16(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	callq	strlen@PLT
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$3, %edx
	movq	%r15, %rdi
	leaq	.L.str.17(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	%r15, %rbx
	movq	%rsi, %r15
	callq	_ZNSolsEi@PLT
	movl	$9, %edx
	movq	%rax, %rdi
	leaq	.L.str.18(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$6, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$7, %edx
	movq	%rbx, %rdi
	leaq	.L.str.19(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	movl	$2, %edi
	movq	%rbp, %rsi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movq	136(%rsp), %rax         # 8-byte Reload
	movb	$0, (%rax)
	movq	104(%rsp), %rax         # 8-byte Reload
	movb	$0, (%rax)
	movq	128(%rsp), %r14         # 8-byte Reload
	movq	%r14, _ZL14current_player(%rip)
	movq	_ZL9cpu_limit.0(%rip), %rax
	cmpq	$-1, %rax
	movl	$0, %ecx
	cmoveq	%rcx, %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movq	%rax, 192(%rsp)
	movq	$0, 200(%rsp)
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%r13, %rsi
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB11_83
# BB#43:                                # %_ZL9arm_timerl.exit.i
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	(%r14), %edi
	movl	$18, %esi
	callq	kill@PLT
	testl	%eax, %eax
	movq	%rbx, %r14
	js	.LBB11_55
# BB#44:                                #   in Loop: Header=BB11_32 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	movq	%rbp, %rsi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpb	$0, (%rax)
	jne	.LBB11_54
# BB#45:                                #   in Loop: Header=BB11_32 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	leaq	144(%rsp), %rsi
	callq	_Z16deserialize_moveiP9game_move@PLT
	movq	136(%rsp), %rcx         # 8-byte Reload
	cmpb	$0, (%rcx)
	je	.LBB11_46
.LBB11_54:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	$6, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$16, %edx
	movq	%r14, %rdi
	leaq	.L.str.98(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LBB11_55:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit.thread
                                        #   in Loop: Header=BB11_32 Depth=2
	movzbl	_ZL5debug(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB11_59
# BB#56:                                #   in Loop: Header=BB11_32 Depth=2
	movl	$6, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$20, %edx
	movq	%r14, %rdi
	leaq	.L.str.20(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LBB11_57:                              # %.thread
                                        #   in Loop: Header=BB11_32 Depth=2
	movq	%rbp, %rdi
	callq	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	je	.LBB11_32
	jmp	.LBB11_58
.LBB11_46:                              #   in Loop: Header=BB11_32 Depth=2
	testb	%al, %al
	je	.LBB11_55
# BB#47:                                #   in Loop: Header=BB11_32 Depth=2
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	movl	$19, %esi
	callq	kill@PLT
	testl	%eax, %eax
	js	.LBB11_55
# BB#48:                                #   in Loop: Header=BB11_32 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%r13, %rsi
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB11_83
# BB#49:                                # %_ZL9arm_timerl.exit2.i
                                        #   in Loop: Header=BB11_32 Depth=2
	movq	$0, _ZL14current_player(%rip)
	movw	$0, 656(%rsp)
	movq	$0, 648(%rsp)
	movslq	148(%rsp), %rax
	movq	_ZZNK9game_move8toStringEPcE3row@GOTPCREL(%rip), %rdx
	movb	(%rdx,%rax), %al
	movb	%al, 648(%rsp)
	movslq	152(%rsp), %rax
	movq	_ZZNK9game_move8toStringEPcE4diag@GOTPCREL(%rip), %rsi
	movb	(%rsi,%rax), %al
	movb	%al, 649(%rsp)
	movl	$2, %eax
	cmpl	$1, 144(%rsp)
	jne	.LBB11_51
# BB#50:                                #   in Loop: Header=BB11_32 Depth=2
	movb	$45, 650(%rsp)
	movslq	156(%rsp), %rax
	movb	(%rdx,%rax), %al
	movb	%al, 651(%rsp)
	movslq	160(%rsp), %rax
	movb	(%rsi,%rax), %al
	movb	%al, 652(%rsp)
	movl	$5, %eax
.LBB11_51:                              #   in Loop: Header=BB11_32 Depth=2
	movl	%eax, %eax
	movb	$44, 648(%rsp,%rax)
	movslq	164(%rsp), %rcx
	movb	(%rdx,%rcx), %cl
	movb	%cl, 649(%rsp,%rax)
	movslq	168(%rsp), %rcx
	movb	(%rsi,%rcx), %cl
	movb	%cl, 650(%rsp,%rax)
	movb	$0, 651(%rsp,%rax)
	movl	$6, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$9, %edx
	movq	%r14, %rdi
	leaq	.L.str.97(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	648(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%r14, %rdi
	leaq	.L.str.6(%rip), %rbx
	movq	%rbx, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	leaq	144(%rsp), %rsi
	callq	_Z10apply_moveP10game_statePK9game_move@PLT
	movq	%r12, %rsi
	movb	%al, %r12b
	movl	$6, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	testb	%r12b, %r12b
	jne	.LBB11_60
# BB#52:                                #   in Loop: Header=BB11_32 Depth=2
	movl	$25, %edx
	movq	%r14, %rdi
	leaq	.L.str.21(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movb	_ZL5debug(%rip), %al
	andb	$1, %al
	leaq	176(%rsp), %r13
	leaq	.L.str.44(%rip), %r12
	jne	.LBB11_57
	jmp	.LBB11_53
.LBB11_39:                              #   in Loop: Header=BB11_32 Depth=2
	leaq	.L.str.93(%rip), %rdi
	callq	perror@PLT
	jmp	.LBB11_40
.LBB11_41:                              #   in Loop: Header=BB11_32 Depth=2
	leaq	.L.str.94(%rip), %rdi
	callq	perror@PLT
	jmp	.LBB11_42
.LBB11_60:                              #   in Loop: Header=BB11_29 Depth=1
	movl	$1, %edx
	movq	%r14, %rdi
	leaq	.L.str.22(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_ZNSolsEi@PLT
	movl	$8, %edx
	movq	%rax, %rdi
	leaq	.L.str.23(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %r13d
	subl	%r15d, %r13d
	sete	%al
	movzbl	%al, %eax
	movl	84(%rsp), %r12d         # 4-byte Reload
	addl	%eax, %r12d
	cmpl	$101, %r12d
	movl	%r13d, %r15d
	jl	.LBB11_29
	jmp	.LBB11_61
.LBB11_58:
	movl	%r15d, %r13d
	movl	84(%rsp), %r12d         # 4-byte Reload
.LBB11_61:                              # %.loopexit
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB11_84
# BB#62:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 56(%rbp)
	je	.LBB11_64
# BB#63:
	movb	67(%rbp), %al
	jmp	.LBB11_65
.LBB11_64:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB11_65:                              # %_Z8print_nlv.exit
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	leaq	.Lstr(%rip), %rdi
	callq	puts@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	leaq	496(%rsp), %rsi
	movl	$1, %edi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB11_84
# BB#66:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i4
	cmpb	$0, 56(%rbp)
	je	.LBB11_68
# BB#67:
	movb	67(%rbp), %al
	jmp	.LBB11_69
.LBB11_68:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB11_69:                              # %_Z8print_nlv.exit6
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB11_84
# BB#70:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i7
	cmpb	$0, 56(%rbx)
	je	.LBB11_72
# BB#71:
	movb	67(%rbx), %al
	jmp	.LBB11_73
.LBB11_72:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB11_73:                              # %_Z8print_nlv.exit9
	movsbl	%al, %esi
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.25(%rip), %rsi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpl	$100, %r12d
	jg	.LBB11_75
# BB#74:
	movslq	%r13d, %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	leaq	.L.str.26(%rip), %rax
	movb	(%rcx,%rax), %bl
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbp
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbp, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movb	%bl, 336(%rsp)
	leaq	336(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rbx
	leaq	.L.str.27(%rip), %rsi
	movl	$12, %edx
	jmp	.LBB11_76
.LBB11_75:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.29(%rip), %rsi
	movl	$13, %edx
.LBB11_76:                              # %.preheader
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.28(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	_ZL6player(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	leaq	336(%rsp), %rbx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	xorl	%eax, %eax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_30:
	movl	%r15d, %r13d
	jmp	.LBB11_61
.LBB11_83:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.62(%rip), %rsi
	movl	$21, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	callq	abort@PLT
.LBB11_82:
	leaq	.L.str.92(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi(%rip), %rcx
	movl	$115, %edx
	callq	__assert_fail@PLT
.LBB11_59:
	leal	3(%r15), %edi
	leaq	.L.str.20(%rip), %rsi
	movl	%r15d, %edx
	callq	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
.LBB11_13:                              # %.loopexit12
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	.L.str.58(%rip), %rdi
	movl	$527, %esi              # imm = 0x20F
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB11_78:
	callq	abort@PLT
.LBB11_84:
	callq	_ZSt16__throw_bad_castv@PLT
.LBB11_79:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.15(%rip), %rsi
	movl	$24, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$5, %edi
	callq	exit@PLT
.LBB11_80:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$58, %edx
	callq	__assert_fail@PLT
.LBB11_81:
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$59, %edx
	callq	__assert_fail@PLT
.LBB11_53:
	leal	1(%r15), %edi
	leaq	.L.str.21(%rip), %rsi
	movl	%r15d, %edx
	callq	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL11fork_playerPcP6player,@function
_ZL11fork_playerPcP6player:             # @_ZL11fork_playerPcP6player
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp112:
	.cfi_def_cfa_offset 48
.Ltmp113:
	.cfi_offset %rbx, -24
.Ltmp114:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	16(%rsp), %rdi
	callq	pipe@PLT
	testl	%eax, %eax
	je	.LBB12_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB12_9
.LBB12_2:
	leaq	8(%rsp), %rdi
	callq	pipe@PLT
	testl	%eax, %eax
	je	.LBB12_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB12_9
.LBB12_4:
	callq	fork@PLT
	movl	%eax, (%rbx)
	movl	(%rbx), %eax
	cmpl	$-1, %eax
	je	.LBB12_10
# BB#5:
	cmpl	$0, (%rbx)
	je	.LBB12_11
# BB#6:
	movl	(%rbx), %edi
	movl	$19, %esi
	callq	kill@PLT
	testl	%eax, %eax
	js	.LBB12_7
# BB#8:
	movl	20(%rsp), %edi
	callq	close@PLT
	movl	8(%rsp), %edi
	callq	close@PLT
	movl	16(%rsp), %eax
	movl	%eax, 4(%rbx)
	movl	12(%rsp), %eax
	movl	%eax, 8(%rbx)
	movb	$1, %al
	jmp	.LBB12_9
.LBB12_7:
	xorl	%eax, %eax
.LBB12_9:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB12_10:
	callq	abort@PLT
.LBB12_11:
	movl	16(%rsp), %edi
	callq	close@PLT
	movl	12(%rsp), %edi
	callq	close@PLT
	movl	8(%rsp), %edi
	movl	$3, %esi
	callq	dup2@PLT
	movl	20(%rsp), %edi
	movl	$4, %esi
	callq	dup2@PLT
	movl	$2, %edi
	callq	close@PLT
	movl	$1, %edi
	movl	$2, %esi
	callq	dup2@PLT
	leaq	_ZL9mem_limit(%rip), %rsi
	movl	$9, %edi
	callq	setrlimit@PLT
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	execl@PLT
	leaq	.L.str.90(%rip), %rdi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf@PLT
	leaq	.L.str.91(%rip), %rdi
	callq	perror@PLT
	movl	$5, %edi
	callq	_exit@PLT
.Lfunc_end12:
	.size	_ZL11fork_playerPcP6player, .Lfunc_end12-_ZL11fork_playerPcP6player
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_,@function
_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_: # @_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp119:
	.cfi_def_cfa_offset 48
.Ltmp120:
	.cfi_offset %rbx, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movl	%edi, %r14d
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbp
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbp, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	testq	%rbx, %rbx
	jne	.LBB13_2
# BB#1:
	movq	(%rbp), %rax
	movq	-24(%rax), %rax
	leaq	(%rbp,%rax), %rdi
	movl	32(%rbp,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.LBB13_3
.LBB13_2:
	movq	%rbx, %rdi
	callq	strlen@PLT
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LBB13_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movl	%r15d, %esi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%r14d, %edi
	callq	exit@PLT
.Lfunc_end13:
	.size	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_, .Lfunc_end13-_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
	.cfi_endproc

	.section	.text._ZN10game_state3setEiic,"axG",@progbits,_ZN10game_state3setEiic,comdat
	.weak	_ZN10game_state3setEiic
	.align	16, 0x90
	.type	_ZN10game_state3setEiic,@function
_ZN10game_state3setEiic:                # @_ZN10game_state3setEiic
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp124:
	.cfi_def_cfa_offset 16
	leal	5(%rdx), %eax
	cmpl	$46, %ecx
	je	.LBB14_13
# BB#1:
	cmpl	$87, %ecx
	je	.LBB14_8
# BB#2:
	cmpl	$66, %ecx
	jne	.LBB14_18
# BB#3:
	cmpl	%esi, %eax
	jle	.LBB14_24
# BB#4:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jle	.LBB14_24
# BB#5:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB14_24
# BB#6:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB14_24
# BB#7:                                 # %_ZN10game_state3setEii9FieldType.exit
	movslq	%edx, %rax
	movslq	%esi, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$1, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB14_13:
	cmpl	%esi, %eax
	jle	.LBB14_24
# BB#14:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jle	.LBB14_24
# BB#15:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB14_24
# BB#16:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB14_24
# BB#17:                                # %_ZN10game_state3setEii9FieldType.exit12
	movslq	%edx, %rax
	movslq	%esi, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$3, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB14_8:
	cmpl	%esi, %eax
	jle	.LBB14_24
# BB#9:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jle	.LBB14_24
# BB#10:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB14_24
# BB#11:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB14_24
# BB#12:                                # %_ZN10game_state3setEii9FieldType.exit6
	movslq	%edx, %rax
	movslq	%esi, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$2, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB14_18:
	cmpl	%esi, %eax
	jle	.LBB14_24
# BB#19:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jle	.LBB14_24
# BB#20:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB14_24
# BB#21:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB14_24
# BB#22:                                # %_ZN10game_state3setEii9FieldType.exit18
	movslq	%edx, %rax
	movslq	%esi, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$4, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB14_24:                              # %_ZL15check_valid_posii.exit.thread.i
	leaq	.L.str.57(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType(%rip), %rcx
	movl	$148, %edx
	callq	__assert_fail@PLT
.Lfunc_end14:
	.size	_ZN10game_state3setEiic, .Lfunc_end14-_ZN10game_state3setEiic
	.cfi_endproc

	.text
	.align	16, 0x90
	.type	_ZL13alarm_handleriP9siginfo_tPv,@function
_ZL13alarm_handleriP9siginfo_tPv:       # @_ZL13alarm_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp126:
	.cfi_def_cfa_offset 48
.Ltmp127:
	.cfi_offset %rbx, -16
	cmpl	$14, %edi
	jne	.LBB15_7
# BB#1:
	movq	_ZL14current_player(%rip), %rax
	testq	%rax, %rax
	je	.LBB15_8
# BB#2:
	cmpb	$0, 12(%rax)
	je	.LBB15_3
# BB#5:
	movb	$1, 13(%rax)
	movl	(%rax), %edi
	movl	$9, %esi
	addq	$32, %rsp
	popq	%rbx
	jmp	kill@PLT                # TAILCALL
.LBB15_3:
	movb	$1, 12(%rax)
	movl	(%rax), %edi
	movl	$24, %esi
	callq	kill@PLT
	movq	_ZL9cpu_limit.1(%rip), %rax
	subq	_ZL9cpu_limit.0(%rip), %rax
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	cmoveq	%rcx, %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	leaq	(%rsp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB15_4
# BB#6:
	addq	$32, %rsp
	popq	%rbx
	retq
.LBB15_7:
	leaq	.L.str.59(%rip), %rdi
	leaq	.L.str.60(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv(%rip), %rcx
	movl	$80, %edx
	callq	__assert_fail@PLT
.LBB15_8:
	leaq	.L.str.61(%rip), %rdi
	leaq	.L.str.60(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv(%rip), %rcx
	movl	$83, %edx
	callq	__assert_fail@PLT
.LBB15_4:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.62(%rip), %rsi
	movl	$21, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	callq	abort@PLT
.Lfunc_end15:
	.size	_ZL13alarm_handleriP9siginfo_tPv, .Lfunc_end15-_ZL13alarm_handleriP9siginfo_tPv
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL13child_handleriP9siginfo_tPv,@function
_ZL13child_handleriP9siginfo_tPv:       # @_ZL13child_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp131:
	.cfi_def_cfa_offset 48
.Ltmp132:
	.cfi_offset %rbx, -32
.Ltmp133:
	.cfi_offset %r14, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	8(%rbx), %eax
	addl	$-5, %eax
	cmpl	$2, %eax
	jae	.LBB16_1
# BB#20:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB16_1:
	movl	24(%rbx), %ebp
	cmpl	$15, %ebp
	je	.LBB16_13
# BB#2:
	cmpl	$11, %ebp
	je	.LBB16_4
# BB#3:
	cmpl	$9, %ebp
	je	.LBB16_4
# BB#19:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.63(%rip), %rsi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.70(%rip), %rsi
	movl	$2, %edx
	movq	%rax, %rdi
	jmp	.LBB16_18
.LBB16_13:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB16_21
# BB#14:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5
	cmpb	$0, 56(%rbx)
	je	.LBB16_16
# BB#15:
	movb	67(%rbx), %al
	jmp	.LBB16_17
.LBB16_16:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB16_17:                              # %_Z8print_nlv.exit7
	movsbl	%al, %esi
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.69(%rip), %rsi
	movl	$39, %edx
	movq	%rbx, %rdi
.LBB16_18:                              # %_Z8print_nlv.exit7
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT # TAILCALL
.LBB16_4:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %rbp
	testq	%rbp, %rbp
	jne	.LBB16_5
.LBB16_21:
	callq	_ZSt16__throw_bad_castv@PLT
.LBB16_5:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 56(%rbp)
	jne	.LBB16_6
# BB#7:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
	jmp	.LBB16_8
.LBB16_6:
	movb	67(%rbp), %al
.LBB16_8:                               # %_Z8print_nlv.exit
	movsbl	%al, %esi
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movl	8(%rbx), %eax
	movl	24(%rbx), %esi
	decl	%eax
	leaq	.L.str.75(%rip), %r9
	cmpl	$3, %eax
	movq	%r9, %rcx
	ja	.LBB16_10
# BB#9:                                 # %switch.lookup.i
	cltq
	leaq	.Lswitch.table.99(%rip), %rcx
	movq	(%rcx,%rax,8), %rcx
.LBB16_10:                              # %_ZL11si_code_stri.exit
	leal	-1(%rsi), %eax
	cmpl	$16, %eax
	ja	.LBB16_12
# BB#11:                                # %switch.lookup.i4
	cltq
	leaq	.Lswitch.table.100(%rip), %rdx
	movq	(%rdx,%rax,8), %r9
.LBB16_12:                              # %_ZL10signal_stri.exit
	leaq	.L.str.66(%rip), %rax
	movq	%rax, (%rsp)
	leaq	.L.str.63(%rip), %rdi
	leaq	.L.str.64(%rip), %rdx
	leaq	.L.str.65(%rip), %r8
	callq	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_@PLT
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %r14
	movl	$6, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.67(%rip), %rsi
	movl	$22, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	_ZL6player(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	leaq	12(%rsp), %rbp
	xorl	%edx, %edx
	movq	%rbp, %rsi
	callq	waitpid@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	callq	waitpid@PLT
	movl	$6, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.68(%rip), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end16:
	.size	_ZL13child_handleriP9siginfo_tPv, .Lfunc_end16-_ZL13child_handleriP9siginfo_tPv
	.cfi_endproc

	.section	.text._Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,"axG",@progbits,_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,comdat
	.weak	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.align	16, 0x90
	.type	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,@function
_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_:   # @_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp138:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp141:
	.cfi_def_cfa_offset 80
.Ltmp142:
	.cfi_offset %rbx, -56
.Ltmp143:
	.cfi_offset %r12, -48
.Ltmp144:
	.cfi_offset %r13, -40
.Ltmp145:
	.cfi_offset %r14, -32
.Ltmp146:
	.cfi_offset %r15, -24
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rcx, %r13
	movq	%rdx, %rbp
	movl	%esi, %ebx
	movq	%rdi, %r14
	movq	80(%rsp), %r12
	movq	_ZSt4cerr@GOTPCREL(%rip), %r15
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	testq	%r14, %r14
	je	.LBB17_1
# BB#2:
	movq	%r14, %rdi
	callq	strlen@PLT
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.LBB17_3
.LBB17_1:
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	leaq	(%r15,%rax), %rdi
	movl	32(%r15,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movl	%ebx, %esi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	testq	%rbp, %rbp
	movq	16(%rsp), %r15          # 8-byte Reload
	je	.LBB17_4
# BB#5:
	movq	%rbp, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.LBB17_6
.LBB17_4:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_6:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
	movq	8(%rsp), %rbp           # 8-byte Reload
	testq	%r13, %r13
	je	.LBB17_7
# BB#8:
	movq	%r13, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.LBB17_9
.LBB17_7:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_9:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
	testq	%rbp, %rbp
	je	.LBB17_10
# BB#11:
	movq	%rbp, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.LBB17_12
.LBB17_10:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_12:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
	testq	%r15, %r15
	je	.LBB17_13
# BB#14:
	movq	%r15, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.LBB17_15
.LBB17_13:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_15:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
	testq	%r12, %r12
	je	.LBB17_16
# BB#17:
	movq	%r12, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT # TAILCALL
.LBB17_16:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	%rbx, %rdi
	addq	%rax, %rdi
	movl	32(%rbx,%rax), %esi
	orl	$1, %esi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT # TAILCALL
.Lfunc_end17:
	.size	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_, .Lfunc_end17-_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_mcp_S.cc,@function
_GLOBAL__sub_I_mcp_S.cc:                # @_GLOBAL__sub_I_mcp_S.cc
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbx, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	__dso_handle@GOTPCREL(%rip), %rdx
	movq	%rbx, %rsi
	popq	%rbx
	jmp	__cxa_atexit@PLT        # TAILCALL
.Lfunc_end18:
	.size	_GLOBAL__sub_I_mcp_S.cc, .Lfunc_end18-_GLOBAL__sub_I_mcp_S.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cnt == 64"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./abalone.cc"
	.size	.L.str.1, 13

	.type	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state,@object # @__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state
.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state:
	.asciz	"bool deserialize_state(int, game_state *)"
	.size	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state, 42

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"buf[63] == '\\0'"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Read "
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	", len "
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid length of move: "
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\n"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unexpected EOF in move at "
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"init"
	.size	.L.str.8, 5

	.type	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc,@object # @__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc
.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc:
	.asciz	"void initialize_state(game_state *, const char *)"
	.size	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"strlen(init) == 63"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"W: "
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	", B: "
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"B:BBBBBBBBBBB..BBB.............................WWW..WWWWWWWWWWW"
	.size	.L.str.12, 64

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Master Control Program\n"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"dT:t:m:M:s:h"
	.size	.L.str.14, 13

	.type	_ZL5debug,@object       # @_ZL5debug
	.local	_ZL5debug
	.comm	_ZL5debug,1,1
	.type	_ZL9mem_limit,@object   # @_ZL9mem_limit
	.data
	.align	8
_ZL9mem_limit:
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.size	_ZL9mem_limit, 16

	.type	_ZL6player,@object      # @_ZL6player
	.local	_ZL6player
	.comm	_ZL6player,32,16
	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"Unable to fork players.\n"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"["
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"] P"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"'s turn.\n"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"State: "
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"No move from player "
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Invalid move from player "
	.size	.L.str.21, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"P"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	" moves.\n"
	.size	.L.str.23, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"End of Line.\n"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"BW"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	" wins after "
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	" turns.\n"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"A draw after "
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"str"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"./board.h"
	.size	.L.str.31, 10

	.type	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc,@object # @__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc
.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc:
	.asciz	"void game_state::toString(char *) const"
	.size	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc, 40

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"i == 64"
	.size	.L.str.32, 8

	.type	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc,@object # @__PRETTY_FUNCTION__._ZN10game_state5setupEPKc
.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc:
	.asciz	"void game_state::setup(const char *)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc, 37

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"strlen(str) == 63"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"str[1] == ':'"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Unknown player type in '%s'\n"
	.size	.L.str.35, 29

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"i == 63"
	.size	.L.str.36, 8

	.type	_ZZNK9game_move8toStringEPcE3row,@object # @_ZZNK9game_move8toStringEPcE3row
	.section	.rodata._ZZNK9game_move8toStringEPcE3row,"aG",@progbits,_ZZNK9game_move8toStringEPcE3row,comdat
	.weak	_ZZNK9game_move8toStringEPcE3row
_ZZNK9game_move8toStringEPcE3row:
	.asciz	"-ABCDEFGHI"
	.size	_ZZNK9game_move8toStringEPcE3row, 11

	.type	_ZZNK9game_move8toStringEPcE4diag,@object # @_ZZNK9game_move8toStringEPcE4diag
	.section	.rodata._ZZNK9game_move8toStringEPcE4diag,"aG",@progbits,_ZZNK9game_move8toStringEPcE4diag,comdat
	.weak	_ZZNK9game_move8toStringEPcE4diag
_ZZNK9game_move8toStringEPcE4diag:
	.asciz	"-123456789"
	.size	_ZZNK9game_move8toStringEPcE4diag, 11

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"Invalid move: source invalid\n"
	.size	.L.str.37, 30

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Invalid move: source2 invalid\n"
	.size	.L.str.38, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Invalid move: missing comma after source\n"
	.size	.L.str.39, 42

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Invalid move: Unexpected char: "
	.size	.L.str.40, 32

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Invalid move: destination invalid\n"
	.size	.L.str.41, 35

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Invalid move: Unexpected chars at end\n"
	.size	.L.str.42, 39

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"i >= 1 && i <= 9"
	.size	.L.str.43, 17

	.type	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc,@object # @__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc
.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc:
	.asciz	"static idx_t game_move::rowToNum(char)"
	.size	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc, 39

	.type	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc,@object # @__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc
.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc:
	.asciz	"static idx_t game_move::diagToNum(char)"
	.size	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc, 40

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"<MCP> "
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"ABCDEFGHI"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	" "
	.size	.L.str.46, 2

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"  "
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"   "
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	" - "
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"    "
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/ \\ "
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\\ / "
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"               1   2   3   4   5"
	.size	.L.str.53, 33

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"\033[31;1mB\033[0m"
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\033[32;1mW\033[0m"
	.size	.L.str.55, 13

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"o"
	.size	.L.str.56, 2

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"check_valid_pos(row, diagonal)"
	.size	.L.str.57, 31

	.type	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType,@object # @__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType
.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType:
	.asciz	"void game_state::set(idx_t, idx_t, FieldType)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType, 46

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Usage: mcp [-s state_string] [-t soft-player-time] [-m soft-player-mem]\n           [-T hard-player-time] [-M hard-player-mem]\n           [-d]\n           [-h]\n           player1 player2\n state_string - 63 character string representing an initial field state\n                (this is the string the MCP prints before every move.)\n player-time  - CPU time per turn in seconds\n player-mem   - Memory limit per player in megabytes\n -d           - turn on debugging, program won't exit on invalid move\n -h           - Show this help\n"
	.size	.L.str.58, 528

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"signum == SIGALRM"
	.size	.L.str.59, 18

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"./mcp-shared.h"
	.size	.L.str.60, 15

	.type	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv,@object # @__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv
.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv:
	.asciz	"void alarm_handler(int, siginfo_t *, void *)"
	.size	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv, 45

	.type	_ZL14current_player,@object # @_ZL14current_player
	.local	_ZL14current_player
	.comm	_ZL14current_player,8,8
	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"p"
	.size	.L.str.61, 2

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Failed to set timer.\n"
	.size	.L.str.62, 22

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Child signal: "
	.size	.L.str.63, 15

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	" ("
	.size	.L.str.64, 3

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	","
	.size	.L.str.65, 2

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	")\n"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"killing the other one\n"
	.size	.L.str.67, 23

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"exiting\n"
	.size	.L.str.68, 9

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"\033[32mCHILD terminated successfully\033[0m\n"
	.size	.L.str.69, 40

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"!\n"
	.size	.L.str.70, 3

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"exited"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"killed"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"coredumped"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"trapped"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"unknown"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"SIGHUP"
	.size	.L.str.76, 7

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"SIGINT"
	.size	.L.str.77, 7

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"SIGILL"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"SIGABRT"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"SIGSEGV"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"SIGFPE"
	.size	.L.str.81, 7

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"SIGPIPE"
	.size	.L.str.82, 8

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"SIGKILL"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"SIGTERM"
	.size	.L.str.84, 8

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"SIGALRM"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"SIGUSR1"
	.size	.L.str.86, 8

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"SIGUSR2"
	.size	.L.str.87, 8

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"SIGBUS"
	.size	.L.str.88, 7

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"SIGCHLD"
	.size	.L.str.89, 8

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"EXECL '%s' FAILED\n"
	.size	.L.str.90, 19

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"execl"
	.size	.L.str.91, 6

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"( p == 0) or (p == 1)"
	.size	.L.str.92, 22

	.type	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi,@object # @__PRETTY_FUNCTION__._ZN10game_state6playerEi
.L__PRETTY_FUNCTION__._ZN10game_state6playerEi:
	.asciz	"void game_state::player(idx_t)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi, 31

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"time()"
	.size	.L.str.93, 7

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"localtime()"
	.size	.L.str.94, 12

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"%H:%M:%S"
	.size	.L.str.95, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Move is: "
	.size	.L.str.97, 10

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Player timeout!\n"
	.size	.L.str.98, 17

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_mcp_S.cc
	.type	_ZL9cpu_limit.0,@object # @_ZL9cpu_limit.0
	.data
	.align	8
_ZL9cpu_limit.0:
	.quad	-1                      # 0xffffffffffffffff
	.size	_ZL9cpu_limit.0, 8

	.type	_ZL9cpu_limit.1,@object # @_ZL9cpu_limit.1
	.align	8
_ZL9cpu_limit.1:
	.quad	-1                      # 0xffffffffffffffff
	.size	_ZL9cpu_limit.1, 8

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Final state:"
	.size	.Lstr, 13

	.type	.Lswitch.table,@object  # @switch.table
	.section	.data.rel.ro,"aw",@progbits
	.align	16
.Lswitch.table:
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.46
	.size	.Lswitch.table, 32

	.type	.Lswitch.table.99,@object # @switch.table.99
	.align	16
.Lswitch.table.99:
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.size	.Lswitch.table.99, 32

	.type	.Lswitch.table.100,@object # @switch.table.100
	.align	16
.Lswitch.table.100:
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.75
	.quad	.L.str.78
	.quad	.L.str.75
	.quad	.L.str.79
	.quad	.L.str.88
	.quad	.L.str.81
	.quad	.L.str.83
	.quad	.L.str.86
	.quad	.L.str.80
	.quad	.L.str.87
	.quad	.L.str.82
	.quad	.L.str.85
	.quad	.L.str.84
	.quad	.L.str.75
	.quad	.L.str.89
	.size	.Lswitch.table.100, 136


	.ident	"clang version 3.8.1-17 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
#endif
#endif
#ifdef __APPLE__
#ifdef __i386__
	.text
	.file	"mcp-S.cc"
	.globl	_Z15serialize_stateiPK10game_state
	.align	16, 0x90
	.type	_Z15serialize_stateiPK10game_state,@function
_Z15serialize_stateiPK10game_state:     # @_Z15serialize_stateiPK10game_state
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp0:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp1:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp3:
	.cfi_def_cfa_offset 20
	subl	$92, %esp
.Ltmp4:
	.cfi_def_cfa_offset 112
.Ltmp5:
	.cfi_offset %esi, -20
.Ltmp6:
	.cfi_offset %edi, -16
.Ltmp7:
	.cfi_offset %ebx, -12
.Ltmp8:
	.cfi_offset %ebp, -8
	calll	.L0$pb
.Ltmp9:
	.cfi_adjust_cfa_offset 4
.L0$pb:
	popl	%eax
.Ltmp10:
	.cfi_adjust_cfa_offset -4
.Ltmp11:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp11-.L0$pb), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movzbl	(%eax), %edx
	movb	$66, %cl
	cmpl	$1, %edx
	je	.LBB0_2
# BB#1:                                 # %select.false
	movb	$87, %cl
.LBB0_2:                                # %select.end
	movb	%cl, 28(%esp)
	movb	$58, 29(%esp)
	movl	$2, %esi
	movl	$1, %ebp
	.align	16, 0x90
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	leal	-4(%ebp), %edx
	cmpl	$6, %ebp
	movl	$1, %ecx
	cmovll	%ecx, %edx
	cmpl	$9, %edx
	jg	.LBB0_4
# BB#5:                                 #   in Loop: Header=BB0_3 Depth=1
	leal	5(%ebp), %edi
	cmpl	%edi, %edx
	jge	.LBB0_6
# BB#7:                                 # %.lr.ph.split.us.preheader.i
                                        #   in Loop: Header=BB0_3 Depth=1
	leal	(%eax,%edx), %ebx
	movl	%eax, 24(%esp)          # 4-byte Spill
	decl	%edx
	.align	16, 0x90
.LBB0_8:                                # %.lr.ph.split.us.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	6(%edx), %eax
	movl	$24, %ecx
	cmpl	%ebp, %eax
	jle	.LBB0_11
# BB#9:                                 # %.lr.ph.split.us.i
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$8, %edx
	ja	.LBB0_11
# BB#10:                                #   in Loop: Header=BB0_8 Depth=2
	movb	(%ebx), %al
	decb	%al
	movzbl	%al, %ecx
	shll	$3, %ecx
.LBB0_11:                               # %_ZNK10game_state4getCEii.exit.us.i
                                        #   in Loop: Header=BB0_8 Depth=2
	movl	$539907906, %eax        # imm = 0x202E5742
	shrl	%cl, %eax
	movb	%al, 28(%esp,%esi)
	incl	%esi
	leal	2(%edx), %ecx
	cmpl	$9, %ecx
	jg	.LBB0_13
# BB#12:                                # %_ZNK10game_state4getCEii.exit.us.i
                                        #   in Loop: Header=BB0_8 Depth=2
	incl	%edx
	incl	%ebx
	cmpl	%edi, %ecx
	jl	.LBB0_8
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, 24(%esp)          # 4-byte Spill
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, 24(%esp)          # 4-byte Spill
.LBB0_13:                               # %.critedge.i
                                        #   in Loop: Header=BB0_3 Depth=1
	incl	%ebp
	movl	24(%esp), %eax          # 4-byte Reload
	addl	$9, %eax
	cmpl	$10, %ebp
	jne	.LBB0_3
# BB#14:
	movb	$0, 28(%esp,%esi)
	cmpl	$63, %esi
	jne	.LBB0_16
# BB#15:                                # %_ZNK10game_state8toStringEPc.exit
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	112(%esp), %eax
	movl	%eax, (%esp)
	movl	$64, 8(%esp)
	movl	20(%esp), %ebx          # 4-byte Reload
	calll	write@PLT
	movl	$64, %eax
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB0_16:
	movl	20(%esp), %ebx          # 4-byte Reload
	leal	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$197, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end0:
	.size	_Z15serialize_stateiPK10game_state, .Lfunc_end0-_Z15serialize_stateiPK10game_state
	.cfi_endproc

	.globl	_Z17deserialize_stateiP10game_state
	.align	16, 0x90
	.type	_Z17deserialize_stateiP10game_state,@function
_Z17deserialize_stateiP10game_state:    # @_Z17deserialize_stateiP10game_state
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp12:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp13:
	.cfi_def_cfa_offset 12
	subl	$84, %esp
.Ltmp14:
	.cfi_def_cfa_offset 96
.Ltmp15:
	.cfi_offset %esi, -12
.Ltmp16:
	.cfi_offset %ebx, -8
	calll	.L1$pb
.Ltmp17:
	.cfi_adjust_cfa_offset 4
.L1$pb:
	popl	%ebx
.Ltmp18:
	.cfi_adjust_cfa_offset -4
.Ltmp19:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp19-.L1$pb), %ebx
	movl	96(%esp), %eax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%esp)
	movaps	%xmm0, 48(%esp)
	movaps	%xmm0, 32(%esp)
	movaps	%xmm0, 16(%esp)
	leal	16(%esp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	$64, 8(%esp)
	calll	read@PLT
	cmpl	$64, %eax
	jne	.LBB1_3
# BB#1:
	cmpb	$0, 79(%esp)
	jne	.LBB1_4
# BB#2:
	movl	100(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	$1, %eax
	addl	$84, %esp
	popl	%esi
	popl	%ebx
	retl
.LBB1_3:
	leal	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$19, 8(%esp)
	calll	__assert_fail@PLT
.LBB1_4:
	leal	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$20, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end1:
	.size	_Z17deserialize_stateiP10game_state, .Lfunc_end1-_Z17deserialize_stateiP10game_state
	.cfi_endproc

	.section	.text._ZN10game_state5setupEPKc,"axG",@progbits,_ZN10game_state5setupEPKc,comdat
	.weak	_ZN10game_state5setupEPKc
	.align	16, 0x90
	.type	_ZN10game_state5setupEPKc,@function
_ZN10game_state5setupEPKc:              # @_ZN10game_state5setupEPKc
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	.L2$pb
.L2$pb:
	popl	%ebx
.Ltmp20:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp20-.L2$pb), %ebx
	movl	52(%esp), %esi
	testl	%esi, %esi
	je	.LBB2_18
# BB#1:
	movl	%esi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB2_19
# BB#2:
	movzbl	1(%esi), %eax
	cmpl	$58, %eax
	jne	.LBB2_20
# BB#3:
	movl	48(%esp), %ecx
	movsbl	(%esi), %eax
	cmpl	$87, %eax
	je	.LBB2_12
# BB#4:
	cmpl	$66, %eax
	jne	.LBB2_13
# BB#5:
	movb	$1, (%ecx)
	jmp	.LBB2_6
.LBB2_12:
	movb	$2, (%ecx)
.LBB2_6:                                # %.preheader
	movl	$2, %esi
	movl	$1, %ebp
	.align	16, 0x90
.LBB2_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	leal	-4(%ebp), %eax
	cmpl	$6, %ebp
	movl	$1, %edi
	cmovgel	%eax, %edi
	cmpl	$9, %edi
	jg	.LBB2_9
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	leal	5(%ebp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	cmpl	%eax, %edi
	jge	.LBB2_9
	.align	16, 0x90
.LBB2_15:                               # %.lr.ph
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	52(%esp), %eax
	movsbl	(%eax,%esi), %eax
	incl	%esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, %esi
	calll	_ZN10game_state3setEiic@PLT
	incl	%edi
	cmpl	$9, %edi
	jg	.LBB2_16
# BB#14:                                # %.lr.ph
                                        #   in Loop: Header=BB2_15 Depth=2
	cmpl	20(%esp), %edi          # 4-byte Folded Reload
	movl	%esi, %ecx
	movl	24(%esp), %esi          # 4-byte Reload
	jl	.LBB2_15
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_7 Depth=1
	movl	%esi, %ecx
	movl	24(%esp), %esi          # 4-byte Reload
.LBB2_9:                                # %.critedge
                                        #   in Loop: Header=BB2_7 Depth=1
	incl	%ebp
	cmpl	$10, %ebp
	jne	.LBB2_7
# BB#10:
	cmpl	$63, %esi
	jne	.LBB2_11
# BB#17:
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB2_18:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$203, 8(%esp)
	calll	__assert_fail@PLT
.LBB2_19:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$204, 8(%esp)
	calll	__assert_fail@PLT
.LBB2_20:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$205, 8(%esp)
	calll	__assert_fail@PLT
.LBB2_13:
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	printf@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.LBB2_11:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$227, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end2:
	.size	_ZN10game_state5setupEPKc, .Lfunc_end2-_ZN10game_state5setupEPKc

	.text
	.globl	_Z14serialize_moveiPK9game_move
	.align	16, 0x90
	.type	_Z14serialize_moveiPK9game_move,@function
_Z14serialize_moveiPK9game_move:        # @_Z14serialize_moveiPK9game_move
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp21:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp22:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp24:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %esi, -20
.Ltmp27:
	.cfi_offset %edi, -16
.Ltmp28:
	.cfi_offset %ebx, -12
.Ltmp29:
	.cfi_offset %ebp, -8
	calll	.L3$pb
.Ltmp30:
	.cfi_adjust_cfa_offset 4
.L3$pb:
	popl	%ebx
.Ltmp31:
	.cfi_adjust_cfa_offset -4
.Ltmp32:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp32-.L3$pb), %ebx
	movl	52(%esp), %ebp
	movl	48(%esp), %esi
	movl	4(%ebp), %edx
	movl	_ZZNK9game_move8toStringEPcE3row@GOT(%ebx), %ecx
	movb	(%ecx,%edx), %dl
	movb	%dl, 18(%esp)
	movl	8(%ebp), %edi
	movl	_ZZNK9game_move8toStringEPcE4diag@GOT(%ebx), %edx
	movb	(%edx,%edi), %al
	movb	%al, 19(%esp)
	movl	$2, %edi
	cmpl	$1, (%ebp)
	jne	.LBB3_2
# BB#1:
	movb	$45, 20(%esp)
	movl	12(%ebp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 21(%esp)
	movl	16(%ebp), %eax
	movb	(%edx,%eax), %al
	movb	%al, 22(%esp)
	movl	$5, %edi
.LBB3_2:                                # %_ZNK9game_move8toStringEPc.exit
	movb	$44, 18(%esp,%edi)
	movl	20(%ebp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 19(%esp,%edi)
	movl	24(%ebp), %eax
	movb	(%edx,%eax), %al
	movb	%al, 20(%esp,%edi)
	movb	$0, 21(%esp,%edi)
	leal	18(%esp), %edi
	movl	%edi, (%esp)
	calll	strlen@PLT
	incl	%eax
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	write@PLT
	movl	$1, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end3:
	.size	_Z14serialize_moveiPK9game_move, .Lfunc_end3-_Z14serialize_moveiPK9game_move
	.cfi_endproc

	.globl	_Z16deserialize_moveiP9game_move
	.align	16, 0x90
	.type	_Z16deserialize_moveiP9game_move,@function
_Z16deserialize_moveiP9game_move:       # @_Z16deserialize_moveiP9game_move
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp33:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp34:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp36:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.Ltmp37:
	.cfi_def_cfa_offset 48
.Ltmp38:
	.cfi_offset %esi, -20
.Ltmp39:
	.cfi_offset %edi, -16
.Ltmp40:
	.cfi_offset %ebx, -12
.Ltmp41:
	.cfi_offset %ebp, -8
	calll	.L4$pb
.Ltmp42:
	.cfi_adjust_cfa_offset 4
.L4$pb:
	popl	%ebx
.Ltmp43:
	.cfi_adjust_cfa_offset -4
.Ltmp44:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp44-.L4$pb), %ebx
	movl	48(%esp), %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 24(%esp)
	leal	16(%esp), %ebp
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$10, 8(%esp)
	calll	read@PLT
	movl	%eax, %esi
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cout@GOT(%ebx), %edi
	movl	%edi, (%esp)
	movl	$5, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSolsEi@PLT
	movl	%eax, %edi
	movl	(%edi), %eax
	movl	-12(%eax), %eax
	movl	124(%edi,%eax), %ebp
	testl	%ebp, %ebp
	je	.LBB4_15
# BB#1:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 28(%ebp)
	je	.LBB4_3
# BB#2:
	movb	39(%ebp), %al
	jmp	.LBB4_4
.LBB4_3:
	movl	%ebp, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%ebp), %eax
	movl	%ebp, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB4_4:                                # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	testl	%esi, %esi
	jle	.LBB4_5
# BB#6:
	cmpl	$6, %esi
	je	.LBB4_10
# BB#7:
	cmpl	$9, %esi
	jne	.LBB4_8
.LBB4_10:
	leal	16(%esp), %edi
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, %esi
	cmpl	$5, %esi
	je	.LBB4_13
# BB#11:
	cmpl	$8, %esi
	jne	.LBB4_12
.LBB4_13:
	movl	52(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	_ZN9game_move5setupEPKc@PLT
	jmp	.LBB4_14
.LBB4_5:
	xorl	%eax, %eax
	jmp	.LBB4_14
.LBB4_8:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %edi
	movl	%edi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$24, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSolsEi@PLT
	jmp	.LBB4_9
.LBB4_12:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %edi
	movl	%edi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$26, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSo9_M_insertImEERSoT_@PLT
.LBB4_9:
	leal	.L.str.6@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	xorl	%eax, %eax
.LBB4_14:
	movzbl	%al, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB4_15:
	calll	_ZSt16__throw_bad_castv@PLT
.Lfunc_end4:
	.size	_Z16deserialize_moveiP9game_move, .Lfunc_end4-_Z16deserialize_moveiP9game_move
	.cfi_endproc

	.section	.text._ZN9game_move5setupEPKc,"axG",@progbits,_ZN9game_move5setupEPKc,comdat
	.weak	_ZN9game_move5setupEPKc
	.align	16, 0x90
	.type	_ZN9game_move5setupEPKc,@function
_ZN9game_move5setupEPKc:                # @_ZN9game_move5setupEPKc
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp45:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp46:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp48:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.Ltmp49:
	.cfi_def_cfa_offset 48
.Ltmp50:
	.cfi_offset %esi, -20
.Ltmp51:
	.cfi_offset %edi, -16
.Ltmp52:
	.cfi_offset %ebx, -12
.Ltmp53:
	.cfi_offset %ebp, -8
	calll	.L5$pb
.Ltmp54:
	.cfi_adjust_cfa_offset 4
.L5$pb:
	popl	%ebx
.Ltmp55:
	.cfi_adjust_cfa_offset -4
.Ltmp56:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp56-.L5$pb), %ebx
	movl	52(%esp), %esi
	movsbl	(%esi), %eax
	movl	%eax, (%esp)
	calll	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_37
# BB#1:
	leal	-64(%eax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_37
# BB#2:                                 # %_ZN9game_move8rowToNumEc.exit
	movl	48(%esp), %edi
	movl	%ecx, 4(%edi)
	movsbl	1(%esi), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_38
# BB#3:                                 # %_ZN9game_move8rowToNumEc.exit
	leal	-48(%ecx), %edx
	cmpl	$10, %edx
	jge	.LBB5_38
# BB#4:                                 # %_ZN9game_move9diagToNumEc.exit
	movl	%edx, 8(%edi)
	leal	-21(%eax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_8
# BB#5:                                 # %_ZN9game_move9diagToNumEc.exit
	leal	-11(%eax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_8
# BB#6:                                 # %_ZN9game_move9diagToNumEc.exit
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_8
# BB#7:                                 # %_ZN9game_move9diagToNumEc.exit
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_8
# BB#9:
	movzbl	2(%esi), %ecx
	cmpl	$45, %ecx
	je	.LBB5_21
# BB#10:
	movzbl	%cl, %eax
	cmpl	$44, %eax
	jne	.LBB5_32
# BB#11:
	movl	$0, (%edi)
	movl	$3, %ebp
	jmp	.LBB5_12
.LBB5_8:                                # %_ZL15check_valid_posii.exit.thread
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$29, 8(%esp)
	jmp	.LBB5_35
.LBB5_21:
	movl	$1, (%edi)
	movsbl	3(%esi), %eax
	movl	%eax, (%esp)
	calll	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_37
# BB#22:
	leal	-64(%eax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_37
# BB#23:                                # %_ZN9game_move8rowToNumEc.exit5
	movl	%ecx, 12(%edi)
	movsbl	4(%esi), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_38
# BB#24:                                # %_ZN9game_move8rowToNumEc.exit5
	leal	-48(%ecx), %edx
	cmpl	$10, %edx
	jge	.LBB5_38
# BB#25:                                # %_ZN9game_move9diagToNumEc.exit7
	movl	%edx, 16(%edi)
	leal	-21(%eax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_29
# BB#26:                                # %_ZN9game_move9diagToNumEc.exit7
	leal	-11(%eax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_29
# BB#27:                                # %_ZN9game_move9diagToNumEc.exit7
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_29
# BB#28:                                # %_ZN9game_move9diagToNumEc.exit7
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_29
# BB#30:
	movzbl	5(%esi), %eax
	movl	$6, %ebp
	cmpl	$44, %eax
	jne	.LBB5_31
.LBB5_12:
	movsbl	(%esi,%ebp), %eax
	movl	%eax, (%esp)
	calll	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_37
# BB#13:
	leal	-64(%eax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_37
# BB#14:                                # %_ZN9game_move8rowToNumEc.exit14
	movl	%ecx, 20(%edi)
	movsbl	1(%ebp,%esi), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_38
# BB#15:                                # %_ZN9game_move8rowToNumEc.exit14
	leal	-48(%ecx), %edx
	cmpl	$10, %edx
	jge	.LBB5_38
# BB#16:                                # %_ZN9game_move9diagToNumEc.exit16
	movl	%edx, 24(%edi)
	leal	-21(%eax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_20
# BB#17:                                # %_ZN9game_move9diagToNumEc.exit16
	leal	-11(%eax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_20
# BB#18:                                # %_ZN9game_move9diagToNumEc.exit16
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_20
# BB#19:                                # %_ZN9game_move9diagToNumEc.exit16
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_20
# BB#33:
	movb	$1, %al
	cmpb	$0, 2(%ebp,%esi)
	je	.LBB5_36
# BB#34:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$38, 8(%esp)
	jmp	.LBB5_35
.LBB5_32:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	movl	%ecx, %edi
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.40@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$31, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%edi, %eax
	movb	%al, 27(%esp)
	leal	27(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.6@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	jmp	.LBB5_35
.LBB5_20:                               # %_ZL15check_valid_posii.exit20.thread
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$34, 8(%esp)
	jmp	.LBB5_35
.LBB5_29:                               # %_ZL15check_valid_posii.exit11.thread
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$30, 8(%esp)
	jmp	.LBB5_35
.LBB5_31:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$41, 8(%esp)
.LBB5_35:
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	xorl	%eax, %eax
.LBB5_36:
	movzbl	%al, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB5_37:
	leal	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$343, 8(%esp)           # imm = 0x157
	calll	__assert_fail@PLT
.LBB5_38:
	leal	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$350, 8(%esp)           # imm = 0x15E
	calll	__assert_fail@PLT
.Lfunc_end5:
	.size	_ZN9game_move5setupEPKc, .Lfunc_end5-_ZN9game_move5setupEPKc
	.cfi_endproc

	.text
	.globl	_Z16initialize_stateP10game_statePKc
	.align	16, 0x90
	.type	_Z16initialize_stateP10game_statePKc,@function
_Z16initialize_stateP10game_statePKc:   # @_Z16initialize_stateP10game_statePKc
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp57:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp58:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp59:
	.cfi_def_cfa_offset 16
	subl	$16, %esp
.Ltmp60:
	.cfi_def_cfa_offset 32
.Ltmp61:
	.cfi_offset %esi, -16
.Ltmp62:
	.cfi_offset %edi, -12
.Ltmp63:
	.cfi_offset %ebx, -8
	calll	.L6$pb
.Ltmp64:
	.cfi_adjust_cfa_offset 4
.L6$pb:
	popl	%ebx
.Ltmp65:
	.cfi_adjust_cfa_offset -4
.Ltmp66:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp66-.L6$pb), %ebx
	movl	36(%esp), %esi
	testl	%esi, %esi
	je	.LBB6_3
# BB#1:
	movl	%esi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB6_4
# BB#2:
	movl	32(%esp), %edi
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	%edi, (%esp)
	calll	_ZNK10game_state5printEv@PLT
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.LBB6_3:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$58, 8(%esp)
	calll	__assert_fail@PLT
.LBB6_4:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$59, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end6:
	.size	_Z16initialize_stateP10game_statePKc, .Lfunc_end6-_Z16initialize_stateP10game_statePKc
	.cfi_endproc

	.section	.text._ZNK10game_state5printEv,"axG",@progbits,_ZNK10game_state5printEv,comdat
	.weak	_ZNK10game_state5printEv
	.align	16, 0x90
	.type	_ZNK10game_state5printEv,@function
_ZNK10game_state5printEv:               # @_ZNK10game_state5printEv
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp67:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp68:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp70:
	.cfi_def_cfa_offset 20
	subl	$76, %esp
.Ltmp71:
	.cfi_def_cfa_offset 96
.Ltmp72:
	.cfi_offset %esi, -20
.Ltmp73:
	.cfi_offset %edi, -16
.Ltmp74:
	.cfi_offset %ebx, -12
.Ltmp75:
	.cfi_offset %ebp, -8
	calll	.L7$pb
.Ltmp76:
	.cfi_adjust_cfa_offset 4
.L7$pb:
	popl	%ebx
.Ltmp77:
	.cfi_adjust_cfa_offset -4
.Ltmp78:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp78-.L7$pb), %ebx
	movl	96(%esp), %eax
	leal	73(%eax), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	$9, %esi
	movl	_ZSt4cout@GOT(%ebx), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	leal	.L.str.46@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	leal	.L.str.47@GOTOFF(%ebx), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	leal	.L.str.48@GOTOFF(%ebx), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	.align	16, 0x90
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_42 Depth 2
                                        #     Child Loop BB7_33 Depth 2
                                        #     Child Loop BB7_28 Depth 2
	movl	%esi, 68(%esp)          # 4-byte Spill
	movb	.L.str.45@GOTOFF-1(%ebx,%esi), %al
	movb	%al, 75(%esp)
	leal	75(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	24(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$5, %eax
	subl	%esi, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	leal	1(%ecx), %ebp
	movl	$9, %edx
	subl	%ecx, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	cmpl	$5, %esi
	movl	$1, %eax
	cmovlel	%eax, %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	$9, %eax
	cmovll	%edx, %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	testl	%ecx, %ecx
	movl	%ecx, %esi
	movl	40(%esp), %ebp          # 4-byte Reload
	jle	.LBB7_2
	.align	16, 0x90
.LBB7_40:                               # %.lr.ph
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%esi
	jne	.LBB7_40
.LBB7_2:                                # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	68(%esp), %ebp          # 4-byte Reload
	leal	-1(%ebp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	5(%ebp), %edx
	movl	48(%esp), %esi          # 4-byte Reload
	leal	5(%esi), %ecx
	movb	$4, %al
	cmpl	%ebp, %ecx
	jle	.LBB7_3
# BB#9:                                 # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	%esi, %edx
	jle	.LBB7_3
# BB#10:                                # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	%edx, 56(%esp)          # 4-byte Spill
	leal	-1(%esi), %ecx
	cmpl	$8, %ecx
	movl	52(%esp), %edx          # 4-byte Reload
	ja	.LBB7_12
# BB#11:                                #   in Loop: Header=BB7_1 Depth=1
	leal	(%edx,%edx,8), %eax
	addl	96(%esp), %eax
	movb	1(%ecx,%eax), %al
	jmp	.LBB7_12
	.align	16, 0x90
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
.LBB7_12:                               # %_ZNK10game_state3getEii.exit
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	%edx, 52(%esp)          # 4-byte Spill
	decb	%al
	movsbl	%al, %eax
	movl	.Lswitch.table@GOTOFF(%ebx,%eax,4), %esi
	movl	%esi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	48(%esp), %ecx          # 4-byte Reload
	cmpl	64(%esp), %ecx          # 4-byte Folded Reload
	jge	.LBB7_19
# BB#13:                                # %.lr.ph25.split.us.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	32(%esp), %eax          # 4-byte Reload
	leal	(%eax,%ecx), %esi
	.align	16, 0x90
.LBB7_14:                               # %.lr.ph25.split.us
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	.L.str.49@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$3, 8(%esp)
	movl	%ecx, %edi
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%edi, %edx
	leal	6(%edx), %edi
	movb	$4, %al
	cmpl	%ebp, %edi
	jle	.LBB7_18
# BB#15:                                # %.lr.ph25.split.us
                                        #   in Loop: Header=BB7_14 Depth=2
	leal	1(%edx), %ecx
	cmpl	%ecx, 56(%esp)          # 4-byte Folded Reload
	jle	.LBB7_18
# BB#16:                                # %.lr.ph25.split.us
                                        #   in Loop: Header=BB7_14 Depth=2
	cmpl	$8, %edx
	ja	.LBB7_18
# BB#17:                                #   in Loop: Header=BB7_14 Depth=2
	movb	(%esi), %al
.LBB7_18:                               # %_ZNK10game_state3getEii.exit9.us
                                        #   in Loop: Header=BB7_14 Depth=2
	decb	%al
	movsbl	%al, %eax
	movl	.Lswitch.table@GOTOFF(%ebx,%eax,4), %ebp
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	incl	%esi
	addl	$-5, %edi
	cmpl	64(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, %ecx
	movl	%ebp, %edi
	movl	68(%esp), %ebp          # 4-byte Reload
	jl	.LBB7_14
.LBB7_19:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$4, %ebp
	jg	.LBB7_21
# BB#20:                                #   in Loop: Header=BB7_1 Depth=1
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	28(%esp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSolsEi@PLT
.LBB7_21:                               #   in Loop: Header=BB7_1 Depth=1
	movl	(%edi), %eax
	movl	-12(%eax), %eax
	movl	124(%edi,%eax), %esi
	testl	%esi, %esi
	je	.LBB7_41
# BB#22:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpb	$0, 28(%esi)
	je	.LBB7_24
# BB#23:                                #   in Loop: Header=BB7_1 Depth=1
	movl	%ebp, 68(%esp)          # 4-byte Spill
	movb	39(%esi), %al
	jmp	.LBB7_25
	.align	16, 0x90
.LBB7_24:                               #   in Loop: Header=BB7_1 Depth=1
	movl	%ebp, 68(%esp)          # 4-byte Spill
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB7_25:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit16
                                        #   in Loop: Header=BB7_1 Depth=1
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	leal	.L.str.50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	44(%esp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, %esi
	movl	40(%esp), %ebp          # 4-byte Reload
	jle	.LBB7_26
	.align	16, 0x90
.LBB7_42:                               # %.lr.ph27
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%esi
	jne	.LBB7_42
.LBB7_26:                               # %._crit_edge28
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	68(%esp), %eax          # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB7_30
# BB#27:                                # %.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	64(%esp), %esi          # 4-byte Reload
	movl	44(%esp), %ebp          # 4-byte Reload
	jmp	.LBB7_28
	.align	16, 0x90
.LBB7_29:                               # %.lr.ph33
                                        #   in Loop: Header=BB7_28 Depth=2
	leal	.L.str.51@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	incl	%ebp
.LBB7_28:                               # %.preheader
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %ebp
	jl	.LBB7_29
	jmp	.LBB7_34
	.align	16, 0x90
.LBB7_30:                               #   in Loop: Header=BB7_1 Depth=1
	cmpl	$2, %eax
	movl	64(%esp), %esi          # 4-byte Reload
	jl	.LBB7_34
# BB#31:                                #   in Loop: Header=BB7_1 Depth=1
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	cmpl	$2, %esi
	jl	.LBB7_34
# BB#32:                                # %.lr.ph31.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	decl	%esi
	.align	16, 0x90
.LBB7_33:                               # %.lr.ph31
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	.L.str.52@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%esi
	jne	.LBB7_33
	.align	16, 0x90
.LBB7_34:                               # %.loopexit
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	(%edi), %eax
	movl	-12(%eax), %eax
	movl	124(%edi,%eax), %esi
	testl	%esi, %esi
	je	.LBB7_43
# BB#35:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpb	$0, 28(%esi)
	je	.LBB7_37
# BB#36:                                #   in Loop: Header=BB7_1 Depth=1
	movb	39(%esi), %al
	jmp	.LBB7_38
	.align	16, 0x90
.LBB7_37:                               #   in Loop: Header=BB7_1 Depth=1
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB7_38:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	68(%esp), %esi          # 4-byte Reload
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	addl	$-9, 32(%esp)           # 4-byte Folded Spill
	cmpl	$1, %esi
	movl	52(%esp), %esi          # 4-byte Reload
	jg	.LBB7_1
# BB#4:
	leal	.L.str.53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$32, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	(%edi), %eax
	movl	-12(%eax), %eax
	movl	124(%edi,%eax), %esi
	testl	%esi, %esi
	je	.LBB7_39
# BB#5:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 28(%esi)
	je	.LBB7_7
# BB#6:
	movb	39(%esi), %al
	jmp	.LBB7_8
.LBB7_7:
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB7_8:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB7_41:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB7_43:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB7_39:
	calll	_ZSt16__throw_bad_castv@PLT
.Lfunc_end7:
	.size	_ZNK10game_state5printEv, .Lfunc_end7-_ZNK10game_state5printEv
	.cfi_endproc

	.text
	.globl	_Z14is_final_statePK10game_state
	.align	16, 0x90
	.type	_Z14is_final_statePK10game_state,@function
_Z14is_final_statePK10game_state:       # @_Z14is_final_statePK10game_state
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp79:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp80:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp82:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.Ltmp83:
	.cfi_def_cfa_offset 48
.Ltmp84:
	.cfi_offset %esi, -20
.Ltmp85:
	.cfi_offset %edi, -16
.Ltmp86:
	.cfi_offset %ebx, -12
.Ltmp87:
	.cfi_offset %ebp, -8
	calll	.L8$pb
.Ltmp88:
	.cfi_adjust_cfa_offset 4
.L8$pb:
	popl	%ebx
.Ltmp89:
	.cfi_adjust_cfa_offset -4
.Ltmp90:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp90-.L8$pb), %ebx
	movl	48(%esp), %edi
	leal	1(%edi), %ebp
	addl	$82, %edi
	xorl	%esi, %esi
	movl	%ebp, %eax
	.align	16, 0x90
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%esi, %ecx
	movzbl	1(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	2(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	3(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	4(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	5(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	6(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	7(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	8(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %esi
	addl	%edx, %esi
	addl	$9, %eax
	cmpl	%edi, %eax
	jne	.LBB8_1
# BB#2:                                 # %_ZNK10game_state5countE9FieldType.exit.preheader
	movl	%edi, 24(%esp)          # 4-byte Spill
	xorl	%edi, %edi
	movl	%ebp, %eax
	.align	16, 0x90
.LBB8_3:                                # %_ZNK10game_state5countE9FieldType.exit
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edi, %ecx
	movzbl	1(%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	2(%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	3(%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	4(%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	5(%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	6(%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	7(%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	8(%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %edi
	addl	%edx, %edi
	addl	$9, %eax
	cmpl	24(%esp), %eax          # 4-byte Folded Reload
	jne	.LBB8_3
# BB#4:                                 # %_ZNK10game_state5countE9FieldType.exit36
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%eax, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, 4(%esp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, (%esp)
	calll	_ZNSo9_M_insertImEERSoT_@PLT
	movl	%eax, %esi
	leal	.L.str.11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$5, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSo9_M_insertImEERSoT_@PLT
	leal	.L.str.6@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	movl	24(%esp), %edi          # 4-byte Reload
	.align	16, 0x90
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	1(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	2(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	3(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	4(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	5(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	6(%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	7(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %esi
	addl	%edx, %esi
	movzbl	8(%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%esi, %ecx
	addl	$9, %eax
	cmpl	%edi, %eax
	jne	.LBB8_5
# BB#6:                                 # %_ZNK10game_state5countE9FieldType.exit24
	movb	$1, %al
	cmpl	$9, %ecx
	jb	.LBB8_10
# BB#7:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_8:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%ebp), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	1(%ebp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	2(%ebp), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	3(%ebp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	4(%ebp), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	5(%ebp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	6(%ebp), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	7(%ebp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	addl	%ecx, %edx
	movzbl	8(%ebp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	addl	$9, %ebp
	cmpl	%edi, %ebp
	jne	.LBB8_8
# BB#9:                                 # %_ZNK10game_state5countE9FieldType.exit12
	cmpl	$9, %eax
	setb	%al
.LBB8_10:
	movzbl	%al, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end8:
	.size	_Z14is_final_statePK10game_state, .Lfunc_end8-_Z14is_final_statePK10game_state
	.cfi_endproc

	.globl	_Z10move_validPK10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10move_validPK10game_statePK9game_move,@function
_Z10move_validPK10game_statePK9game_move: # @_Z10move_validPK10game_statePK9game_move
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	76(%esp), %esi
	movl	20(%esi), %ecx
	movl	4(%esi), %ebp
	movl	%ecx, %eax
	subl	%ebp, %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	leal	1(%eax), %edx
	xorl	%eax, %eax
	cmpl	$2, %edx
	ja	.LBB9_77
# BB#1:
	movl	8(%esi), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	movl	24(%esi), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	subl	%edi, %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	incl	%edx
	cmpl	$2, %edx
	ja	.LBB9_77
# BB#2:
	movl	%ecx, %eax
	subl	%ebp, %eax
	movl	%eax, (%esp)            # 4-byte Spill
	setne	%dl
	movl	40(%esp), %eax          # 4-byte Reload
	subl	8(%esp), %eax           # 4-byte Folded Reload
	movl	%eax, 36(%esp)          # 4-byte Spill
	setne	%bl
	movl	12(%esp), %eax          # 4-byte Reload
	cmpl	%eax, 48(%esp)          # 4-byte Folded Reload
	sete	%dh
	movb	%dl, %bh
	orb	%bl, %bh
	xorl	%eax, %eax
	movzbl	%bh, %edi
	cmpl	$1, %edi
	jne	.LBB9_77
# BB#3:
	andb	%bl, %dl
	xorb	$1, %dl
	orb	%dl, %dh
	je	.LBB9_77
# BB#4:
	movl	72(%esp), %edi
	movl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB9_44
# BB#5:
	cmpl	$1, %eax
	jne	.LBB9_76
# BB#6:
	movl	12(%esi), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	subl	%ebp, %edx
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	cmpl	$2, %eax
	jg	.LBB9_76
# BB#7:
	movl	16(%esi), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	subl	8(%esp), %esi           # 4-byte Folded Reload
	movl	%esi, %eax
	negl	%eax
	cmovll	%esi, %eax
	cmpl	$2, %eax
	jg	.LBB9_76
# BB#8:
	cmpl	%ebp, 44(%esp)          # 4-byte Folded Reload
	setne	%bl
	movl	36(%esp), %eax          # 4-byte Reload
	cmpl	8(%esp), %eax           # 4-byte Folded Reload
	setne	%al
	cmpl	%esi, %edx
	sete	%bh
	movb	%bl, %ah
	orb	%al, %ah
	movzbl	%ah, %edi
	cmpl	$1, %edi
	movl	72(%esp), %edi
	jne	.LBB9_76
# BB#9:
	andb	%al, %bl
	xorb	$1, %bl
	orb	%bl, %bh
	je	.LBB9_76
# BB#10:
	imull	48(%esp), %esi          # 4-byte Folded Reload
	imull	12(%esp), %edx          # 4-byte Folded Reload
	cmpl	%edx, %esi
	je	.LBB9_76
# BB#11:
	movl	40(%esp), %eax          # 4-byte Reload
	leal	5(%eax), %eax
	cmpl	%ecx, %eax
	jle	.LBB9_76
# BB#12:
	leal	5(%ecx), %eax
	cmpl	40(%esp), %eax          # 4-byte Folded Reload
	jle	.LBB9_76
# BB#13:
	decl	%ecx
	cmpl	$8, %ecx
	ja	.LBB9_76
# BB#14:
	movl	40(%esp), %eax          # 4-byte Reload
	decl	%eax
	cmpl	$8, %eax
	movl	%eax, %edx
	ja	.LBB9_76
# BB#15:                                # %_ZNK10game_state3getEii.exit
	leal	(%ecx,%ecx,8), %eax
	addl	%edi, %eax
	movzbl	1(%edx,%eax), %eax
	cmpl	$3, %eax
	jne	.LBB9_76
# BB#16:
	movl	48(%esp), %eax          # 4-byte Reload
	movl	44(%esp), %ecx          # 4-byte Reload
	leal	(%ecx,%eax), %eax
	movl	12(%esp), %ecx          # 4-byte Reload
	movl	36(%esp), %edx          # 4-byte Reload
	leal	5(%edx,%ecx), %edx
	cmpl	%eax, %edx
	jle	.LBB9_76
# BB#17:
	movl	12(%esp), %eax          # 4-byte Reload
	movl	36(%esp), %ecx          # 4-byte Reload
	leal	(%ecx,%eax), %eax
	movl	48(%esp), %ecx          # 4-byte Reload
	movl	44(%esp), %edx          # 4-byte Reload
	leal	5(%edx,%ecx), %edx
	cmpl	%eax, %edx
	jle	.LBB9_76
# BB#18:
	movl	48(%esp), %eax          # 4-byte Reload
	movl	44(%esp), %ecx          # 4-byte Reload
	leal	-1(%ecx,%eax), %eax
	cmpl	$8, %eax
	ja	.LBB9_76
# BB#19:
	movl	12(%esp), %ecx          # 4-byte Reload
	movl	36(%esp), %edx          # 4-byte Reload
	leal	-1(%edx,%ecx), %edx
	cmpl	$8, %edx
	ja	.LBB9_76
# BB#20:                                # %_ZNK10game_state3getEii.exit87
	leal	(%eax,%eax,8), %eax
	addl	%edi, %eax
	movzbl	1(%edx,%eax), %eax
	cmpl	$3, %eax
	jne	.LBB9_76
# BB#21:
	movl	44(%esp), %eax          # 4-byte Reload
	leal	(%eax,%ebp), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movl	48(%esp), %eax          # 4-byte Reload
	leal	(%ebx,%eax), %eax
	movl	8(%esp), %ecx           # 4-byte Reload
	movl	36(%esp), %edx          # 4-byte Reload
	leal	(%edx,%ecx), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	movl	12(%esp), %ecx          # 4-byte Reload
	leal	5(%esi,%ecx), %edx
	cmpl	%eax, %edx
	jle	.LBB9_76
# BB#22:
	movl	12(%esp), %eax          # 4-byte Reload
	leal	(%esi,%eax), %eax
	movl	48(%esp), %ecx          # 4-byte Reload
	leal	5(%ebx,%ecx), %edx
	cmpl	%eax, %edx
	jle	.LBB9_76
# BB#23:
	movl	48(%esp), %eax          # 4-byte Reload
	leal	-1(%ebx,%eax), %eax
	cmpl	$8, %eax
	ja	.LBB9_76
# BB#24:
	movl	12(%esp), %ecx          # 4-byte Reload
	leal	-1(%esi,%ecx), %edx
	cmpl	$8, %edx
	ja	.LBB9_76
# BB#25:                                # %_ZNK10game_state3getEii.exit81
	leal	(%eax,%eax,8), %eax
	addl	%edi, %eax
	movzbl	1(%edx,%eax), %eax
	cmpl	$3, %eax
	jne	.LBB9_76
# BB#26:
	movl	8(%esp), %ecx           # 4-byte Reload
	leal	5(%ecx), %eax
	movb	$4, %dl
	cmpl	%ebp, %eax
	jle	.LBB9_31
# BB#27:
	leal	5(%ebp), %eax
	cmpl	%ecx, %eax
	movl	%ecx, %eax
	jle	.LBB9_31
# BB#28:
	decl	%ebp
	cmpl	$8, %ebp
	ja	.LBB9_31
# BB#29:
	decl	%eax
	cmpl	$8, %eax
	movl	%eax, %ecx
	ja	.LBB9_31
# BB#30:
	leal	(%ebp,%ebp,8), %eax
	addl	%edi, %eax
	movb	1(%ecx,%eax), %dl
.LBB9_31:                               # %_ZNK10game_state3getEii.exit75
	movzbl	(%edi), %eax
	movzbl	%dl, %ecx
	cmpl	%eax, %ecx
	jne	.LBB9_76
# BB#32:
	movl	36(%esp), %eax          # 4-byte Reload
	leal	5(%eax), %eax
	movb	$4, %dl
	cmpl	44(%esp), %eax          # 4-byte Folded Reload
	jle	.LBB9_37
# BB#33:
	movl	44(%esp), %eax          # 4-byte Reload
	leal	5(%eax), %eax
	cmpl	36(%esp), %eax          # 4-byte Folded Reload
	jle	.LBB9_37
# BB#34:
	movl	44(%esp), %eax          # 4-byte Reload
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB9_37
# BB#35:
	movl	36(%esp), %ebp          # 4-byte Reload
	decl	%ebp
	cmpl	$8, %ebp
	ja	.LBB9_37
# BB#36:
	leal	(%eax,%eax,8), %eax
	addl	%edi, %eax
	movb	1(%ebp,%eax), %dl
.LBB9_37:                               # %_ZNK10game_state3getEii.exit69
	movzbl	%dl, %eax
	cmpl	%ecx, %eax
	jne	.LBB9_76
# BB#38:
	leal	5(%esi), %edx
	movb	$4, %al
	cmpl	%ebx, %edx
	jle	.LBB9_43
# BB#39:
	leal	5(%ebx), %edx
	cmpl	%esi, %edx
	jle	.LBB9_43
# BB#40:
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB9_43
# BB#41:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB9_43
# BB#42:
	leal	(%ebx,%ebx,8), %eax
	addl	%eax, %edi
	movb	1(%esi,%edi), %al
.LBB9_43:                               # %_ZNK10game_state3getEii.exit63
	movzbl	%al, %edx
	movb	$1, %al
	cmpl	%ecx, %edx
	jne	.LBB9_76
	jmp	.LBB9_77
.LBB9_44:
	movl	8(%esp), %esi           # 4-byte Reload
	leal	-1(%esi), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	leal	5(%esi), %edx
	movb	$4, %al
	cmpl	%ebp, %edx
	jle	.LBB9_45
# BB#46:
	leal	5(%ebp), %edx
	cmpl	%esi, %edx
	jle	.LBB9_47
# BB#48:
	leal	-1(%ebp), %edx
	movl	%esi, %ebx
	cmpl	$8, %edx
	ja	.LBB9_51
# BB#49:
	cmpl	$8, 20(%esp)            # 4-byte Folded Reload
	ja	.LBB9_51
# BB#50:
	leal	(%edx,%edx,8), %eax
	addl	%edi, %eax
	movl	20(%esp), %edx          # 4-byte Reload
	movb	1(%edx,%eax), %al
	jmp	.LBB9_51
.LBB9_45:
	movl	%esi, %ebx
	jmp	.LBB9_51
.LBB9_47:
	movl	%esi, %ebx
.LBB9_51:                               # %_ZNK10game_state3getEii.exit57
	movzbl	(%edi), %edx
	movzbl	%al, %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	cmpl	%edx, %eax
	jne	.LBB9_76
# BB#52:                                # %.preheader.preheader
	leal	(%ebp,%ebp,8), %eax
	leal	-9(%edi,%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	leal	(%ecx,%ecx,8), %esi
	movl	40(%esp), %ecx          # 4-byte Reload
	addl	%esi, %ecx
	movl	%ebx, %esi
	subl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	xorl	%edi, %edi
	movl	$0, 24(%esp)            # 4-byte Folded Spill
	jmp	.LBB9_53
	.align	16, 0x90
.LBB9_56:                               #   in Loop: Header=BB9_53 Depth=1
	incl	24(%esp)                # 4-byte Folded Spill
	movl	%ebx, %ebp
	addl	48(%esp), %ebp          # 4-byte Folded Reload
	addl	40(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	addl	36(%esp), %edi          # 4-byte Folded Reload
.LBB9_53:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	(%esi,%edi), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	leal	-1(%ebp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	cmpl	$9, %eax
	sbbb	%al, %al
	movl	20(%esp), %ecx          # 4-byte Reload
	leal	(%ecx,%edi), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	cmpl	$9, %ecx
	sbbb	%ah, %ah
	movl	%ebp, %ebx
	movl	%esi, %ebp
	leal	5(%ebx), %esi
	cmpl	%edx, %esi
	setg	%cl
	andb	%al, %cl
	leal	5(%ebp,%edi), %esi
	cmpl	%ebx, %esi
	movl	%ebp, %esi
	setg	%al
	andb	%cl, %al
	andb	%ah, %al
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	movb	$4, %ah
	movl	44(%esp), %edx          # 4-byte Reload
	jne	.LBB9_55
# BB#54:                                #   in Loop: Header=BB9_53 Depth=1
	movb	(%esi,%edx), %ah
.LBB9_55:                               # %_ZNK10game_state3getEii.exit51
                                        #   in Loop: Header=BB9_53 Depth=1
	movzbl	%ah, %ecx
	cmpl	16(%esp), %ecx          # 4-byte Folded Reload
	je	.LBB9_56
# BB#57:
	movl	24(%esp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	movl	%ebx, %ebp
	movl	32(%esp), %ebx          # 4-byte Reload
	je	.LBB9_76
# BB#58:
	cmpl	$3, %ecx
	jg	.LBB9_76
# BB#59:
	cmpl	$1, 16(%esp)            # 4-byte Folded Reload
	sete	%ah
	testb	%al, %al
	movl	4(%esp), %ecx           # 4-byte Reload
	je	.LBB9_60
# BB#61:                                # %_ZNK10game_state3getEii.exit45.preheader
	incb	%ah
	movl	28(%esp), %edx          # 4-byte Reload
	leal	-1(%edx), %esi
	leal	-1(%ebp), %edi
	movzbl	%ah, %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	%ecx, %ebx
	movb	$1, %al
	movl	%eax, 40(%esp)          # 4-byte Spill
.LBB9_62:                               # %_ZNK10game_state3getEii.exit45
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %edx
	leal	(%ebx,%ebx,8), %eax
	addl	72(%esp), %eax
	movl	44(%esp), %esi          # 4-byte Reload
	movzbl	1(%esi,%eax), %eax
	cmpl	20(%esp), %eax          # 4-byte Folded Reload
	jne	.LBB9_63
# BB#64:                                #   in Loop: Header=BB9_62 Depth=1
	movl	%ebp, %ebx
	decl	24(%esp)                # 4-byte Folded Spill
	movl	36(%esp), %esi          # 4-byte Reload
	leal	6(%esi,%edx), %eax
	movl	(%esp), %ecx            # 4-byte Reload
	leal	1(%ecx,%edi), %ebp
	movl	$0, 40(%esp)            # 4-byte Folded Spill
	cmpl	%ebp, %eax
	leal	(%ecx,%edi), %ebp
	leal	(%esi,%edx), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	jle	.LBB9_65
# BB#66:                                #   in Loop: Header=BB9_62 Depth=1
	leal	1(%esi,%edx), %eax
	leal	6(%ecx,%edi), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_65
# BB#67:                                #   in Loop: Header=BB9_62 Depth=1
	movl	%ebp, %ecx
	cmpl	$8, %ecx
	ja	.LBB9_68
# BB#69:                                #   in Loop: Header=BB9_62 Depth=1
	movl	48(%esp), %eax          # 4-byte Reload
	movl	%ebx, %ebp
	leal	-1(%ebp,%eax), %ebx
	addl	%eax, %ebp
	movl	12(%esp), %eax          # 4-byte Reload
	movl	28(%esp), %edx          # 4-byte Reload
	leal	-1(%edx,%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	addl	%eax, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	cmpl	$9, %edx
	movl	%ecx, %edi
	movl	%edx, %esi
	movl	$0, %eax
	jb	.LBB9_62
	jmp	.LBB9_70
.LBB9_60:
	movb	$1, %al
	movl	%eax, 40(%esp)          # 4-byte Spill
	xorl	%eax, %eax
	movl	%ebx, %edx
	jmp	.LBB9_70
.LBB9_63:
	movb	$1, %al
	movl	%esi, %edx
	movl	%ebx, %ecx
	jmp	.LBB9_70
.LBB9_65:
	xorl	%eax, %eax
	movl	%ebp, %ecx
	movl	32(%esp), %edx          # 4-byte Reload
.LBB9_70:                               # %_ZNK10game_state3getEii.exit45.thread
	movl	%eax, %edi
	movl	%ecx, %eax
	cmpl	$0, 24(%esp)            # 4-byte Folded Reload
	movl	72(%esp), %esi
	jle	.LBB9_76
# BB#71:
	movl	%edi, %ecx
	testb	%cl, %cl
	je	.LBB9_72
# BB#73:                                # %_ZNK10game_state3getEii.exit39
	leal	(%eax,%eax,8), %eax
	addl	%eax, %esi
	movzbl	1(%edx,%esi), %ecx
	movb	$1, %al
	cmpl	$3, %ecx
	je	.LBB9_77
# BB#74:
	movzbl	%cl, %eax
	cmpl	$4, %eax
	setne	%al
	jmp	.LBB9_75
.LBB9_72:
	xorl	%eax, %eax
.LBB9_75:                               # %_ZNK10game_state3getEii.exit33
	movl	40(%esp), %ecx          # 4-byte Reload
	orb	%al, %cl
	movb	$1, %al
	testb	$1, %cl
	je	.LBB9_77
.LBB9_76:                               # %.thread92
	xorl	%eax, %eax
.LBB9_77:
	movzbl	%al, %eax
	addl	$52, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB9_68:
	xorl	%eax, %eax
	movl	32(%esp), %edx          # 4-byte Reload
	jmp	.LBB9_70
.Lfunc_end9:
	.size	_Z10move_validPK10game_statePK9game_move, .Lfunc_end9-_Z10move_validPK10game_statePK9game_move

	.globl	_Z10apply_moveP10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10apply_moveP10game_statePK9game_move,@function
_Z10apply_moveP10game_statePK9game_move: # @_Z10apply_moveP10game_statePK9game_move
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	.L10$pb
.L10$pb:
	popl	%ebx
.Ltmp91:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp91-.L10$pb), %ebx
	movl	84(%esp), %esi
	movl	80(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_Z10move_validPK10game_statePK9game_move@PLT
	testb	%al, %al
	je	.LBB10_1
# BB#2:
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	20(%esi), %ebx
	movl	(%esi), %eax
	movl	4(%esi), %ebp
	movl	%ebx, %ecx
	subl	%ebp, %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	24(%esi), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	8(%esi), %edi
	subl	%edi, %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	cmpl	$1, %eax
	movb	$1, %dl
	je	.LBB10_12
# BB#3:
	testl	%eax, %eax
	jne	.LBB10_36
# BB#4:                                 # %.preheader.preheader
	leal	(%ebp,%ebp,8), %eax
	movl	80(%esp), %ecx
	leal	-9(%ecx,%eax), %esi
	leal	(%ebx,%ebx,8), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	addl	%edx, %ecx
	subl	%edi, %ecx
	subl	%eax, %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	leal	-1(%edi), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movb	$3, %dl
	xorl	%eax, %eax
	.align	16, 0x90
.LBB10_5:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	5(%edi,%eax), %ebx
	cmpl	%ebp, %ebx
	jle	.LBB10_11
# BB#6:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	leal	5(%ebp), %ebx
	leal	(%edi,%eax), %ecx
	cmpl	%ecx, %ebx
	jle	.LBB10_11
# BB#7:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	leal	-1(%ebp), %ecx
	cmpl	$8, %ecx
	ja	.LBB10_11
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	44(%esp), %ecx          # 4-byte Reload
	leal	(%ecx,%eax), %ecx
	cmpl	$8, %ecx
	ja	.LBB10_11
# BB#9:                                 # %_ZNK10game_state3getEii.exit50
                                        #   in Loop: Header=BB10_5 Depth=1
	movzbl	(%edi,%esi), %ebx
	cmpl	$4, %ebx
	je	.LBB10_11
# BB#10:                                #   in Loop: Header=BB10_5 Depth=1
	movb	%dl, (%edi,%esi)
	addl	48(%esp), %ebp          # 4-byte Folded Reload
	addl	52(%esp), %esi          # 4-byte Folded Reload
	addl	56(%esp), %eax          # 4-byte Folded Reload
	movzbl	%bl, %ecx
	cmpl	$3, %ecx
	movb	%bl, %dl
	jne	.LBB10_5
.LBB10_11:
	movb	$1, %dl
	jmp	.LBB10_36
.LBB10_1:
	xorl	%edx, %edx
	jmp	.LBB10_36
.LBB10_12:
	leal	-1(%ebp), %ecx
	cmpl	$9, %ecx
	sbbb	%al, %al
	leal	-1(%edi), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	cmpl	$9, %edx
	sbbb	%dl, %dl
	movb	%dl, 40(%esp)           # 1-byte Spill
	leal	5(%ebp), %edx
	cmpl	%edi, %edx
	setg	%dl
	andb	%al, %dl
	leal	5(%edi), %eax
	cmpl	%ebp, %eax
	setg	%al
	andb	%dl, %al
	andb	40(%esp), %al           # 1-byte Folded Reload
	movb	%al, 35(%esp)           # 1-byte Spill
	movb	$4, %dl
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB10_14
# BB#13:
	leal	(%ecx,%ecx,8), %eax
	addl	80(%esp), %eax
	movl	36(%esp), %edx          # 4-byte Reload
	movb	1(%edx,%eax), %dl
.LBB10_14:                              # %_ZNK10game_state3getEii.exit
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	leal	5(%ecx), %eax
	cmpl	%ebx, %eax
	jle	.LBB10_37
# BB#15:                                # %_ZNK10game_state3getEii.exit
	leal	5(%ebx), %eax
	cmpl	%ecx, %eax
	jle	.LBB10_37
# BB#16:                                # %_ZNK10game_state3getEii.exit
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB10_37
# BB#17:                                # %_ZNK10game_state3getEii.exit
	decl	%ecx
	cmpl	$9, %ecx
	jae	.LBB10_37
# BB#18:                                # %_ZN10game_state3setEii9FieldType.exit13
	leal	(%ebx,%ebx,8), %eax
	addl	80(%esp), %eax
	movb	%dl, 1(%ecx,%eax)
	movb	%dl, 52(%esp)           # 1-byte Spill
	movl	12(%esi), %ebx
	movl	16(%esi), %ecx
	movl	48(%esp), %esi          # 4-byte Reload
	leal	(%ebx,%esi), %eax
	movl	56(%esp), %edx          # 4-byte Reload
	leal	5(%ecx,%edx), %edx
	cmpl	%eax, %edx
	jle	.LBB10_37
# BB#19:                                # %_ZN10game_state3setEii9FieldType.exit13
	movl	56(%esp), %eax          # 4-byte Reload
	leal	(%ecx,%eax), %eax
	leal	5(%ebx,%esi), %edx
	cmpl	%eax, %edx
	jle	.LBB10_37
# BB#20:                                # %_ZN10game_state3setEii9FieldType.exit13
	leal	-1(%ebx,%esi), %eax
	cmpl	$8, %eax
	ja	.LBB10_37
# BB#21:                                # %_ZN10game_state3setEii9FieldType.exit13
	movl	56(%esp), %edx          # 4-byte Reload
	leal	-1(%ecx,%edx), %edx
	cmpl	$9, %edx
	jae	.LBB10_37
# BB#22:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	(%eax,%eax,8), %eax
	addl	80(%esp), %eax
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movb	52(%esp), %cl           # 1-byte Reload
	movb	%cl, 1(%edx,%eax)
	addl	%ebx, %ebp
	movl	%ebx, 24(%esp)          # 4-byte Spill
	movl	%esi, %eax
	movl	%ebp, %ebx
	shrl	$31, %ebx
	addl	%ebp, %ebx
	sarl	%ebx
	leal	(%ebx,%eax), %esi
	addl	40(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, %ebp
	shrl	$31, %ebp
	addl	%edi, %ebp
	sarl	%ebp
	movl	56(%esp), %ecx          # 4-byte Reload
	leal	5(%ebp,%ecx), %edx
	cmpl	%esi, %edx
	jle	.LBB10_37
# BB#23:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	(%ebp,%ecx), %edi
	leal	5(%ebx,%eax), %edx
	cmpl	%edi, %edx
	jle	.LBB10_37
# BB#24:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	-1(%ebx,%eax), %eax
	cmpl	$8, %eax
	ja	.LBB10_37
# BB#25:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	-1(%ebp,%ecx), %edx
	cmpl	$9, %edx
	jae	.LBB10_37
# BB#26:                                # %_ZN10game_state3setEii9FieldType.exit25
	leal	(%eax,%eax,8), %eax
	movl	80(%esp), %esi
	addl	%esi, %eax
	movb	52(%esp), %cl           # 1-byte Reload
	movb	%cl, 1(%edx,%eax)
	cmpb	$0, 35(%esp)            # 1-byte Folded Reload
	je	.LBB10_37
# BB#27:                                # %_ZN10game_state3setEii9FieldType.exit31
	movl	28(%esp), %eax          # 4-byte Reload
	leal	(%eax,%eax,8), %eax
	addl	%esi, %eax
	movl	36(%esp), %edx          # 4-byte Reload
	movb	$3, 1(%edx,%eax)
	movl	40(%esp), %ecx          # 4-byte Reload
	leal	5(%ecx), %eax
	movl	24(%esp), %edi          # 4-byte Reload
	cmpl	%edi, %eax
	movb	$1, %dl
	jle	.LBB10_37
# BB#28:                                # %_ZN10game_state3setEii9FieldType.exit31
	leal	5(%edi), %eax
	cmpl	%ecx, %eax
	jle	.LBB10_37
# BB#29:                                # %_ZN10game_state3setEii9FieldType.exit31
	decl	%edi
	cmpl	$8, %edi
	ja	.LBB10_37
# BB#30:                                # %_ZN10game_state3setEii9FieldType.exit31
	decl	%ecx
	cmpl	$9, %ecx
	jae	.LBB10_37
# BB#31:                                # %_ZN10game_state3setEii9FieldType.exit37
	leal	(%edi,%edi,8), %eax
	addl	%esi, %eax
	movb	$3, 1(%ecx,%eax)
	leal	5(%ebp), %eax
	cmpl	%ebx, %eax
	jle	.LBB10_37
# BB#32:                                # %_ZN10game_state3setEii9FieldType.exit37
	leal	5(%ebx), %eax
	cmpl	%ebp, %eax
	jle	.LBB10_37
# BB#33:                                # %_ZN10game_state3setEii9FieldType.exit37
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB10_37
# BB#34:                                # %_ZN10game_state3setEii9FieldType.exit37
	decl	%ebp
	cmpl	$9, %ebp
	jae	.LBB10_37
# BB#35:                                # %_ZN10game_state3setEii9FieldType.exit43
	leal	(%ebx,%ebx,8), %eax
	addl	%eax, %esi
	movb	$3, 1(%ebp,%esi)
.LBB10_36:                              # %.thread
	movzbl	%dl, %eax
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB10_37:                              # %_ZL15check_valid_posii.exit.thread.i12
	movl	44(%esp), %ebx          # 4-byte Reload
	leal	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$148, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end10:
	.size	_Z10apply_moveP10game_statePK9game_move, .Lfunc_end10-_Z10apply_moveP10game_statePK9game_move

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp92:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp93:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp95:
	.cfi_def_cfa_offset 20
	subl	$540, %esp              # imm = 0x21C
.Ltmp96:
	.cfi_def_cfa_offset 560
.Ltmp97:
	.cfi_offset %esi, -20
.Ltmp98:
	.cfi_offset %edi, -16
.Ltmp99:
	.cfi_offset %ebx, -12
.Ltmp100:
	.cfi_offset %ebp, -8
	calll	.L11$pb
.Ltmp101:
	.cfi_adjust_cfa_offset 4
.L11$pb:
	popl	%ebx
.Ltmp102:
	.cfi_adjust_cfa_offset -4
.Ltmp103:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp103-.L11$pb), %ebx
	movl	564(%esp), %ebp
	movl	560(%esp), %esi
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	%edi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$23, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.12@GOTOFF(%ebx), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	leal	.L.str.14@GOTOFF(%ebx), %edi
	jmp	.LBB11_1
.LBB11_18:                              #   in Loop: Header=BB11_1 Depth=1
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	shll	$20, %eax
	movl	%eax, _ZL9mem_limit@GOTOFF+4(%ebx)
	.align	16, 0x90
.LBB11_1:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	calll	getopt@PLT
	cmpl	$99, %eax
	jle	.LBB11_2
# BB#9:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$114, %eax
	jg	.LBB11_14
# BB#10:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$100, %eax
	je	.LBB11_80
# BB#11:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$109, %eax
	jne	.LBB11_12
# BB#17:                                #   in Loop: Header=BB11_1 Depth=1
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	shll	$20, %eax
	movl	%eax, _ZL9mem_limit@GOTOFF(%ebx)
	jmp	.LBB11_1
	.align	16, 0x90
.LBB11_2:                               # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$76, %eax
	jle	.LBB11_3
# BB#6:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$77, %eax
	je	.LBB11_18
# BB#7:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$84, %eax
	jne	.LBB11_1
# BB#8:                                 #   in Loop: Header=BB11_1 Depth=1
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	movl	%eax, _ZL9cpu_limit.1@GOTOFF(%ebx)
	jmp	.LBB11_1
	.align	16, 0x90
.LBB11_14:                              # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$115, %eax
	je	.LBB11_19
# BB#15:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$116, %eax
	jne	.LBB11_1
# BB#16:                                #   in Loop: Header=BB11_1 Depth=1
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	movl	%eax, _ZL9cpu_limit.0@GOTOFF(%ebx)
	jmp	.LBB11_1
.LBB11_3:                               # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$-1, %eax
	je	.LBB11_20
# BB#4:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$58, %eax
	je	.LBB11_13
# BB#5:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$63, %eax
	jne	.LBB11_1
	jmp	.LBB11_13
.LBB11_80:                              #   in Loop: Header=BB11_1 Depth=1
	movb	$1, _ZL5debug@GOTOFF(%ebx)
	jmp	.LBB11_1
.LBB11_19:                              #   in Loop: Header=BB11_1 Depth=1
	movl	optarg@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	jmp	.LBB11_1
.LBB11_12:                              # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$104, %eax
	jne	.LBB11_1
	jmp	.LBB11_13
.LBB11_20:
	movl	optind@GOT(%ebx), %edi
	movl	(%edi), %eax
	addl	$2, %eax
	cmpl	%esi, %eax
	jg	.LBB11_13
# BB#21:
	movl	$1, 360(%esp)
	leal	364(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 496(%esp)
	movl	$0, 360(%esp)
	movl	$0, 492(%esp)
	leal	360(%esp), %ebp
	movl	%ebp, 4(%esp)
	movl	$0, 8(%esp)
	movl	$13, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB11_81
# BB#22:
	movl	$0, 216(%esp)
	leal	220(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 352(%esp)
	leal	_ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 216(%esp)
	movl	$268435460, 348(%esp)   # imm = 0x10000004
	leal	216(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$14, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	movl	56(%esp), %esi          # 4-byte Reload
	jne	.LBB11_81
# BB#23:
	movl	$0, 72(%esp)
	leal	76(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 208(%esp)
	leal	_ZL13child_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 72(%esp)
	movl	$268435460, 204(%esp)   # imm = 0x10000004
	leal	72(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$17, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB11_81
# BB#24:                                # %_ZL21setup_signal_handlersv.exit
	movl	(%edi), %eax
	movl	%edi, 64(%esp)          # 4-byte Spill
	movl	564(%esp), %edi
	movl	(%edi,%eax,4), %ecx
	leal	_ZL6player@GOTOFF(%ebx), %edx
	calll	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB11_82
# BB#25:
	movl	64(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	movl	4(%edi,%eax,4), %ecx
	leal	_ZL6player@GOTOFF+16(%ebx), %edx
	calll	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB11_82
# BB#26:
	movl	%ebp, (%esp)
	movl	$82, 8(%esp)
	movl	$4, 4(%esp)
	calll	memset@PLT
	movl	68(%esp), %edi          # 4-byte Reload
	testl	%edi, %edi
	je	.LBB11_83
# BB#27:
	movl	%edi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB11_84
# BB#28:                                # %_Z16initialize_stateP10game_statePKc.exit
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	%ebp, (%esp)
	calll	_ZNK10game_state5printEv@PLT
	movzbl	360(%esp), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	xorl	%edx, %edx
.LBB11_29:                              # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_32 Depth 2
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%ebp, (%esp)
	calll	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	movl	36(%esp), %edi          # 4-byte Reload
	jne	.LBB11_30
# BB#31:                                # %.lr.ph
                                        #   in Loop: Header=BB11_29 Depth=1
	movl	68(%esp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	orl	$1, %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	shll	$4, %eax
	leal	_ZL6player@GOTOFF(%ebx,%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+13(%ebx,%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+12(%ebx,%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+8(%ebx,%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+4(%ebx,%eax), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	.align	16, 0x90
.LBB11_32:                              #   Parent Loop BB11_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, 52(%esp)            # 4-byte Folded Reload
	jne	.LBB11_85
# BB#33:                                #   in Loop: Header=BB11_32 Depth=2
	cmpl	$1, %ecx
	je	.LBB11_36
# BB#34:                                #   in Loop: Header=BB11_32 Depth=2
	testl	%ecx, %ecx
	jne	.LBB11_37
# BB#35:                                #   in Loop: Header=BB11_32 Depth=2
	movb	$1, 360(%esp)
	jmp	.LBB11_38
	.align	16, 0x90
.LBB11_36:                              #   in Loop: Header=BB11_32 Depth=2
	movb	$2, 360(%esp)
	jmp	.LBB11_38
	.align	16, 0x90
.LBB11_37:                              #   in Loop: Header=BB11_32 Depth=2
	movb	$4, 360(%esp)
.LBB11_38:                              # %_ZN10game_state6playerEi.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	%edi, %esi
	leal	512(%esp), %edi
	movl	%edi, (%esp)
	calll	time@PLT
	cmpl	$-1, 512(%esp)
	je	.LBB11_39
.LBB11_40:                              #   in Loop: Header=BB11_32 Depth=2
	movl	%edi, (%esp)
	calll	localtime@PLT
	movl	%eax, %edi
	testl	%edi, %edi
	je	.LBB11_41
.LBB11_42:                              # %_ZL10getTimeStrPcj.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	%edi, 12(%esp)
	leal	.L.str.95@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	216(%esp), %ebp
	movl	%ebp, (%esp)
	movl	$64, 4(%esp)
	calll	strftime@PLT
	movl	%esi, %edi
	movl	%edi, 4(%esp)
	movl	56(%esp), %esi          # 4-byte Reload
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.18@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$9, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$7, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	calll	fflush@PLT
	leal	360(%esp), %ebp
	movl	%ebp, 4(%esp)
	movl	$2, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	movl	64(%esp), %eax          # 4-byte Reload
	movb	$0, (%eax)
	movl	48(%esp), %eax          # 4-byte Reload
	movb	$0, (%eax)
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, _ZL14current_player@GOTOFF(%ebx)
	movl	_ZL9cpu_limit.0@GOTOFF(%ebx), %eax
	movl	$0, 512(%esp)
	movl	$0, 516(%esp)
	cmpl	$-1, %eax
	movl	$0, %ecx
	cmovel	%ecx, %eax
	movl	%eax, 520(%esp)
	movl	$0, 524(%esp)
	leal	512(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB11_43
# BB#45:                                # %_ZL9arm_timerl.exit.i
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	(%ebp), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	leal	360(%esp), %ebp
	js	.LBB11_58
# BB#46:                                #   in Loop: Header=BB11_32 Depth=2
	movl	44(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	64(%esp), %eax          # 4-byte Reload
	cmpb	$0, (%eax)
	jne	.LBB11_57
# BB#47:                                #   in Loop: Header=BB11_32 Depth=2
	movl	40(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	leal	72(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	calll	_Z16deserialize_moveiP9game_move@PLT
	movl	64(%esp), %ecx          # 4-byte Reload
	cmpb	$0, (%ecx)
	je	.LBB11_48
.LBB11_57:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.98@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$16, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
.LBB11_58:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit.thread
                                        #   in Loop: Header=BB11_32 Depth=2
	movzbl	_ZL5debug@GOTOFF(%ebx), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB11_62
# BB#59:                                #   in Loop: Header=BB11_32 Depth=2
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$20, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.6@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
.LBB11_60:                              # %.thread
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	%ebp, (%esp)
	calll	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	movl	68(%esp), %ecx          # 4-byte Reload
	je	.LBB11_32
	jmp	.LBB11_61
.LBB11_48:                              #   in Loop: Header=BB11_32 Depth=2
	testb	%al, %al
	je	.LBB11_58
# BB#49:                                #   in Loop: Header=BB11_32 Depth=2
	movl	60(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$19, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	js	.LBB11_58
# BB#50:                                #   in Loop: Header=BB11_32 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 512(%esp)
	leal	512(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB11_51
# BB#52:                                # %_ZL9arm_timerl.exit2.i
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	$0, _ZL14current_player@GOTOFF(%ebx)
	movl	$0, 504(%esp)
	movl	$0, 500(%esp)
	movw	$0, 508(%esp)
	movl	76(%esp), %ecx
	movl	_ZZNK9game_move8toStringEPcE3row@GOT(%ebx), %eax
	movb	(%eax,%ecx), %cl
	movb	%cl, 500(%esp)
	movl	80(%esp), %edx
	movl	_ZZNK9game_move8toStringEPcE4diag@GOT(%ebx), %ecx
	movb	(%ecx,%edx), %dl
	movb	%dl, 501(%esp)
	movl	$2, %edx
	cmpl	$1, 72(%esp)
	jne	.LBB11_54
# BB#53:                                #   in Loop: Header=BB11_32 Depth=2
	movb	$45, 502(%esp)
	movl	84(%esp), %edx
	movb	(%eax,%edx), %dl
	movb	%dl, 503(%esp)
	movl	88(%esp), %edx
	movb	(%ecx,%edx), %dl
	movb	%dl, 504(%esp)
	movl	$5, %edx
.LBB11_54:                              #   in Loop: Header=BB11_32 Depth=2
	movb	$44, 500(%esp,%edx)
	movl	92(%esp), %edi
	movb	(%eax,%edi), %al
	movb	%al, 501(%esp,%edx)
	movl	96(%esp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 502(%esp,%edx)
	movb	$0, 503(%esp,%edx)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$9, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	500(%esp), %eax
	movl	%eax, %edi
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.6@GOTOFF(%ebx), %edi
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	72(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_Z10apply_moveP10game_statePK9game_move@PLT
	movb	%al, 28(%esp)           # 1-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	cmpb	$0, 28(%esp)            # 1-byte Folded Reload
	jne	.LBB11_63
# BB#55:                                #   in Loop: Header=BB11_32 Depth=2
	leal	.L.str.21@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$25, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movb	_ZL5debug@GOTOFF(%ebx), %al
	andb	$1, %al
	movl	36(%esp), %edi          # 4-byte Reload
	jne	.LBB11_60
	jmp	.LBB11_56
.LBB11_39:                              #   in Loop: Header=BB11_32 Depth=2
	leal	.L.str.93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	jmp	.LBB11_40
.LBB11_41:                              #   in Loop: Header=BB11_32 Depth=2
	leal	.L.str.94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	jmp	.LBB11_42
.LBB11_63:                              #   in Loop: Header=BB11_29 Depth=1
	leal	.L.str.22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	68(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.23@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$8, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$1, %ecx
	subl	%edi, %ecx
	sete	%al
	movzbl	%al, %eax
	movl	32(%esp), %edx          # 4-byte Reload
	addl	%eax, %edx
	cmpl	$101, %edx
	movl	%ecx, %eax
	jl	.LBB11_29
	jmp	.LBB11_64
.LBB11_61:
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
.LBB11_64:                              # %.loopexit
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	%ebp, %edi
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	movl	%esi, %ecx
	movl	124(%ecx,%eax), %esi
	movl	%ecx, %ebp
	testl	%esi, %esi
	je	.LBB11_86
# BB#65:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 28(%esi)
	je	.LBB11_67
# BB#66:
	movl	%edx, 32(%esp)          # 4-byte Spill
	movb	39(%esi), %al
	jmp	.LBB11_68
.LBB11_67:
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB11_68:                              # %_Z8print_nlv.exit
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	leal	.Lstr@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	puts@PLT
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	calll	fflush@PLT
	movl	%edi, 4(%esp)
	movl	$1, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	movl	124(%ebp,%eax), %esi
	testl	%esi, %esi
	je	.LBB11_86
# BB#69:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i4
	cmpb	$0, 28(%esi)
	je	.LBB11_71
# BB#70:
	movb	39(%esi), %al
	jmp	.LBB11_72
.LBB11_71:
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB11_72:                              # %_Z8print_nlv.exit6
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	movl	124(%ebp,%eax), %esi
	testl	%esi, %esi
	je	.LBB11_86
# BB#73:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i7
	cmpb	$0, 28(%esi)
	je	.LBB11_75
# BB#74:
	movb	39(%esi), %al
	jmp	.LBB11_76
.LBB11_75:
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB11_76:                              # %_Z8print_nlv.exit9
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$13, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	32(%esp), %edi          # 4-byte Reload
	cmpl	$100, %edi
	jg	.LBB11_78
# BB#77:
	movl	$1, %eax
	subl	68(%esp), %eax          # 4-byte Folded Reload
	movb	.L.str.26@GOTOFF(%ebx,%eax), %al
	movb	%al, 68(%esp)           # 1-byte Spill
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movb	68(%esp), %al           # 1-byte Reload
	movb	%al, 216(%esp)
	leal	216(%esp), %edi
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%eax, %esi
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$12, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.28@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$8, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB11_79
.LBB11_78:
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$13, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.28@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$8, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	216(%esp), %edi
.LBB11_79:                              # %.preheader
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	xorl	%eax, %eax
	addl	$540, %esp              # imm = 0x21C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB11_30:
	movl	68(%esp), %ecx          # 4-byte Reload
	movl	32(%esp), %edx          # 4-byte Reload
	jmp	.LBB11_64
.LBB11_85:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.92@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$115, 8(%esp)
	calll	__assert_fail@PLT
.LBB11_43:
	movl	%edi, 4(%esp)
.LBB11_44:
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$21, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	calll	abort@PLT
.LBB11_62:
	movl	68(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%esp)
	addl	$3, %ecx
	leal	.L.str.20@GOTOFF(%ebx), %edx
	calll	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
.LBB11_13:                              # %.loopexit12
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	movl	$527, 4(%esp)           # imm = 0x20F
	calll	fwrite@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.LBB11_81:
	calll	abort@PLT
.LBB11_86:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB11_82:
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$24, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$5, (%esp)
	calll	exit@PLT
.LBB11_83:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$58, 8(%esp)
	calll	__assert_fail@PLT
.LBB11_84:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$59, 8(%esp)
	calll	__assert_fail@PLT
.LBB11_51:
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	jmp	.LBB11_44
.LBB11_56:
	movl	68(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%esp)
	incl	%ecx
	movl	28(%esp), %edx          # 4-byte Reload
	calll	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL11fork_playerPcP6player,@function
_ZL11fork_playerPcP6player:             # @_ZL11fork_playerPcP6player
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp104:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp105:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp106:
	.cfi_def_cfa_offset 16
	subl	$32, %esp
.Ltmp107:
	.cfi_def_cfa_offset 48
.Ltmp108:
	.cfi_offset %esi, -16
.Ltmp109:
	.cfi_offset %edi, -12
.Ltmp110:
	.cfi_offset %ebx, -8
	movl	%edx, %edi
	movl	%ecx, %esi
	calll	.L12$pb
.Ltmp111:
	.cfi_adjust_cfa_offset 4
.L12$pb:
	popl	%ebx
.Ltmp112:
	.cfi_adjust_cfa_offset -4
.Ltmp113:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp113-.L12$pb), %ebx
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	calll	pipe@PLT
	testl	%eax, %eax
	je	.LBB12_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB12_9
.LBB12_2:
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	calll	pipe@PLT
	testl	%eax, %eax
	je	.LBB12_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB12_9
.LBB12_4:
	calll	fork@PLT
	movl	%eax, (%edi)
	movl	(%edi), %eax
	cmpl	$-1, %eax
	je	.LBB12_10
# BB#5:
	cmpl	$0, (%edi)
	je	.LBB12_11
# BB#6:
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$19, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	js	.LBB12_7
# BB#8:
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	24(%esp), %eax
	movl	%eax, 4(%edi)
	movl	20(%esp), %eax
	movl	%eax, 8(%edi)
	movb	$1, %al
	jmp	.LBB12_9
.LBB12_7:
	xorl	%eax, %eax
.LBB12_9:
	movzbl	%al, %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.LBB12_10:
	calll	abort@PLT
.LBB12_11:
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	movl	$3, 4(%esp)
	calll	dup2@PLT
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$4, 4(%esp)
	calll	dup2@PLT
	movl	$2, (%esp)
	calll	close@PLT
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	calll	dup2@PLT
	leal	_ZL9mem_limit@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	calll	setrlimit@PLT
	movl	%esi, 4(%esp)
	movl	%esi, (%esp)
	movl	$0, 8(%esp)
	calll	execl@PLT
	movl	%esi, 4(%esp)
	leal	.L.str.90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	printf@PLT
	leal	.L.str.91@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	movl	$5, (%esp)
	calll	_exit@PLT
.Lfunc_end12:
	.size	_ZL11fork_playerPcP6player, .Lfunc_end12-_ZL11fork_playerPcP6player
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_,@function
_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_: # @_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp114:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp115:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp117:
	.cfi_def_cfa_offset 20
	subl	$12, %esp
.Ltmp118:
	.cfi_def_cfa_offset 32
.Ltmp119:
	.cfi_offset %esi, -20
.Ltmp120:
	.cfi_offset %edi, -16
.Ltmp121:
	.cfi_offset %ebx, -12
.Ltmp122:
	.cfi_offset %ebp, -8
	movl	%edx, %edi
	movl	%ecx, %esi
	calll	.L13$pb
.Ltmp123:
	.cfi_adjust_cfa_offset 4
.L13$pb:
	popl	%ebx
.Ltmp124:
	.cfi_adjust_cfa_offset -4
.Ltmp125:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp125-.L13$pb), %ebx
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %ebp
	movl	%ebp, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	testl	%edi, %edi
	jne	.LBB13_2
# BB#1:
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	leal	(%ebp,%eax), %ecx
	movl	20(%ebp,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.LBB13_3
.LBB13_2:
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
.LBB13_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.6@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, (%esp)
	calll	exit@PLT
.Lfunc_end13:
	.size	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_, .Lfunc_end13-_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
	.cfi_endproc

	.section	.text._ZN10game_state3setEiic,"axG",@progbits,_ZN10game_state3setEiic,comdat
	.weak	_ZN10game_state3setEiic
	.align	16, 0x90
	.type	_ZN10game_state3setEiic,@function
_ZN10game_state3setEiic:                # @_ZN10game_state3setEiic
# BB#0:
	pushl	%ebx
	pushl	%esi
	subl	$20, %esp
	calll	.L14$pb
.L14$pb:
	popl	%ebx
.Ltmp126:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp126-.L14$pb), %ebx
	movl	40(%esp), %eax
	movl	36(%esp), %edx
	movl	32(%esp), %ecx
	movsbl	44(%esp), %esi
	cmpl	$46, %esi
	je	.LBB14_13
# BB#1:
	cmpl	$87, %esi
	je	.LBB14_8
# BB#2:
	cmpl	$66, %esi
	jne	.LBB14_18
# BB#3:
	leal	5(%eax), %esi
	cmpl	%edx, %esi
	jle	.LBB14_24
# BB#4:
	leal	5(%edx), %esi
	cmpl	%eax, %esi
	jle	.LBB14_24
# BB#5:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB14_24
# BB#6:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB14_24
# BB#7:                                 # %_ZN10game_state3setEii9FieldType.exit
	leal	(%edx,%edx,8), %edx
	addl	%edx, %ecx
	movb	$1, 1(%eax,%ecx)
	jmp	.LBB14_23
.LBB14_13:
	leal	5(%eax), %esi
	cmpl	%edx, %esi
	jle	.LBB14_24
# BB#14:
	leal	5(%edx), %esi
	cmpl	%eax, %esi
	jle	.LBB14_24
# BB#15:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB14_24
# BB#16:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB14_24
# BB#17:                                # %_ZN10game_state3setEii9FieldType.exit12
	leal	(%edx,%edx,8), %edx
	addl	%edx, %ecx
	movb	$3, 1(%eax,%ecx)
	jmp	.LBB14_23
.LBB14_8:
	leal	5(%eax), %esi
	cmpl	%edx, %esi
	jle	.LBB14_24
# BB#9:
	leal	5(%edx), %esi
	cmpl	%eax, %esi
	jle	.LBB14_24
# BB#10:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB14_24
# BB#11:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB14_24
# BB#12:                                # %_ZN10game_state3setEii9FieldType.exit6
	leal	(%edx,%edx,8), %edx
	addl	%edx, %ecx
	movb	$2, 1(%eax,%ecx)
	jmp	.LBB14_23
.LBB14_18:
	leal	5(%eax), %esi
	cmpl	%edx, %esi
	jle	.LBB14_24
# BB#19:
	leal	5(%edx), %esi
	cmpl	%eax, %esi
	jle	.LBB14_24
# BB#20:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB14_24
# BB#21:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB14_24
# BB#22:                                # %_ZN10game_state3setEii9FieldType.exit18
	leal	(%edx,%edx,8), %edx
	addl	%edx, %ecx
	movb	$4, 1(%eax,%ecx)
.LBB14_23:
	addl	$20, %esp
	popl	%esi
	popl	%ebx
	retl
.LBB14_24:                              # %_ZL15check_valid_posii.exit.thread.i
	leal	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$148, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end14:
	.size	_ZN10game_state3setEiic, .Lfunc_end14-_ZN10game_state3setEiic

	.text
	.align	16, 0x90
	.type	_ZL13alarm_handleriP9siginfo_tPv,@function
_ZL13alarm_handleriP9siginfo_tPv:       # @_ZL13alarm_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp127:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp128:
	.cfi_def_cfa_offset 12
	subl	$36, %esp
.Ltmp129:
	.cfi_def_cfa_offset 48
.Ltmp130:
	.cfi_offset %esi, -12
.Ltmp131:
	.cfi_offset %ebx, -8
	calll	.L15$pb
.Ltmp132:
	.cfi_adjust_cfa_offset 4
.L15$pb:
	popl	%ebx
.Ltmp133:
	.cfi_adjust_cfa_offset -4
.Ltmp134:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp134-.L15$pb), %ebx
	cmpl	$14, 48(%esp)
	jne	.LBB15_7
# BB#1:
	movl	_ZL14current_player@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.LBB15_8
# BB#2:
	cmpb	$0, 12(%eax)
	je	.LBB15_3
# BB#5:
	movb	$1, 13(%eax)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$9, 4(%esp)
	calll	kill@PLT
	jmp	.LBB15_6
.LBB15_3:
	movb	$1, 12(%eax)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$24, 4(%esp)
	calll	kill@PLT
	movl	_ZL9cpu_limit.1@GOTOFF(%ebx), %eax
	subl	_ZL9cpu_limit.0@GOTOFF(%ebx), %eax
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	cmovnel	%eax, %ecx
	movl	%ecx, 24(%esp)
	movl	$0, 28(%esp)
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB15_4
.LBB15_6:
	addl	$36, %esp
	popl	%esi
	popl	%ebx
	retl
.LBB15_7:
	leal	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$80, 8(%esp)
	calll	__assert_fail@PLT
.LBB15_8:
	leal	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.60@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$83, 8(%esp)
	calll	__assert_fail@PLT
.LBB15_4:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$21, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	calll	abort@PLT
.Lfunc_end15:
	.size	_ZL13alarm_handleriP9siginfo_tPv, .Lfunc_end15-_ZL13alarm_handleriP9siginfo_tPv
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL13child_handleriP9siginfo_tPv,@function
_ZL13child_handleriP9siginfo_tPv:       # @_ZL13child_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp135:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp136:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp138:
	.cfi_def_cfa_offset 20
	subl	$44, %esp
.Ltmp139:
	.cfi_def_cfa_offset 64
.Ltmp140:
	.cfi_offset %esi, -20
.Ltmp141:
	.cfi_offset %edi, -16
.Ltmp142:
	.cfi_offset %ebx, -12
.Ltmp143:
	.cfi_offset %ebp, -8
	calll	.L16$pb
.Ltmp144:
	.cfi_adjust_cfa_offset 4
.L16$pb:
	popl	%ebx
.Ltmp145:
	.cfi_adjust_cfa_offset -4
.Ltmp146:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp146-.L16$pb), %ebx
	movl	68(%esp), %edi
	movl	8(%edi), %eax
	addl	$-5, %eax
	cmpl	$2, %eax
	jb	.LBB16_19
# BB#1:
	movl	20(%edi), %esi
	cmpl	$15, %esi
	je	.LBB16_13
# BB#2:
	cmpl	$11, %esi
	je	.LBB16_4
# BB#3:
	cmpl	$9, %esi
	je	.LBB16_4
# BB#21:
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %edi
	movl	%edi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.63@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	$14, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZNSolsEi@PLT
	leal	.L.str.70@GOTOFF(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$2, 8(%esp)
	jmp	.LBB16_18
.LBB16_13:
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	movl	124(%esi,%eax), %edi
	testl	%edi, %edi
	je	.LBB16_20
# BB#14:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5
	cmpb	$0, 28(%edi)
	je	.LBB16_16
# BB#15:
	movb	39(%edi), %al
	jmp	.LBB16_17
.LBB16_16:
	movl	%edi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%edi), %eax
	movl	%edi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB16_17:                              # %_Z8print_nlv.exit7
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.69@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$39, 8(%esp)
.LBB16_18:                              # %_Z8print_nlv.exit7
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
.LBB16_19:
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB16_4:
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	movl	124(%esi,%eax), %ebp
	testl	%ebp, %ebp
	jne	.LBB16_5
.LBB16_20:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB16_5:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 28(%ebp)
	jne	.LBB16_6
# BB#7:
	movl	%ebp, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%ebp), %eax
	movl	%ebp, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
	jmp	.LBB16_8
.LBB16_6:
	movb	39(%ebp), %al
.LBB16_8:                               # %_Z8print_nlv.exit
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	movl	8(%edi), %ebp
	movl	20(%edi), %eax
	leal	-1(%ebp), %ecx
	leal	.L.str.75@GOTOFF(%ebx), %edx
	cmpl	$3, %ecx
	movl	%edx, %ecx
	ja	.LBB16_10
# BB#9:                                 # %switch.lookup.i
	movl	.Lswitch.table.99@GOTOFF-4(%ebx,%ebp,4), %ecx
.LBB16_10:                              # %_ZL11si_code_stri.exit
	leal	-1(%eax), %edi
	cmpl	$16, %edi
	ja	.LBB16_12
# BB#11:                                # %switch.lookup.i4
	movl	.Lswitch.table.100@GOTOFF-4(%ebx,%eax,4), %edx
.LBB16_12:                              # %_ZL10signal_stri.exit
	leal	.L.str.66@GOTOFF(%ebx), %edi
	movl	%edi, 24(%esp)
	movl	%edx, 20(%esp)
	leal	.L.str.65@GOTOFF(%ebx), %edx
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	leal	.L.str.64@GOTOFF(%ebx), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.L.str.63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_@PLT
	leal	.L.str.44@GOTOFF(%ebx), %edi
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.67@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$22, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	leal	40(%esp), %ebp
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	.L.str.68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	$8, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.Lfunc_end16:
	.size	_ZL13child_handleriP9siginfo_tPv, .Lfunc_end16-_ZL13child_handleriP9siginfo_tPv
	.cfi_endproc

	.section	.text._Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,"axG",@progbits,_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,comdat
	.weak	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.align	16, 0x90
	.type	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,@function
_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_:   # @_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp147:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp148:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp149:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp150:
	.cfi_def_cfa_offset 20
	subl	$12, %esp
.Ltmp151:
	.cfi_def_cfa_offset 32
.Ltmp152:
	.cfi_offset %esi, -20
.Ltmp153:
	.cfi_offset %edi, -16
.Ltmp154:
	.cfi_offset %ebx, -12
.Ltmp155:
	.cfi_offset %ebp, -8
	calll	.L17$pb
.Ltmp156:
	.cfi_adjust_cfa_offset 4
.L17$pb:
	popl	%ebx
.Ltmp157:
	.cfi_adjust_cfa_offset -4
.Ltmp158:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp158-.L17$pb), %ebx
	movl	40(%esp), %edi
	movl	32(%esp), %ebp
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	_ZSt4cerr@GOT(%ebx), %esi
	movl	%esi, (%esp)
	movl	$6, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	testl	%ebp, %ebp
	je	.LBB17_1
# BB#2:
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_3
.LBB17_1:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	leal	(%esi,%eax), %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movl	44(%esp), %ebp
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZNSolsEi@PLT
	movl	%eax, %esi
	testl	%edi, %edi
	je	.LBB17_4
# BB#5:
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_6
.LBB17_4:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	leal	(%esi,%eax), %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_6:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
	movl	48(%esp), %edi
	testl	%ebp, %ebp
	je	.LBB17_7
# BB#8:
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_9
.LBB17_7:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	leal	(%esi,%eax), %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_9:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
	movl	52(%esp), %ebp
	testl	%edi, %edi
	je	.LBB17_10
# BB#11:
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_12
.LBB17_10:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	leal	(%esi,%eax), %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_12:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
	movl	56(%esp), %edi
	testl	%ebp, %ebp
	je	.LBB17_13
# BB#14:
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_15
.LBB17_13:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	leal	(%esi,%eax), %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_15:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
	testl	%edi, %edi
	je	.LBB17_16
# BB#18:
	movl	%edi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	jmp	.LBB17_17
.LBB17_16:
	movl	(%esi), %eax
	movl	-12(%eax), %eax
	movl	%esi, %ecx
	addl	%eax, %ecx
	movl	20(%esi,%eax), %eax
	orl	$1, %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_17:
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end17:
	.size	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_, .Lfunc_end17-_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_mcp_S.cc,@function
_GLOBAL__sub_I_mcp_S.cc:                # @_GLOBAL__sub_I_mcp_S.cc
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp159:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp160:
	.cfi_def_cfa_offset 12
	subl	$20, %esp
.Ltmp161:
	.cfi_def_cfa_offset 32
.Ltmp162:
	.cfi_offset %esi, -12
.Ltmp163:
	.cfi_offset %ebx, -8
	calll	.L18$pb
.Ltmp164:
	.cfi_adjust_cfa_offset 4
.L18$pb:
	popl	%ebx
.Ltmp165:
	.cfi_adjust_cfa_offset -4
.Ltmp166:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp166-.L18$pb), %ebx
	leal	_ZStL8__ioinit@GOTOFF(%ebx), %esi
	movl	%esi, (%esp)
	calll	_ZNSt8ios_base4InitC1Ev@PLT
	movl	__dso_handle@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	_ZNSt8ios_base4InitD1Ev@GOT(%ebx), %eax
	movl	%eax, (%esp)
	calll	__cxa_atexit@PLT
	addl	$20, %esp
	popl	%esi
	popl	%ebx
	retl
.Lfunc_end18:
	.size	_GLOBAL__sub_I_mcp_S.cc, .Lfunc_end18-_GLOBAL__sub_I_mcp_S.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cnt == 64"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./abalone.cc"
	.size	.L.str.1, 13

	.type	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state,@object # @__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state
.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state:
	.asciz	"bool deserialize_state(int, game_state *)"
	.size	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state, 42

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"buf[63] == '\\0'"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Read "
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	", len "
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid length of move: "
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\n"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unexpected EOF in move at "
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"init"
	.size	.L.str.8, 5

	.type	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc,@object # @__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc
.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc:
	.asciz	"void initialize_state(game_state *, const char *)"
	.size	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"strlen(init) == 63"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"W: "
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	", B: "
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"B:BBBBBBBBBBB..BBB.............................WWW..WWWWWWWWWWW"
	.size	.L.str.12, 64

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Master Control Program\n"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"dT:t:m:M:s:h"
	.size	.L.str.14, 13

	.type	_ZL5debug,@object       # @_ZL5debug
	.local	_ZL5debug
	.comm	_ZL5debug,1,1
	.type	_ZL9mem_limit,@object   # @_ZL9mem_limit
	.data
	.align	4
_ZL9mem_limit:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.size	_ZL9mem_limit, 8

	.type	_ZL6player,@object      # @_ZL6player
	.local	_ZL6player
	.comm	_ZL6player,32,4
	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"Unable to fork players.\n"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"["
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"] P"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"'s turn.\n"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"State: "
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"No move from player "
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Invalid move from player "
	.size	.L.str.21, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"P"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	" moves.\n"
	.size	.L.str.23, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"End of Line.\n"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"BW"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	" wins after "
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	" turns.\n"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"A draw after "
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"str"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"./board.h"
	.size	.L.str.31, 10

	.type	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc,@object # @__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc
.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc:
	.asciz	"void game_state::toString(char *) const"
	.size	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc, 40

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"i == 64"
	.size	.L.str.32, 8

	.type	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc,@object # @__PRETTY_FUNCTION__._ZN10game_state5setupEPKc
.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc:
	.asciz	"void game_state::setup(const char *)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc, 37

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"strlen(str) == 63"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"str[1] == ':'"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Unknown player type in '%s'\n"
	.size	.L.str.35, 29

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"i == 63"
	.size	.L.str.36, 8

	.type	_ZZNK9game_move8toStringEPcE3row,@object # @_ZZNK9game_move8toStringEPcE3row
	.section	.rodata._ZZNK9game_move8toStringEPcE3row,"aG",@progbits,_ZZNK9game_move8toStringEPcE3row,comdat
	.weak	_ZZNK9game_move8toStringEPcE3row
_ZZNK9game_move8toStringEPcE3row:
	.asciz	"-ABCDEFGHI"
	.size	_ZZNK9game_move8toStringEPcE3row, 11

	.type	_ZZNK9game_move8toStringEPcE4diag,@object # @_ZZNK9game_move8toStringEPcE4diag
	.section	.rodata._ZZNK9game_move8toStringEPcE4diag,"aG",@progbits,_ZZNK9game_move8toStringEPcE4diag,comdat
	.weak	_ZZNK9game_move8toStringEPcE4diag
_ZZNK9game_move8toStringEPcE4diag:
	.asciz	"-123456789"
	.size	_ZZNK9game_move8toStringEPcE4diag, 11

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"Invalid move: source invalid\n"
	.size	.L.str.37, 30

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Invalid move: source2 invalid\n"
	.size	.L.str.38, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Invalid move: missing comma after source\n"
	.size	.L.str.39, 42

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Invalid move: Unexpected char: "
	.size	.L.str.40, 32

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Invalid move: destination invalid\n"
	.size	.L.str.41, 35

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Invalid move: Unexpected chars at end\n"
	.size	.L.str.42, 39

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"i >= 1 && i <= 9"
	.size	.L.str.43, 17

	.type	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc,@object # @__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc
.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc:
	.asciz	"static idx_t game_move::rowToNum(char)"
	.size	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc, 39

	.type	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc,@object # @__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc
.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc:
	.asciz	"static idx_t game_move::diagToNum(char)"
	.size	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc, 40

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"<MCP> "
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"ABCDEFGHI"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	" "
	.size	.L.str.46, 2

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"  "
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"   "
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	" - "
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"    "
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/ \\ "
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\\ / "
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"               1   2   3   4   5"
	.size	.L.str.53, 33

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"\033[31;1mB\033[0m"
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\033[32;1mW\033[0m"
	.size	.L.str.55, 13

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"o"
	.size	.L.str.56, 2

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"check_valid_pos(row, diagonal)"
	.size	.L.str.57, 31

	.type	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType,@object # @__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType
.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType:
	.asciz	"void game_state::set(idx_t, idx_t, FieldType)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType, 46

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Usage: mcp [-s state_string] [-t soft-player-time] [-m soft-player-mem]\n           [-T hard-player-time] [-M hard-player-mem]\n           [-d]\n           [-h]\n           player1 player2\n state_string - 63 character string representing an initial field state\n                (this is the string the MCP prints before every move.)\n player-time  - CPU time per turn in seconds\n player-mem   - Memory limit per player in megabytes\n -d           - turn on debugging, program won't exit on invalid move\n -h           - Show this help\n"
	.size	.L.str.58, 528

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"signum == SIGALRM"
	.size	.L.str.59, 18

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"./mcp-shared.h"
	.size	.L.str.60, 15

	.type	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv,@object # @__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv
.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv:
	.asciz	"void alarm_handler(int, siginfo_t *, void *)"
	.size	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv, 45

	.type	_ZL14current_player,@object # @_ZL14current_player
	.local	_ZL14current_player
	.comm	_ZL14current_player,4,4
	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"p"
	.size	.L.str.61, 2

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Failed to set timer.\n"
	.size	.L.str.62, 22

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Child signal: "
	.size	.L.str.63, 15

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	" ("
	.size	.L.str.64, 3

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	","
	.size	.L.str.65, 2

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	")\n"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"killing the other one\n"
	.size	.L.str.67, 23

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"exiting\n"
	.size	.L.str.68, 9

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"\033[32mCHILD terminated successfully\033[0m\n"
	.size	.L.str.69, 40

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"!\n"
	.size	.L.str.70, 3

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"exited"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"killed"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"coredumped"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"trapped"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"unknown"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"SIGHUP"
	.size	.L.str.76, 7

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"SIGINT"
	.size	.L.str.77, 7

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"SIGILL"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"SIGABRT"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"SIGSEGV"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"SIGFPE"
	.size	.L.str.81, 7

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"SIGPIPE"
	.size	.L.str.82, 8

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"SIGKILL"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"SIGTERM"
	.size	.L.str.84, 8

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"SIGALRM"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"SIGUSR1"
	.size	.L.str.86, 8

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"SIGUSR2"
	.size	.L.str.87, 8

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"SIGBUS"
	.size	.L.str.88, 7

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"SIGCHLD"
	.size	.L.str.89, 8

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"EXECL '%s' FAILED\n"
	.size	.L.str.90, 19

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"execl"
	.size	.L.str.91, 6

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"( p == 0) or (p == 1)"
	.size	.L.str.92, 22

	.type	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi,@object # @__PRETTY_FUNCTION__._ZN10game_state6playerEi
.L__PRETTY_FUNCTION__._ZN10game_state6playerEi:
	.asciz	"void game_state::player(idx_t)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi, 31

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"time()"
	.size	.L.str.93, 7

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"localtime()"
	.size	.L.str.94, 12

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"%H:%M:%S"
	.size	.L.str.95, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Move is: "
	.size	.L.str.97, 10

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Player timeout!\n"
	.size	.L.str.98, 17

	.section	.init_array,"aw",@init_array
	.align	4
	.long	_GLOBAL__sub_I_mcp_S.cc
	.type	_ZL9cpu_limit.0,@object # @_ZL9cpu_limit.0
	.data
	.align	4
_ZL9cpu_limit.0:
	.long	4294967295              # 0xffffffff
	.size	_ZL9cpu_limit.0, 4

	.type	_ZL9cpu_limit.1,@object # @_ZL9cpu_limit.1
	.align	4
_ZL9cpu_limit.1:
	.long	4294967295              # 0xffffffff
	.size	_ZL9cpu_limit.1, 4

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Final state:"
	.size	.Lstr, 13

	.type	.Lswitch.table,@object  # @switch.table
	.section	.data.rel.ro,"aw",@progbits
	.align	4
.Lswitch.table:
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.46
	.size	.Lswitch.table, 16

	.type	.Lswitch.table.99,@object # @switch.table.99
	.align	4
.Lswitch.table.99:
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.size	.Lswitch.table.99, 16

	.type	.Lswitch.table.100,@object # @switch.table.100
	.align	16
.Lswitch.table.100:
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.75
	.long	.L.str.78
	.long	.L.str.75
	.long	.L.str.79
	.long	.L.str.88
	.long	.L.str.81
	.long	.L.str.83
	.long	.L.str.86
	.long	.L.str.80
	.long	.L.str.87
	.long	.L.str.82
	.long	.L.str.85
	.long	.L.str.84
	.long	.L.str.75
	.long	.L.str.89
	.size	.Lswitch.table.100, 68


	.ident	"clang version 3.8.1-17 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
#endif
#ifdef __x86_64__
	.text
	.file	"mcp-S.cc"
	.globl	_Z15serialize_stateiPK10game_state
	.align	16, 0x90
	.type	_Z15serialize_stateiPK10game_state,@function
_Z15serialize_stateiPK10game_state:     # @_Z15serialize_stateiPK10game_state
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 96
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movzbl	(%rsi), %ecx
	movb	$66, %al
	cmpl	$1, %ecx
	je	.LBB0_2
# BB#1:                                 # %select.false
	movb	$87, %al
.LBB0_2:                                # %select.end
	movb	%al, (%rsp)
	movb	$58, 1(%rsp)
	movl	$2, %r11d
	movl	$1, %r9d
	movl	$1, %r8d
	.align	16, 0x90
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	leal	-4(%r9), %edx
	cmpq	$6, %r9
	cmovll	%r8d, %edx
	cmpl	$9, %edx
	jg	.LBB0_11
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=1
	leaq	5(%r9), %r10
	movslq	%edx, %rax
	cmpq	%r10, %rax
	jge	.LBB0_11
# BB#5:                                 # %.lr.ph.split.us.preheader.i
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	-1(%r9), %r14
	movslq	%r11d, %r11
	addq	$5, %rax
	decl	%edx
	.align	16, 0x90
.LBB0_6:                                # %.lr.ph.split.us.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$24, %ecx
	cmpq	%r9, %rax
	jle	.LBB0_9
# BB#7:                                 # %.lr.ph.split.us.i
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$8, %edx
	ja	.LBB0_9
# BB#8:                                 #   in Loop: Header=BB0_6 Depth=2
	movslq	%edx, %rcx
	leaq	(%r14,%r14,8), %rbx
	addq	%rsi, %rbx
	movb	1(%rcx,%rbx), %cl
	decb	%cl
	movzbl	%cl, %ecx
	shll	$3, %ecx
.LBB0_9:                                # %_ZNK10game_state4getCEii.exit.us.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	$539907906, %ebx        # imm = 0x202E5742
	shrl	%cl, %ebx
	movb	%bl, (%rsp,%r11)
	leaq	-4(%rax), %rcx
	incq	%r11
	cmpq	$9, %rcx
	jg	.LBB0_11
# BB#10:                                # %_ZNK10game_state4getCEii.exit.us.i
                                        #   in Loop: Header=BB0_6 Depth=2
	incq	%rax
	incl	%edx
	cmpq	%r10, %rcx
	jl	.LBB0_6
.LBB0_11:                               # %.critedge.i
                                        #   in Loop: Header=BB0_3 Depth=1
	incq	%r9
	cmpq	$10, %r9
	jne	.LBB0_3
# BB#12:
	movslq	%r11d, %rax
	movb	$0, (%rsp,%rax)
	cmpl	$63, %eax
	jne	.LBB0_14
# BB#13:                                # %_ZNK10game_state8toStringEPc.exit
	leaq	(%rsp), %rsi
	movl	$64, %edx
	callq	write@PLT
	movl	$64, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB0_14:
	leaq	.L.str.32(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc(%rip), %rcx
	movl	$197, %edx
	callq	__assert_fail@PLT
.Lfunc_end0:
	.size	_Z15serialize_stateiPK10game_state, .Lfunc_end0-_Z15serialize_stateiPK10game_state
	.cfi_endproc

	.globl	_Z17deserialize_stateiP10game_state
	.align	16, 0x90
	.type	_Z17deserialize_stateiP10game_state,@function
_Z17deserialize_stateiP10game_state:    # @_Z17deserialize_stateiP10game_state
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	leaq	(%rsp), %rsi
	movl	$64, %edx
	callq	read@PLT
	cmpq	$64, %rax
	jne	.LBB1_3
# BB#1:
	cmpb	$0, 63(%rsp)
	jne	.LBB1_4
# BB#2:
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ZN10game_state5setupEPKc@PLT
	movb	$1, %al
	addq	$64, %rsp
	popq	%rbx
	retq
.LBB1_3:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state(%rip), %rcx
	movl	$19, %edx
	callq	__assert_fail@PLT
.LBB1_4:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state(%rip), %rcx
	movl	$20, %edx
	callq	__assert_fail@PLT
.Lfunc_end1:
	.size	_Z17deserialize_stateiP10game_state, .Lfunc_end1-_Z17deserialize_stateiP10game_state
	.cfi_endproc

	.section	.text._ZN10game_state5setupEPKc,"axG",@progbits,_ZN10game_state5setupEPKc,comdat
	.weak	_ZN10game_state5setupEPKc
	.align	16, 0x90
	.type	_ZN10game_state5setupEPKc,@function
_ZN10game_state5setupEPKc:              # @_ZN10game_state5setupEPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 64
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	testq	%r14, %r14
	je	.LBB2_17
# BB#1:
	movq	%r14, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB2_18
# BB#2:
	movzbl	1(%r14), %eax
	cmpl	$58, %eax
	jne	.LBB2_19
# BB#3:
	movsbl	(%r14), %eax
	cmpl	$87, %eax
	je	.LBB2_15
# BB#4:
	cmpl	$66, %eax
	jne	.LBB2_16
# BB#5:
	movb	$1, (%r15)
	jmp	.LBB2_6
.LBB2_15:
	movb	$2, (%r15)
.LBB2_6:                                # %.preheader
	movl	$2, %ebx
	movl	$1, %r12d
	.align	16, 0x90
.LBB2_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
	leal	-4(%r12), %eax
	cmpl	$6, %r12d
	movl	$1, %ebp
	cmovgel	%eax, %ebp
	cmpl	$9, %ebp
	jg	.LBB2_12
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	leal	5(%r12), %r13d
	cmpl	%r13d, %ebp
	jge	.LBB2_12
# BB#9:                                 # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	movslq	%ebx, %rbx
	.align	16, 0x90
.LBB2_10:                               # %.lr.ph
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r14,%rbx), %ecx
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	callq	_ZN10game_state3setEiic@PLT
	incl	%ebp
	incq	%rbx
	cmpl	$9, %ebp
	jg	.LBB2_12
# BB#11:                                # %.lr.ph
                                        #   in Loop: Header=BB2_10 Depth=2
	cmpl	%r13d, %ebp
	jl	.LBB2_10
.LBB2_12:                               # %.critedge
                                        #   in Loop: Header=BB2_7 Depth=1
	incl	%r12d
	cmpl	$10, %r12d
	jne	.LBB2_7
# BB#13:
	cmpl	$63, %ebx
	jne	.LBB2_20
# BB#14:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_17:
	leaq	.L.str.30(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$203, %edx
	callq	__assert_fail@PLT
.LBB2_18:
	leaq	.L.str.33(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$204, %edx
	callq	__assert_fail@PLT
.LBB2_19:
	leaq	.L.str.34(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$205, %edx
	callq	__assert_fail@PLT
.LBB2_16:
	leaq	.L.str.35(%rip), %rdi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB2_20:
	leaq	.L.str.36(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$227, %edx
	callq	__assert_fail@PLT
.Lfunc_end2:
	.size	_ZN10game_state5setupEPKc, .Lfunc_end2-_ZN10game_state5setupEPKc
	.cfi_endproc

	.text
	.globl	_Z14serialize_moveiPK9game_move
	.align	16, 0x90
	.type	_Z14serialize_moveiPK9game_move,@function
_Z14serialize_moveiPK9game_move:        # @_Z14serialize_moveiPK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 48
.Ltmp24:
	.cfi_offset %rbx, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movslq	4(%rsi), %rcx
	movq	_ZZNK9game_move8toStringEPcE3row@GOTPCREL(%rip), %rax
	movb	(%rax,%rcx), %cl
	movb	%cl, 14(%rsp)
	movslq	8(%rsi), %rdx
	movq	_ZZNK9game_move8toStringEPcE4diag@GOTPCREL(%rip), %rcx
	movb	(%rcx,%rdx), %dl
	movb	%dl, 15(%rsp)
	movl	$2, %edx
	cmpl	$1, (%rsi)
	jne	.LBB3_2
# BB#1:
	movb	$45, 16(%rsp)
	movslq	12(%rsi), %rdx
	movb	(%rax,%rdx), %dl
	movb	%dl, 17(%rsp)
	movslq	16(%rsi), %rdx
	movb	(%rcx,%rdx), %dl
	movb	%dl, 18(%rsp)
	movl	$5, %edx
.LBB3_2:                                # %_ZNK9game_move8toStringEPc.exit
	movl	%edx, %edx
	movb	$44, 14(%rsp,%rdx)
	movslq	20(%rsi), %rdi
	movb	(%rax,%rdi), %al
	movb	%al, 15(%rsp,%rdx)
	movslq	24(%rsi), %rax
	movb	(%rcx,%rax), %al
	movb	%al, 16(%rsp,%rdx)
	movb	$0, 17(%rsp,%rdx)
	leaq	14(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	1(%rax), %rdx
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	write@PLT
	movb	$1, %al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_Z14serialize_moveiPK9game_move, .Lfunc_end3-_Z14serialize_moveiPK9game_move
	.cfi_endproc

	.globl	_Z16deserialize_moveiP9game_move
	.align	16, 0x90
	.type	_Z16deserialize_moveiP9game_move,@function
_Z16deserialize_moveiP9game_move:       # @_Z16deserialize_moveiP9game_move
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 64
.Ltmp31:
	.cfi_offset %rbx, -40
.Ltmp32:
	.cfi_offset %r12, -32
.Ltmp33:
	.cfi_offset %r14, -24
.Ltmp34:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movl	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %r12
	movl	$10, %edx
	movq	%r12, %rsi
	callq	read@PLT
	movq	%rax, %r15
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.3(%rip), %rsi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.4(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %r12
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_15
# BB#1:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 56(%rbx)
	je	.LBB4_3
# BB#2:
	movb	67(%rbx), %al
	jmp	.LBB4_4
.LBB4_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB4_4:                                # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	testq	%r15, %r15
	jle	.LBB4_5
# BB#6:
	cmpq	$6, %r15
	je	.LBB4_10
# BB#7:
	cmpq	$9, %r15
	jne	.LBB4_8
.LBB4_10:
	leaq	8(%rsp), %rdi
	callq	strlen@PLT
	movq	%rax, %rbx
	cmpq	$5, %rbx
	je	.LBB4_13
# BB#11:
	cmpq	$8, %rbx
	jne	.LBB4_12
.LBB4_13:
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	_ZN9game_move5setupEPKc@PLT
	jmp	.LBB4_14
.LBB4_5:
	xorl	%eax, %eax
	jmp	.LBB4_14
.LBB4_8:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.5(%rip), %rsi
	movl	$24, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_@PLT
	jmp	.LBB4_9
.LBB4_12:
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.7(%rip), %rsi
	movl	$26, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
.LBB4_9:
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	xorl	%eax, %eax
.LBB4_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB4_15:
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end4:
	.size	_Z16deserialize_moveiP9game_move, .Lfunc_end4-_Z16deserialize_moveiP9game_move
	.cfi_endproc

	.section	.text._ZN9game_move5setupEPKc,"axG",@progbits,_ZN9game_move5setupEPKc,comdat
	.weak	_ZN9game_move5setupEPKc
	.align	16, 0x90
	.type	_ZN9game_move5setupEPKc,@function
_ZN9game_move5setupEPKc:                # @_ZN9game_move5setupEPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movsbl	(%r14), %edi
	callq	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_38
# BB#1:
	leal	-64(%rax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_38
# BB#2:                                 # %_ZN9game_move8rowToNumEc.exit
	movl	%ecx, 4(%rbx)
	movsbl	1(%r14), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_39
# BB#3:                                 # %_ZN9game_move8rowToNumEc.exit
	leal	-48(%rcx), %edx
	cmpl	$10, %edx
	jge	.LBB5_39
# BB#4:                                 # %_ZN9game_move9diagToNumEc.exit
	movl	%edx, 8(%rbx)
	leal	-21(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_8
# BB#5:                                 # %_ZN9game_move9diagToNumEc.exit
	leal	-11(%rax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_8
# BB#6:                                 # %_ZN9game_move9diagToNumEc.exit
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_8
# BB#7:                                 # %_ZN9game_move9diagToNumEc.exit
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_8
# BB#9:
	movzbl	2(%r14), %ebp
	cmpl	$45, %ebp
	je	.LBB5_21
# BB#10:
	movzbl	%bpl, %eax
	cmpl	$44, %eax
	jne	.LBB5_32
# BB#11:
	movl	$0, (%rbx)
	movl	$3, %eax
	jmp	.LBB5_12
.LBB5_8:                                # %_ZL15check_valid_posii.exit.thread
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.37(%rip), %rsi
	movl	$29, %edx
	jmp	.LBB5_35
.LBB5_21:
	movl	$1, (%rbx)
	movsbl	3(%r14), %edi
	callq	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_38
# BB#22:
	leal	-64(%rax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_38
# BB#23:                                # %_ZN9game_move8rowToNumEc.exit5
	movl	%ecx, 12(%rbx)
	movsbl	4(%r14), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_39
# BB#24:                                # %_ZN9game_move8rowToNumEc.exit5
	leal	-48(%rcx), %edx
	cmpl	$10, %edx
	jge	.LBB5_39
# BB#25:                                # %_ZN9game_move9diagToNumEc.exit7
	movl	%edx, 16(%rbx)
	leal	-21(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_29
# BB#26:                                # %_ZN9game_move9diagToNumEc.exit7
	leal	-11(%rax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_29
# BB#27:                                # %_ZN9game_move9diagToNumEc.exit7
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_29
# BB#28:                                # %_ZN9game_move9diagToNumEc.exit7
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_29
# BB#30:
	movzbl	5(%r14), %ecx
	movl	$6, %eax
	cmpl	$44, %ecx
	jne	.LBB5_31
.LBB5_12:
	movl	%eax, %r15d
	movsbl	(%r14,%r15), %edi
	callq	toupper@PLT
	movsbl	%al, %eax
	cmpl	$65, %eax
	jl	.LBB5_38
# BB#13:
	leal	-64(%rax), %ecx
	cmpl	$10, %ecx
	jge	.LBB5_38
# BB#14:                                # %_ZN9game_move8rowToNumEc.exit14
	movl	%ecx, 20(%rbx)
	movsbl	1(%r15,%r14), %ecx
	cmpl	$49, %ecx
	jl	.LBB5_39
# BB#15:                                # %_ZN9game_move8rowToNumEc.exit14
	leal	-48(%rcx), %edx
	cmpl	$10, %edx
	jge	.LBB5_39
# BB#16:                                # %_ZN9game_move9diagToNumEc.exit16
	movl	%edx, 24(%rbx)
	leal	-21(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB5_20
# BB#17:                                # %_ZN9game_move9diagToNumEc.exit16
	leal	-11(%rax), %edx
	cmpl	%ecx, %edx
	jle	.LBB5_20
# BB#18:                                # %_ZN9game_move9diagToNumEc.exit16
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB5_20
# BB#19:                                # %_ZN9game_move9diagToNumEc.exit16
	addl	$-65, %eax
	cmpl	$9, %eax
	jae	.LBB5_20
# BB#33:
	movb	$1, %al
	cmpb	$0, 2(%r15,%r14)
	je	.LBB5_37
# BB#34:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.42(%rip), %rsi
	movl	$38, %edx
	jmp	.LBB5_35
.LBB5_32:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.40(%rip), %rsi
	movl	$31, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movb	%bpl, 7(%rsp)
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	jmp	.LBB5_36
.LBB5_20:                               # %_ZL15check_valid_posii.exit20.thread
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.41(%rip), %rsi
	movl	$34, %edx
	jmp	.LBB5_35
.LBB5_29:                               # %_ZL15check_valid_posii.exit11.thread
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.38(%rip), %rsi
	movl	$30, %edx
	jmp	.LBB5_35
.LBB5_31:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.39(%rip), %rsi
	movl	$41, %edx
.LBB5_35:
	movq	%rbx, %rdi
.LBB5_36:
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	xorl	%eax, %eax
.LBB5_37:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_38:
	leaq	.L.str.43(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc(%rip), %rcx
	movl	$343, %edx              # imm = 0x157
	callq	__assert_fail@PLT
.LBB5_39:
	leaq	.L.str.43(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc(%rip), %rcx
	movl	$350, %edx              # imm = 0x15E
	callq	__assert_fail@PLT
.Lfunc_end5:
	.size	_ZN9game_move5setupEPKc, .Lfunc_end5-_ZN9game_move5setupEPKc
	.cfi_endproc

	.text
	.globl	_Z16initialize_stateP10game_statePKc
	.align	16, 0x90
	.type	_Z16initialize_stateP10game_statePKc,@function
_Z16initialize_stateP10game_statePKc:   # @_Z16initialize_stateP10game_statePKc
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp46:
	.cfi_def_cfa_offset 32
.Ltmp47:
	.cfi_offset %rbx, -24
.Ltmp48:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB6_3
# BB#1:
	movq	%rbx, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB6_4
# BB#2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN10game_state5setupEPKc@PLT
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_ZNK10game_state5printEv@PLT # TAILCALL
.LBB6_3:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$58, %edx
	callq	__assert_fail@PLT
.LBB6_4:
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$59, %edx
	callq	__assert_fail@PLT
.Lfunc_end6:
	.size	_Z16initialize_stateP10game_statePKc, .Lfunc_end6-_Z16initialize_stateP10game_statePKc
	.cfi_endproc

	.section	.text._ZNK10game_state5printEv,"axG",@progbits,_ZNK10game_state5printEv,comdat
	.weak	_ZNK10game_state5printEv
	.align	16, 0x90
	.type	_ZNK10game_state5printEv,@function
_ZNK10game_state5printEv:               # @_ZNK10game_state5printEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 144
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	leaq	73(%rdi), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$9, %r14d
	movq	_ZSt4cout@GOTPCREL(%rip), %r15
	leaq	.L.str.47(%rip), %r12
	.align	16, 0x90
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_42 Depth 2
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_27 Depth 2
                                        #     Child Loop BB7_35 Depth 2
                                        #     Child Loop BB7_31 Depth 2
	leaq	.L.str.45(%rip), %rax
	movb	-1(%r14,%rax), %al
	movb	%al, 87(%rsp)
	movl	$1, %edx
	movq	%r15, %rdi
	leaq	87(%rsp), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	leaq	.L.str.46(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leal	-5(%r14), %eax
	movl	$5, %ecx
	subq	%r14, %rcx
	cmovsl	%eax, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leal	1(%rcx), %ebp
	movl	$9, %edx
	subl	%ecx, %edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	cmpq	$5, %r14
	movl	$1, %eax
	cmovlel	%eax, %ebp
	movl	$9, %eax
	cmovll	%edx, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	testl	%ecx, %ecx
	movl	%ecx, %ebx
	jle	.LBB7_2
	.align	16, 0x90
.LBB7_42:                               # %.lr.ph
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decl	%ebx
	jne	.LBB7_42
.LBB7_2:                                # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-1(%r14), %rbx
	movl	$3, %edx
	movq	%r15, %rdi
	leaq	.L.str.48(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	5(%r14), %rdx
	movslq	%ebp, %r13
	leal	5(%rbp), %eax
	movslq	%eax, %rcx
	movb	$4, %al
	cmpq	%r14, %rcx
	jle	.LBB7_3
# BB#9:                                 # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpq	%r13, %rdx
	jle	.LBB7_3
# BB#10:                                # %._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%r14, %r12
	leal	-1(%rbp), %ecx
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	cmpl	$8, %ecx
	ja	.LBB7_12
# BB#11:                                #   in Loop: Header=BB7_1 Depth=1
	movslq	%ecx, %rax
	leaq	(%rbx,%rbx,8), %rcx
	addq	16(%rsp), %rcx          # 8-byte Folded Reload
	movb	1(%rax,%rcx), %al
	jmp	.LBB7_12
	.align	16, 0x90
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%r14, %r12
.LBB7_12:                               # %_ZNK10game_state3getEii.exit
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	decb	%al
	movsbq	%al, %rax
	leaq	.Lswitch.table(%rip), %rcx
	movq	(%rcx,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	60(%rsp), %eax          # 4-byte Folded Reload
	jge	.LBB7_19
# BB#13:                                # %.lr.ph25.split.us.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	60(%rsp), %r14          # 4-byte Folded Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rbx
	addq	32(%rsp), %rbx          # 8-byte Folded Reload
	.align	16, 0x90
.LBB7_14:                               # %.lr.ph25.split.us
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$3, %edx
	movq	%r15, %rdi
	leaq	.L.str.49(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%r13d, %ecx
	incq	%r13
	leal	6(%rcx), %eax
	movslq	%eax, %rdx
	movb	$4, %al
	cmpq	%r12, %rdx
	jle	.LBB7_18
# BB#15:                                # %.lr.ph25.split.us
                                        #   in Loop: Header=BB7_14 Depth=2
	cmpq	%r13, 72(%rsp)          # 8-byte Folded Reload
	jle	.LBB7_18
# BB#16:                                # %.lr.ph25.split.us
                                        #   in Loop: Header=BB7_14 Depth=2
	cmpl	$8, %ecx
	ja	.LBB7_18
# BB#17:                                #   in Loop: Header=BB7_14 Depth=2
	movb	(%rbx), %al
.LBB7_18:                               # %_ZNK10game_state3getEii.exit9.us
                                        #   in Loop: Header=BB7_14 Depth=2
	decb	%al
	movsbq	%al, %rax
	leaq	.Lswitch.table(%rip), %rcx
	movq	(%rcx,%rax,8), %rbp
	movq	%rbp, %rdi
	callq	strlen@PLT
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	incq	%rbx
	cmpq	%r14, %r13
	jl	.LBB7_14
.LBB7_19:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	%r12, %r14
	cmpq	$4, %r14
	jg	.LBB7_21
# BB#20:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$3, %edx
	movq	%r15, %rdi
	leaq	.L.str.48(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	28(%rsp), %esi          # 4-byte Reload
	incl	%esi
	movq	%r15, %rdi
	callq	_ZNSolsEi@PLT
.LBB7_21:                               #   in Loop: Header=BB7_1 Depth=1
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbp
	testq	%rbp, %rbp
	leaq	.L.str.47(%rip), %r12
	leaq	.L.str.51(%rip), %r13
	je	.LBB7_43
# BB#22:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB7_24
# BB#23:                                #   in Loop: Header=BB7_1 Depth=1
	movb	67(%rbp), %al
	jmp	.LBB7_25
	.align	16, 0x90
.LBB7_24:                               #   in Loop: Header=BB7_1 Depth=1
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB7_25:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit16
                                        #   in Loop: Header=BB7_1 Depth=1
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movl	$4, %edx
	movq	%r15, %rdi
	leaq	.L.str.50(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB7_28
# BB#26:                                # %.lr.ph27.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	%eax, %rbx
	.align	16, 0x90
.LBB7_27:                               # %.lr.ph27
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decq	%rbx
	jne	.LBB7_27
.LBB7_28:                               # %._crit_edge28
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpq	$5, %r14
	jle	.LBB7_32
# BB#29:                                #   in Loop: Header=BB7_1 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %eax
	jg	.LBB7_36
# BB#30:                                # %.lr.ph34.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	%ecx, %rbx
	movslq	%eax, %rbp
	decq	%rbp
	.align	16, 0x90
.LBB7_31:                               # %.lr.ph34
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	incq	%rbp
	cmpq	%rbx, %rbp
	jl	.LBB7_31
	jmp	.LBB7_36
	.align	16, 0x90
.LBB7_32:                               #   in Loop: Header=BB7_1 Depth=1
	cmpq	$2, %r14
	movq	64(%rsp), %rbp          # 8-byte Reload
	movl	60(%rsp), %ebx          # 4-byte Reload
	jl	.LBB7_36
# BB#33:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$2, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpl	%ebx, %ebp
	jge	.LBB7_36
# BB#34:                                # %.lr.ph31.preheader
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	%ebx, %rbx
	movslq	%ebp, %rax
	subq	%rax, %rbx
	.align	16, 0x90
.LBB7_35:                               # %.lr.ph31
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$4, %edx
	movq	%r15, %rdi
	leaq	.L.str.52(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decq	%rbx
	jne	.LBB7_35
	.align	16, 0x90
.LBB7_36:                               # %.loopexit
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB7_43
# BB#37:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpb	$0, 56(%rbp)
	movq	40(%rsp), %rbx          # 8-byte Reload
	je	.LBB7_39
# BB#38:                                #   in Loop: Header=BB7_1 Depth=1
	movb	67(%rbp), %al
	jmp	.LBB7_40
	.align	16, 0x90
.LBB7_39:                               #   in Loop: Header=BB7_1 Depth=1
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB7_40:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit19
                                        #   in Loop: Header=BB7_1 Depth=1
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$-9, 32(%rsp)           # 8-byte Folded Spill
	cmpq	$1, %r14
	movq	%rbx, %r14
	jg	.LBB7_1
# BB#4:
	leaq	.L.str.53(%rip), %rsi
	movl	$32, %edx
	movq	%r15, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_41
# BB#5:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%rbx)
	je	.LBB7_7
# BB#6:
	movb	67(%rbx), %al
	jmp	.LBB7_8
.LBB7_7:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB7_8:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_43:
	callq	_ZSt16__throw_bad_castv@PLT
.LBB7_41:
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end7:
	.size	_ZNK10game_state5printEv, .Lfunc_end7-_ZNK10game_state5printEv
	.cfi_endproc

	.text
	.globl	_Z14is_final_statePK10game_state
	.align	16, 0x90
	.type	_Z14is_final_statePK10game_state,@function
_Z14is_final_statePK10game_state:       # @_Z14is_final_statePK10game_state
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 48
.Ltmp67:
	.cfi_offset %rbx, -48
.Ltmp68:
	.cfi_offset %r12, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	leaq	1(%r15), %r12
	addq	$82, %r15
	xorl	%ebp, %ebp
	movq	%r12, %rax
	.align	16, 0x90
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%ebp, %ecx
	movzbl	1(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	2(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	3(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	4(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	5(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	6(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	7(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	8(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ebp
	addl	%edx, %ebp
	addq	$9, %rax
	cmpq	%r15, %rax
	jne	.LBB8_1
# BB#2:                                 # %_ZNK10game_state5countE9FieldType.exit.preheader
	xorl	%ebx, %ebx
	movq	%r12, %rax
	.align	16, 0x90
.LBB8_3:                                # %_ZNK10game_state5countE9FieldType.exit
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%ebx, %ecx
	movzbl	1(%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	2(%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	3(%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	4(%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	5(%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	6(%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	7(%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	8(%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ebx
	addl	%edx, %ebx
	addq	$9, %rax
	cmpq	%r15, %rax
	jne	.LBB8_3
# BB#4:                                 # %_ZNK10game_state5countE9FieldType.exit36
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.10(%rip), %rsi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%ebp, %esi
	movq	%r14, %rdi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.11(%rip), %rsi
	movl	$5, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%ebx, %esi
	movq	%r14, %rdi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rax
	.align	16, 0x90
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	2(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	3(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	4(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	5(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	6(%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	7(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %esi
	addl	%edx, %esi
	movzbl	8(%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%esi, %ecx
	addq	$9, %rax
	cmpq	%r15, %rax
	jne	.LBB8_5
# BB#6:                                 # %_ZNK10game_state5countE9FieldType.exit24
	movb	$1, %al
	cmpl	$9, %ecx
	jb	.LBB8_10
# BB#7:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_8:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	1(%r12), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	2(%r12), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	3(%r12), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	4(%r12), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	5(%r12), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	6(%r12), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	7(%r12), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	addl	%ecx, %edx
	movzbl	8(%r12), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	addq	$9, %r12
	cmpq	%r15, %r12
	jne	.LBB8_8
# BB#9:                                 # %_ZNK10game_state5countE9FieldType.exit12
	cmpl	$9, %eax
	setb	%al
.LBB8_10:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_Z14is_final_statePK10game_state, .Lfunc_end8-_Z14is_final_statePK10game_state
	.cfi_endproc

	.globl	_Z10move_validPK10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10move_validPK10game_statePK9game_move,@function
_Z10move_validPK10game_statePK9game_move: # @_Z10move_validPK10game_statePK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 56
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movl	20(%rsi), %edx
	movslq	4(%rsi), %r9
	movl	%edx, %r12d
	subl	%r9d, %r12d
	leal	1(%r12), %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	ja	.LBB9_79
# BB#1:
	movl	24(%rsi), %r15d
	movq	%r15, -8(%rsp)          # 8-byte Spill
	movslq	8(%rsi), %r13
	subl	%r13d, %r15d
	leal	1(%r15), %ecx
	cmpl	$2, %ecx
	ja	.LBB9_79
# BB#2:
	movq	%rdx, %rbp
	cmpl	%r9d, %ebp
	setne	%dl
	movq	-8(%rsp), %rax          # 8-byte Reload
	cmpl	%r13d, %eax
	setne	%bl
	cmpl	%r15d, %r12d
	sete	%r8b
	movb	%dl, %cl
	orb	%bl, %cl
	xorl	%eax, %eax
	movzbl	%cl, %ecx
	cmpl	$1, %ecx
	jne	.LBB9_79
# BB#3:
	movq	%rbp, -16(%rsp)         # 8-byte Spill
	andb	%bl, %dl
	xorb	$1, %dl
	orb	%dl, %r8b
	je	.LBB9_79
# BB#4:
	movl	(%rsi), %eax
	testl	%eax, %eax
	je	.LBB9_44
# BB#5:
	cmpl	$1, %eax
	jne	.LBB9_78
# BB#6:
	movl	12(%rsi), %r8d
	movl	%r8d, %ecx
	subl	%r9d, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	cmpl	$2, %eax
	jg	.LBB9_78
# BB#7:
	movl	16(%rsi), %esi
	movl	%esi, %edx
	subl	%r13d, %edx
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	cmpl	$2, %eax
	jg	.LBB9_78
# BB#8:
	cmpl	%r9d, %r8d
	setne	%al
	cmpl	%r13d, %esi
	setne	%r10b
	cmpl	%edx, %ecx
	sete	%r11b
	movb	%al, %bl
	orb	%r10b, %bl
	movzbl	%bl, %ebx
	cmpl	$1, %ebx
	jne	.LBB9_78
# BB#9:
	andb	%r10b, %al
	xorb	$1, %al
	orb	%al, %r11b
	je	.LBB9_78
# BB#10:
	imull	%r12d, %edx
	imull	%r15d, %ecx
	cmpl	%ecx, %edx
	je	.LBB9_78
# BB#11:
	movq	-8(%rsp), %rax          # 8-byte Reload
	leal	5(%rax), %eax
	movq	-16(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB9_78
# BB#12:
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	5(%rax), %eax
	movq	-8(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB9_78
# BB#13:
	movq	-16(%rsp), %rax         # 8-byte Reload
	decl	%eax
	cmpl	$8, %eax
	movq	%rax, %rcx
	ja	.LBB9_78
# BB#14:
	movq	-8(%rsp), %rax          # 8-byte Reload
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB9_78
# BB#15:                                # %_ZNK10game_state3getEii.exit
	cltq
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rdi, %rcx
	movzbl	1(%rax,%rcx), %eax
	cmpl	$3, %eax
	jne	.LBB9_78
# BB#16:
	leal	(%r8,%r12), %eax
	leal	5(%rsi,%r15), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_78
# BB#17:
	leal	(%rsi,%r15), %eax
	leal	5(%r8,%r12), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_78
# BB#18:
	leal	-1(%r8,%r12), %eax
	cmpl	$8, %eax
	ja	.LBB9_78
# BB#19:
	leal	-1(%rsi,%r15), %ecx
	cmpl	$8, %ecx
	ja	.LBB9_78
# BB#20:                                # %_ZNK10game_state3getEii.exit87
	movslq	%ecx, %rcx
	cltq
	leaq	(%rax,%rax,8), %rax
	addq	%rdi, %rax
	movzbl	1(%rcx,%rax), %eax
	cmpl	$3, %eax
	jne	.LBB9_78
# BB#21:
	leal	(%r8,%r9), %eax
	movl	%eax, %r10d
	shrl	$31, %r10d
	addl	%eax, %r10d
	sarl	%r10d
	leal	(%r10,%r12), %eax
	leal	(%rsi,%r13), %ecx
	movl	%ecx, %ebx
	shrl	$31, %ebx
	addl	%ecx, %ebx
	sarl	%ebx
	leal	5(%rbx,%r15), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_78
# BB#22:
	movl	%r15d, %eax
	addl	%ebx, %eax
	leal	5(%r10,%r12), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_78
# BB#23:
	leal	-1(%r10,%r12), %eax
	cmpl	$8, %eax
	ja	.LBB9_78
# BB#24:
	leal	-1(%rbx,%r15), %ecx
	cmpl	$8, %ecx
	ja	.LBB9_78
# BB#25:                                # %_ZNK10game_state3getEii.exit81
	movslq	%ecx, %rcx
	cltq
	leaq	(%rax,%rax,8), %rax
	addq	%rdi, %rax
	movzbl	1(%rcx,%rax), %eax
	cmpl	$3, %eax
	jne	.LBB9_78
# BB#26:
	leal	5(%r13), %eax
	movb	$4, %cl
	cmpl	%r9d, %eax
	jle	.LBB9_31
# BB#27:
	leal	5(%r9), %eax
	cmpl	%r13d, %eax
	jle	.LBB9_31
# BB#28:
	decl	%r9d
	cmpl	$8, %r9d
	ja	.LBB9_31
# BB#29:
	decl	%r13d
	cmpl	$8, %r13d
	movq	%r13, %rax
	ja	.LBB9_31
# BB#30:
	cltq
	movslq	%r9d, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rdi, %rcx
	movb	1(%rax,%rcx), %cl
.LBB9_31:                               # %_ZNK10game_state3getEii.exit75
	movzbl	(%rdi), %eax
	movzbl	%cl, %ecx
	cmpl	%eax, %ecx
	jne	.LBB9_78
# BB#32:
	leal	5(%rsi), %eax
	movb	$4, %dl
	cmpl	%r8d, %eax
	jle	.LBB9_37
# BB#33:
	leal	5(%r8), %eax
	cmpl	%esi, %eax
	jle	.LBB9_37
# BB#34:
	decl	%r8d
	cmpl	$8, %r8d
	ja	.LBB9_37
# BB#35:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB9_37
# BB#36:
	movslq	%esi, %rax
	movslq	%r8d, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdi, %rdx
	movb	1(%rax,%rdx), %dl
.LBB9_37:                               # %_ZNK10game_state3getEii.exit69
	movzbl	%dl, %eax
	cmpl	%ecx, %eax
	jne	.LBB9_78
# BB#38:
	movq	%rdi, %rsi
	leal	5(%rbx), %edx
	movb	$4, %al
	cmpl	%r10d, %edx
	jle	.LBB9_43
# BB#39:
	leal	5(%r10), %edx
	cmpl	%ebx, %edx
	jle	.LBB9_43
# BB#40:
	decl	%r10d
	cmpl	$8, %r10d
	ja	.LBB9_43
# BB#41:
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB9_43
# BB#42:
	movslq	%ebx, %rax
	movslq	%r10d, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %rsi
	movb	1(%rax,%rsi), %al
.LBB9_43:                               # %_ZNK10game_state3getEii.exit63
	movzbl	%al, %edx
	movb	$1, %al
	cmpl	%ecx, %edx
	jne	.LBB9_78
	jmp	.LBB9_79
.LBB9_44:
	leal	5(%r13), %ecx
	movb	$4, %al
	cmpl	%r9d, %ecx
	jle	.LBB9_49
# BB#45:
	leal	5(%r9), %ecx
	cmpl	%r13d, %ecx
	jle	.LBB9_49
# BB#46:
	leal	-1(%r9), %ecx
	cmpl	$8, %ecx
	ja	.LBB9_49
# BB#47:
	leal	-1(%r13), %edx
	cmpl	$8, %edx
	ja	.LBB9_49
# BB#48:
	movslq	%edx, %rax
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rdi, %rcx
	movb	1(%rax,%rcx), %al
.LBB9_49:                               # %_ZNK10game_state3getEii.exit57
	movzbl	(%rdi), %ecx
	movzbl	%al, %r14d
	cmpl	%ecx, %r14d
	jne	.LBB9_78
# BB#50:                                # %.preheader.preheader
	movq	%rdi, %r10
	movq	%r13, %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movslq	%r12d, %r13
	movslq	%r15d, %r8
	xorl	%r11d, %r11d
	movq	%rax, %rsi
	movq	%r9, %rbx
	movq	%r9, -32(%rsp)          # 8-byte Spill
	jmp	.LBB9_51
	.align	16, 0x90
.LBB9_56:                               #   in Loop: Header=BB9_51 Depth=1
	incl	%r11d
	addq	%r13, %rbx
	addq	%r8, %rsi
.LBB9_51:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rbx), %ebp
	cmpl	$9, %ebp
	sbbb	%al, %al
	leal	-1(%rsi), %edx
	cmpl	$9, %edx
	sbbb	%cl, %cl
	andb	%al, %cl
	andb	$1, %cl
	leaq	5(%rsi), %r9
	movb	$4, %al
	cmpq	%rbx, %r9
	jle	.LBB9_55
# BB#52:                                # %.preheader
                                        #   in Loop: Header=BB9_51 Depth=1
	leaq	5(%rbx), %rdi
	cmpq	%rsi, %rdi
	jle	.LBB9_55
# BB#53:                                # %.preheader
                                        #   in Loop: Header=BB9_51 Depth=1
	testb	%cl, %cl
	je	.LBB9_55
# BB#54:                                #   in Loop: Header=BB9_51 Depth=1
	movslq	%edx, %rax
	movslq	%ebp, %rdi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r10, %rdi
	movb	1(%rax,%rdi), %al
.LBB9_55:                               # %_ZNK10game_state3getEii.exit51
                                        #   in Loop: Header=BB9_51 Depth=1
	movzbl	%al, %eax
	cmpl	%r14d, %eax
	je	.LBB9_56
# BB#57:
	testl	%r11d, %r11d
	movq	-32(%rsp), %r9          # 8-byte Reload
	je	.LBB9_78
# BB#58:
	cmpl	$3, %r11d
	jg	.LBB9_78
# BB#59:
	movq	%r10, -24(%rsp)         # 8-byte Spill
	cmpl	$1, %r14d
	sete	%r8b
	leal	5(%rbx), %eax
	cmpl	%esi, %eax
	setg	%r13b
	leal	5(%rsi), %edi
	movb	$1, %r14b
	xorl	%eax, %eax
	cmpl	%ebx, %edi
	jle	.LBB9_60
# BB#61:
	andb	%cl, %r13b
	movq	-16(%rsp), %r10         # 8-byte Reload
	je	.LBB9_60
# BB#62:                                # %_ZNK10game_state3getEii.exit45.preheader
	incb	%r8b
	leal	-1(%rsi), %ecx
	movq	-40(%rsp), %rax         # 8-byte Reload
	movq	-8(%rsp), %rdi          # 8-byte Reload
	subl	%eax, %edi
	movq	%rdi, -8(%rsp)          # 8-byte Spill
	leal	-1(%rbx), %r13d
	subl	%r9d, %r10d
	movzbl	%r8b, %eax
	movl	%eax, -16(%rsp)         # 4-byte Spill
	movb	$1, %r14b
.LBB9_63:                               # %_ZNK10game_state3getEii.exit45
                                        # =>This Inner Loop Header: Depth=1
	movslq	%edx, %rax
	movslq	%ebp, %rdi
	leaq	(%rdi,%rdi,8), %rdi
	addq	-24(%rsp), %rdi         # 8-byte Folded Reload
	movzbl	1(%rax,%rdi), %eax
	cmpl	-16(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB9_64
# BB#65:                                #   in Loop: Header=BB9_63 Depth=1
	decl	%r11d
	leal	(%r10,%r13), %r8d
	movq	-8(%rsp), %rdi          # 8-byte Reload
	leal	(%rdi,%rcx), %r9d
	leal	6(%rdi,%rcx), %eax
	leal	1(%r10,%r13), %edx
	xorl	%r14d, %r14d
	cmpl	%edx, %eax
	jle	.LBB9_66
# BB#67:                                #   in Loop: Header=BB9_63 Depth=1
	leal	1(%rdi,%rcx), %eax
	leal	6(%r10,%r13), %ecx
	cmpl	%eax, %ecx
	jle	.LBB9_68
# BB#69:                                #   in Loop: Header=BB9_63 Depth=1
	cmpl	$8, %r8d
	ja	.LBB9_70
# BB#71:                                #   in Loop: Header=BB9_63 Depth=1
	leal	-1(%rbx,%r12), %ebp
	movl	%ebx, %eax
	addl	%r12d, %eax
	leal	-1(%rsi,%r15), %edx
	addl	%r15d, %esi
	cmpl	$9, %r9d
	movl	%r8d, %r13d
	movl	%r9d, %ecx
	movl	%eax, %ebx
	movl	$0, %eax
	jb	.LBB9_63
	jmp	.LBB9_72
.LBB9_64:
	movb	$1, %al
.LBB9_60:
	movl	%edx, %r9d
	movl	%ebp, %r8d
.LBB9_72:                               # %_ZNK10game_state3getEii.exit45.thread
	testl	%r11d, %r11d
	movq	-24(%rsp), %rdx         # 8-byte Reload
	jle	.LBB9_78
# BB#73:
	testb	%al, %al
	je	.LBB9_74
# BB#75:                                # %_ZNK10game_state3getEii.exit39
	movslq	%r9d, %rax
	movslq	%r8d, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdx
	movzbl	1(%rax,%rdx), %ecx
	movb	$1, %al
	cmpl	$3, %ecx
	je	.LBB9_79
# BB#76:
	movzbl	%cl, %eax
	cmpl	$4, %eax
	setne	%al
	jmp	.LBB9_77
.LBB9_74:
	xorl	%eax, %eax
.LBB9_77:                               # %_ZNK10game_state3getEii.exit33
	orb	%al, %r14b
	movb	$1, %al
	testb	$1, %r14b
	je	.LBB9_79
.LBB9_78:                               # %.thread92
	xorl	%eax, %eax
.LBB9_79:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_66:
	xorl	%eax, %eax
	jmp	.LBB9_72
.LBB9_68:
	xorl	%eax, %eax
	jmp	.LBB9_72
.LBB9_70:
	xorl	%eax, %eax
	jmp	.LBB9_72
.Lfunc_end9:
	.size	_Z10move_validPK10game_statePK9game_move, .Lfunc_end9-_Z10move_validPK10game_statePK9game_move
	.cfi_endproc

	.globl	_Z10apply_moveP10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10apply_moveP10game_statePK9game_move,@function
_Z10apply_moveP10game_statePK9game_move: # @_Z10apply_moveP10game_statePK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp90:
	.cfi_def_cfa_offset 64
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	_Z10move_validPK10game_statePK9game_move@PLT
	testb	%al, %al
	je	.LBB10_1
# BB#2:
	movl	(%rbx), %ecx
	movl	20(%rbx), %r12d
	movslq	4(%rbx), %r10
	movl	%r12d, %r11d
	subl	%r10d, %r11d
	movl	24(%rbx), %r13d
	movslq	8(%rbx), %r15
	movl	%r13d, %r9d
	subl	%r15d, %r9d
	movb	$1, %al
	cmpl	$1, %ecx
	je	.LBB10_11
# BB#3:
	testl	%ecx, %ecx
	jne	.LBB10_35
# BB#4:                                 # %.preheader.preheader
	movslq	%r11d, %r8
	movslq	%r9d, %r9
	subl	%r15d, %r13d
	leal	-1(%r15), %ebp
	subl	%r10d, %r12d
	leal	-1(%r10), %ebx
	movb	$3, %cl
	.align	16, 0x90
.LBB10_5:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leaq	5(%r15), %rdx
	cmpq	%r10, %rdx
	jle	.LBB10_35
# BB#6:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	leaq	5(%r10), %rdx
	cmpq	%r15, %rdx
	jle	.LBB10_35
# BB#7:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	cmpl	$8, %ebx
	ja	.LBB10_35
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	cmpl	$8, %ebp
	ja	.LBB10_35
# BB#9:                                 # %_ZNK10game_state3getEii.exit50
                                        #   in Loop: Header=BB10_5 Depth=1
	movslq	%ebp, %rdi
	movslq	%ebx, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r14, %rdx
	movzbl	1(%rdi,%rdx), %esi
	cmpl	$4, %esi
	je	.LBB10_35
# BB#10:                                #   in Loop: Header=BB10_5 Depth=1
	leaq	1(%rdi,%rdx), %rdx
	movb	%cl, (%rdx)
	addq	%r8, %r10
	addq	%r9, %r15
	addl	%r13d, %ebp
	addl	%r12d, %ebx
	movzbl	%sil, %ecx
	cmpl	$3, %ecx
	movb	%sil, %cl
	jne	.LBB10_5
	jmp	.LBB10_35
.LBB10_1:
	xorl	%eax, %eax
	jmp	.LBB10_35
.LBB10_11:
	leal	-1(%r10), %edi
	cmpl	$9, %edi
	sbbb	%cl, %cl
	leal	-1(%r15), %ebp
	cmpl	$9, %ebp
	sbbb	%dl, %dl
	andb	%cl, %dl
	leal	5(%r10), %ecx
	cmpl	%r15d, %ecx
	setg	%cl
	leal	5(%r15), %esi
	cmpl	%r10d, %esi
	setg	%r8b
	andb	%cl, %r8b
	andb	%dl, %r8b
	movb	$4, %sil
	movzbl	%r8b, %ecx
	cmpl	$1, %ecx
	jne	.LBB10_13
# BB#12:
	movslq	%ebp, %rcx
	movslq	%edi, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r14, %rdx
	movb	1(%rcx,%rdx), %sil
.LBB10_13:                              # %_ZNK10game_state3getEii.exit
	leal	5(%r13), %ecx
	cmpl	%r12d, %ecx
	jle	.LBB10_36
# BB#14:                                # %_ZNK10game_state3getEii.exit
	leal	5(%r12), %ecx
	cmpl	%r13d, %ecx
	jle	.LBB10_36
# BB#15:                                # %_ZNK10game_state3getEii.exit
	decl	%r12d
	cmpl	$8, %r12d
	ja	.LBB10_36
# BB#16:                                # %_ZNK10game_state3getEii.exit
	decl	%r13d
	cmpl	$9, %r13d
	jae	.LBB10_36
# BB#17:                                # %_ZN10game_state3setEii9FieldType.exit13
	movl	%ebp, (%rsp)            # 4-byte Spill
	movl	%edi, 4(%rsp)           # 4-byte Spill
	movslq	%r13d, %rcx
	movslq	%r12d, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r14, %rdx
	movb	%sil, %r12b
	movb	%r12b, 1(%rcx,%rdx)
	movl	12(%rbx), %esi
	movl	16(%rbx), %ecx
	leal	(%rsi,%r11), %edx
	leal	5(%rcx,%r9), %edi
	cmpl	%edx, %edi
	jle	.LBB10_36
# BB#18:                                # %_ZN10game_state3setEii9FieldType.exit13
	leal	(%rcx,%r9), %edx
	leal	5(%rsi,%r11), %edi
	cmpl	%edx, %edi
	jle	.LBB10_36
# BB#19:                                # %_ZN10game_state3setEii9FieldType.exit13
	leal	-1(%rsi,%r11), %ebx
	cmpl	$8, %ebx
	ja	.LBB10_36
# BB#20:                                # %_ZN10game_state3setEii9FieldType.exit13
	leal	-1(%rcx,%r9), %edi
	cmpl	$9, %edi
	jae	.LBB10_36
# BB#21:                                # %_ZN10game_state3setEii9FieldType.exit19
	movslq	%edi, %rdx
	movslq	%ebx, %rdi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r14, %rdi
	movb	%r12b, 1(%rdx,%rdi)
	addl	%esi, %r10d
	movl	%r10d, %ebx
	shrl	$31, %ebx
	addl	%r10d, %ebx
	sarl	%ebx
	leal	(%rbx,%r11), %edi
	addl	%ecx, %r15d
	movl	%r15d, %edx
	shrl	$31, %edx
	addl	%r15d, %edx
	sarl	%edx
	leal	5(%rdx,%r9), %ebp
	cmpl	%edi, %ebp
	jle	.LBB10_36
# BB#22:                                # %_ZN10game_state3setEii9FieldType.exit19
	movl	%r9d, %edi
	addl	%edx, %edi
	leal	5(%rbx,%r11), %ebp
	cmpl	%edi, %ebp
	jle	.LBB10_36
# BB#23:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	-1(%rbx,%r11), %edi
	cmpl	$8, %edi
	ja	.LBB10_36
# BB#24:                                # %_ZN10game_state3setEii9FieldType.exit19
	leal	-1(%rdx,%r9), %ebp
	cmpl	$9, %ebp
	jae	.LBB10_36
# BB#25:                                # %_ZN10game_state3setEii9FieldType.exit25
	movslq	%ebp, %rbp
	movslq	%edi, %rdi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r14, %rdi
	movb	%r12b, 1(%rbp,%rdi)
	testb	%r8b, %r8b
	je	.LBB10_36
# BB#26:                                # %_ZN10game_state3setEii9FieldType.exit31
	movslq	(%rsp), %rdi            # 4-byte Folded Reload
	movslq	4(%rsp), %rbp           # 4-byte Folded Reload
	leaq	(%rbp,%rbp,8), %rbp
	addq	%r14, %rbp
	movb	$3, 1(%rdi,%rbp)
	leal	5(%rcx), %edi
	cmpl	%esi, %edi
	jle	.LBB10_36
# BB#27:                                # %_ZN10game_state3setEii9FieldType.exit31
	leal	5(%rsi), %edi
	cmpl	%ecx, %edi
	jle	.LBB10_36
# BB#28:                                # %_ZN10game_state3setEii9FieldType.exit31
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB10_36
# BB#29:                                # %_ZN10game_state3setEii9FieldType.exit31
	decl	%ecx
	cmpl	$9, %ecx
	jae	.LBB10_36
# BB#30:                                # %_ZN10game_state3setEii9FieldType.exit37
	movslq	%ecx, %rcx
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	$3, 1(%rcx,%rsi)
	leal	5(%rdx), %ecx
	cmpl	%ebx, %ecx
	jle	.LBB10_36
# BB#31:                                # %_ZN10game_state3setEii9FieldType.exit37
	leal	5(%rbx), %ecx
	cmpl	%edx, %ecx
	jle	.LBB10_36
# BB#32:                                # %_ZN10game_state3setEii9FieldType.exit37
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB10_36
# BB#33:                                # %_ZN10game_state3setEii9FieldType.exit37
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB10_36
# BB#34:                                # %_ZN10game_state3setEii9FieldType.exit43
	movslq	%edx, %rcx
	movslq	%ebx, %rdx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%rdx, %r14
	movb	$3, 1(%rcx,%r14)
.LBB10_35:                              # %.thread
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_36:                              # %_ZL15check_valid_posii.exit.thread.i12
	leaq	.L.str.57(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType(%rip), %rcx
	movl	$148, %edx
	callq	__assert_fail@PLT
.Lfunc_end10:
	.size	_Z10apply_moveP10game_statePK9game_move, .Lfunc_end10-_Z10apply_moveP10game_statePK9game_move
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.zero	16
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp101:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 56
	subq	$664, %rsp              # imm = 0x298
.Ltmp103:
	.cfi_def_cfa_offset 720
.Ltmp104:
	.cfi_offset %rbx, -56
.Ltmp105:
	.cfi_offset %r12, -48
.Ltmp106:
	.cfi_offset %r13, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movl	%edi, %ebx
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.13(%rip), %rsi
	movl	$23, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.12(%rip), %r14
	leaq	.L.str.14(%rip), %r15
	movq	optarg@GOTPCREL(%rip), %r12
	jmp	.LBB11_1
.LBB11_18:                              #   in Loop: Header=BB11_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	shlq	$20, %rax
	movq	%rax, _ZL9mem_limit+8(%rip)
	.align	16, 0x90
.LBB11_1:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	getopt@PLT
	cmpl	$99, %eax
	jle	.LBB11_2
# BB#9:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$114, %eax
	jg	.LBB11_14
# BB#10:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$100, %eax
	je	.LBB11_77
# BB#11:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$109, %eax
	jne	.LBB11_12
# BB#17:                                #   in Loop: Header=BB11_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	shlq	$20, %rax
	movq	%rax, _ZL9mem_limit(%rip)
	jmp	.LBB11_1
	.align	16, 0x90
.LBB11_2:                               # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$76, %eax
	jle	.LBB11_3
# BB#6:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$77, %eax
	je	.LBB11_18
# BB#7:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$84, %eax
	jne	.LBB11_1
# BB#8:                                 #   in Loop: Header=BB11_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	movq	%rax, _ZL9cpu_limit.1(%rip)
	jmp	.LBB11_1
	.align	16, 0x90
.LBB11_14:                              # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$115, %eax
	je	.LBB11_19
# BB#15:                                # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$116, %eax
	jne	.LBB11_1
# BB#16:                                #   in Loop: Header=BB11_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	movq	%rax, _ZL9cpu_limit.0(%rip)
	jmp	.LBB11_1
.LBB11_3:                               # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$-1, %eax
	je	.LBB11_20
# BB#4:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$58, %eax
	je	.LBB11_13
# BB#5:                                 # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$63, %eax
	jne	.LBB11_1
	jmp	.LBB11_13
.LBB11_77:                              #   in Loop: Header=BB11_1 Depth=1
	movb	$1, _ZL5debug(%rip)
	jmp	.LBB11_1
.LBB11_19:                              #   in Loop: Header=BB11_1 Depth=1
	movq	(%r12), %r14
	jmp	.LBB11_1
.LBB11_12:                              # %.backedge
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$104, %eax
	jne	.LBB11_1
	jmp	.LBB11_13
.LBB11_20:
	movq	optind@GOTPCREL(%rip), %r15
	movl	(%r15), %eax
	addl	$2, %eax
	cmpl	%ebx, %eax
	jg	.LBB11_13
# BB#21:
	movq	$1, 496(%rsp)
	leaq	504(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 640(%rsp)
	movq	$0, 496(%rsp)
	movl	$0, 632(%rsp)
	leaq	496(%rsp), %rsi
	movl	$13, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB11_78
# BB#22:
	movq	$0, 336(%rsp)
	leaq	344(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 480(%rsp)
	leaq	_ZL13alarm_handleriP9siginfo_tPv(%rip), %rax
	movq	%rax, 336(%rsp)
	movl	$268435460, 472(%rsp)   # imm = 0x10000004
	leaq	336(%rsp), %rsi
	movl	$14, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB11_78
# BB#23:
	movq	$0, 176(%rsp)
	leaq	184(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 320(%rsp)
	leaq	_ZL13child_handleriP9siginfo_tPv(%rip), %rax
	movq	%rax, 176(%rsp)
	movl	$268435460, 312(%rsp)   # imm = 0x10000004
	leaq	176(%rsp), %rsi
	movl	$17, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB11_78
# BB#24:                                # %_ZL21setup_signal_handlersv.exit
	movslq	(%r15), %rax
	movq	(%rbp,%rax,8), %rdi
	leaq	_ZL6player(%rip), %rsi
	callq	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB11_79
# BB#25:
	movslq	(%r15), %rax
	movq	8(%rbp,%rax,8), %rdi
	leaq	_ZL6player+16(%rip), %rsi
	callq	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB11_79
# BB#26:
	movabsq	$289360691352306692, %rax # imm = 0x404040404040404
	movq	%rax, 568(%rsp)
	movq	%rax, 560(%rsp)
	movq	%rax, 552(%rsp)
	movq	%rax, 544(%rsp)
	movq	%rax, 536(%rsp)
	movq	%rax, 528(%rsp)
	movq	%rax, 520(%rsp)
	movq	%rax, 512(%rsp)
	movq	%rax, 504(%rsp)
	movq	%rax, 496(%rsp)
	movw	$1028, 576(%rsp)        # imm = 0x404
	testq	%r14, %r14
	je	.LBB11_80
# BB#27:
	movq	%r14, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB11_81
# BB#28:                                # %_Z16initialize_stateP10game_statePKc.exit
	leaq	496(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	_ZN10game_state5setupEPKc@PLT
	movq	%rbp, %rdi
	callq	_ZNK10game_state5printEv@PLT
	movzbl	496(%rsp), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %r15d
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	xorl	%r12d, %r12d
.LBB11_29:                              # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_32 Depth 2
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	callq	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	jne	.LBB11_30
# BB#31:                                # %.lr.ph
                                        #   in Loop: Header=BB11_29 Depth=1
	movl	%r12d, 84(%rsp)         # 4-byte Spill
	movl	%r15d, %eax
	orl	$1, %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movslq	%r15d, %rax
	shlq	$4, %rax
	leaq	_ZL6player(%rip), %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	leaq	13(%rax,%rcx), %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	leaq	12(%rax,%rcx), %rdx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	leaq	8(%rax,%rcx), %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	leaq	4(%rax,%rcx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	176(%rsp), %r13
	leaq	.L.str.44(%rip), %r12
	.align	16, 0x90
.LBB11_32:                              #   Parent Loop BB11_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, 116(%rsp)           # 4-byte Folded Reload
	jne	.LBB11_82
# BB#33:                                #   in Loop: Header=BB11_32 Depth=2
	movq	%r15, %rax
	movq	%r14, %r15
	cmpl	$1, %eax
	je	.LBB11_36
# BB#34:                                #   in Loop: Header=BB11_32 Depth=2
	testl	%eax, %eax
	jne	.LBB11_37
# BB#35:                                #   in Loop: Header=BB11_32 Depth=2
	movb	$1, 496(%rsp)
	jmp	.LBB11_38
	.align	16, 0x90
.LBB11_36:                              #   in Loop: Header=BB11_32 Depth=2
	movb	$2, 496(%rsp)
	jmp	.LBB11_38
	.align	16, 0x90
.LBB11_37:                              #   in Loop: Header=BB11_32 Depth=2
	movb	$4, 496(%rsp)
.LBB11_38:                              # %_ZN10game_state6playerEi.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movq	%r12, %r14
	movq	%r13, %rdi
	callq	time@PLT
	cmpq	$-1, 176(%rsp)
	je	.LBB11_39
.LBB11_40:                              #   in Loop: Header=BB11_32 Depth=2
	movq	%r13, %rdi
	callq	localtime@PLT
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB11_41
.LBB11_42:                              # %_ZL10getTimeStrPcm.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	$64, %esi
	leaq	336(%rsp), %rbx
	movq	%rbx, %rdi
	leaq	.L.str.95(%rip), %rdx
	movq	%r12, %rcx
	callq	strftime@PLT
	movl	$6, %edx
	movq	%r15, %rdi
	movq	%r14, %r12
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%r15, %rdi
	leaq	.L.str.16(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	callq	strlen@PLT
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$3, %edx
	movq	%r15, %rdi
	leaq	.L.str.17(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	%r15, %rbx
	movq	%rsi, %r15
	callq	_ZNSolsEi@PLT
	movl	$9, %edx
	movq	%rax, %rdi
	leaq	.L.str.18(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$6, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$7, %edx
	movq	%rbx, %rdi
	leaq	.L.str.19(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	movl	$2, %edi
	movq	%rbp, %rsi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movq	136(%rsp), %rax         # 8-byte Reload
	movb	$0, (%rax)
	movq	104(%rsp), %rax         # 8-byte Reload
	movb	$0, (%rax)
	movq	128(%rsp), %r14         # 8-byte Reload
	movq	%r14, _ZL14current_player(%rip)
	movq	_ZL9cpu_limit.0(%rip), %rax
	cmpq	$-1, %rax
	movl	$0, %ecx
	cmoveq	%rcx, %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movq	%rax, 192(%rsp)
	movq	$0, 200(%rsp)
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%r13, %rsi
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB11_83
# BB#43:                                # %_ZL9arm_timerl.exit.i
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	(%r14), %edi
	movl	$18, %esi
	callq	kill@PLT
	testl	%eax, %eax
	movq	%rbx, %r14
	js	.LBB11_55
# BB#44:                                #   in Loop: Header=BB11_32 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	movq	%rbp, %rsi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpb	$0, (%rax)
	jne	.LBB11_54
# BB#45:                                #   in Loop: Header=BB11_32 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	leaq	144(%rsp), %rsi
	callq	_Z16deserialize_moveiP9game_move@PLT
	movq	136(%rsp), %rcx         # 8-byte Reload
	cmpb	$0, (%rcx)
	je	.LBB11_46
.LBB11_54:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	movl	$6, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$16, %edx
	movq	%r14, %rdi
	leaq	.L.str.98(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LBB11_55:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit.thread
                                        #   in Loop: Header=BB11_32 Depth=2
	movzbl	_ZL5debug(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB11_59
# BB#56:                                #   in Loop: Header=BB11_32 Depth=2
	movl	$6, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$20, %edx
	movq	%r14, %rdi
	leaq	.L.str.20(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LBB11_57:                              # %.thread
                                        #   in Loop: Header=BB11_32 Depth=2
	movq	%rbp, %rdi
	callq	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	je	.LBB11_32
	jmp	.LBB11_58
.LBB11_46:                              #   in Loop: Header=BB11_32 Depth=2
	testb	%al, %al
	je	.LBB11_55
# BB#47:                                #   in Loop: Header=BB11_32 Depth=2
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	movl	$19, %esi
	callq	kill@PLT
	testl	%eax, %eax
	js	.LBB11_55
# BB#48:                                #   in Loop: Header=BB11_32 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%r13, %rsi
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB11_83
# BB#49:                                # %_ZL9arm_timerl.exit2.i
                                        #   in Loop: Header=BB11_32 Depth=2
	movq	$0, _ZL14current_player(%rip)
	movw	$0, 656(%rsp)
	movq	$0, 648(%rsp)
	movslq	148(%rsp), %rax
	movq	_ZZNK9game_move8toStringEPcE3row@GOTPCREL(%rip), %rdx
	movb	(%rdx,%rax), %al
	movb	%al, 648(%rsp)
	movslq	152(%rsp), %rax
	movq	_ZZNK9game_move8toStringEPcE4diag@GOTPCREL(%rip), %rsi
	movb	(%rsi,%rax), %al
	movb	%al, 649(%rsp)
	movl	$2, %eax
	cmpl	$1, 144(%rsp)
	jne	.LBB11_51
# BB#50:                                #   in Loop: Header=BB11_32 Depth=2
	movb	$45, 650(%rsp)
	movslq	156(%rsp), %rax
	movb	(%rdx,%rax), %al
	movb	%al, 651(%rsp)
	movslq	160(%rsp), %rax
	movb	(%rsi,%rax), %al
	movb	%al, 652(%rsp)
	movl	$5, %eax
.LBB11_51:                              #   in Loop: Header=BB11_32 Depth=2
	movl	%eax, %eax
	movb	$44, 648(%rsp,%rax)
	movslq	164(%rsp), %rcx
	movb	(%rdx,%rcx), %cl
	movb	%cl, 649(%rsp,%rax)
	movslq	168(%rsp), %rcx
	movb	(%rsi,%rcx), %cl
	movb	%cl, 650(%rsp,%rax)
	movb	$0, 651(%rsp,%rax)
	movl	$6, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$9, %edx
	movq	%r14, %rdi
	leaq	.L.str.97(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	648(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%r14, %rdi
	leaq	.L.str.6(%rip), %rbx
	movq	%rbx, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	leaq	144(%rsp), %rsi
	callq	_Z10apply_moveP10game_statePK9game_move@PLT
	movq	%r12, %rsi
	movb	%al, %r12b
	movl	$6, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	testb	%r12b, %r12b
	jne	.LBB11_60
# BB#52:                                #   in Loop: Header=BB11_32 Depth=2
	movl	$25, %edx
	movq	%r14, %rdi
	leaq	.L.str.21(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_ZNSolsEi@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movb	_ZL5debug(%rip), %al
	andb	$1, %al
	leaq	176(%rsp), %r13
	leaq	.L.str.44(%rip), %r12
	jne	.LBB11_57
	jmp	.LBB11_53
.LBB11_39:                              #   in Loop: Header=BB11_32 Depth=2
	leaq	.L.str.93(%rip), %rdi
	callq	perror@PLT
	jmp	.LBB11_40
.LBB11_41:                              #   in Loop: Header=BB11_32 Depth=2
	leaq	.L.str.94(%rip), %rdi
	callq	perror@PLT
	jmp	.LBB11_42
.LBB11_60:                              #   in Loop: Header=BB11_29 Depth=1
	movl	$1, %edx
	movq	%r14, %rdi
	leaq	.L.str.22(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_ZNSolsEi@PLT
	movl	$8, %edx
	movq	%rax, %rdi
	leaq	.L.str.23(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %r13d
	subl	%r15d, %r13d
	sete	%al
	movzbl	%al, %eax
	movl	84(%rsp), %r12d         # 4-byte Reload
	addl	%eax, %r12d
	cmpl	$101, %r12d
	movl	%r13d, %r15d
	jl	.LBB11_29
	jmp	.LBB11_61
.LBB11_58:
	movl	%r15d, %r13d
	movl	84(%rsp), %r12d         # 4-byte Reload
.LBB11_61:                              # %.loopexit
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB11_84
# BB#62:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 56(%rbp)
	je	.LBB11_64
# BB#63:
	movb	67(%rbp), %al
	jmp	.LBB11_65
.LBB11_64:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB11_65:                              # %_Z8print_nlv.exit
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	leaq	.Lstr(%rip), %rdi
	callq	puts@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	leaq	496(%rsp), %rsi
	movl	$1, %edi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB11_84
# BB#66:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i4
	cmpb	$0, 56(%rbp)
	je	.LBB11_68
# BB#67:
	movb	67(%rbp), %al
	jmp	.LBB11_69
.LBB11_68:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB11_69:                              # %_Z8print_nlv.exit6
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB11_84
# BB#70:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i7
	cmpb	$0, 56(%rbx)
	je	.LBB11_72
# BB#71:
	movb	67(%rbx), %al
	jmp	.LBB11_73
.LBB11_72:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB11_73:                              # %_Z8print_nlv.exit9
	movsbl	%al, %esi
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.25(%rip), %rsi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpl	$100, %r12d
	jg	.LBB11_75
# BB#74:
	movslq	%r13d, %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	leaq	.L.str.26(%rip), %rax
	movb	(%rcx,%rax), %bl
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbp
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbp, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movb	%bl, 336(%rsp)
	leaq	336(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rbx
	leaq	.L.str.27(%rip), %rsi
	movl	$12, %edx
	jmp	.LBB11_76
.LBB11_75:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.29(%rip), %rsi
	movl	$13, %edx
.LBB11_76:                              # %.preheader
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.28(%rip), %rsi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	_ZL6player(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	leaq	336(%rsp), %rbx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	xorl	%eax, %eax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_30:
	movl	%r15d, %r13d
	jmp	.LBB11_61
.LBB11_83:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.62(%rip), %rsi
	movl	$21, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	callq	abort@PLT
.LBB11_82:
	leaq	.L.str.92(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi(%rip), %rcx
	movl	$115, %edx
	callq	__assert_fail@PLT
.LBB11_59:
	leal	3(%r15), %edi
	leaq	.L.str.20(%rip), %rsi
	movl	%r15d, %edx
	callq	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
.LBB11_13:                              # %.loopexit12
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	.L.str.58(%rip), %rdi
	movl	$527, %esi              # imm = 0x20F
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB11_78:
	callq	abort@PLT
.LBB11_84:
	callq	_ZSt16__throw_bad_castv@PLT
.LBB11_79:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.15(%rip), %rsi
	movl	$24, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$5, %edi
	callq	exit@PLT
.LBB11_80:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$58, %edx
	callq	__assert_fail@PLT
.LBB11_81:
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$59, %edx
	callq	__assert_fail@PLT
.LBB11_53:
	leal	1(%r15), %edi
	leaq	.L.str.21(%rip), %rsi
	movl	%r15d, %edx
	callq	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL11fork_playerPcP6player,@function
_ZL11fork_playerPcP6player:             # @_ZL11fork_playerPcP6player
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp112:
	.cfi_def_cfa_offset 48
.Ltmp113:
	.cfi_offset %rbx, -24
.Ltmp114:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	16(%rsp), %rdi
	callq	pipe@PLT
	testl	%eax, %eax
	je	.LBB12_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB12_9
.LBB12_2:
	leaq	8(%rsp), %rdi
	callq	pipe@PLT
	testl	%eax, %eax
	je	.LBB12_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB12_9
.LBB12_4:
	callq	fork@PLT
	movl	%eax, (%rbx)
	movl	(%rbx), %eax
	cmpl	$-1, %eax
	je	.LBB12_10
# BB#5:
	cmpl	$0, (%rbx)
	je	.LBB12_11
# BB#6:
	movl	(%rbx), %edi
	movl	$19, %esi
	callq	kill@PLT
	testl	%eax, %eax
	js	.LBB12_7
# BB#8:
	movl	20(%rsp), %edi
	callq	close@PLT
	movl	8(%rsp), %edi
	callq	close@PLT
	movl	16(%rsp), %eax
	movl	%eax, 4(%rbx)
	movl	12(%rsp), %eax
	movl	%eax, 8(%rbx)
	movb	$1, %al
	jmp	.LBB12_9
.LBB12_7:
	xorl	%eax, %eax
.LBB12_9:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB12_10:
	callq	abort@PLT
.LBB12_11:
	movl	16(%rsp), %edi
	callq	close@PLT
	movl	12(%rsp), %edi
	callq	close@PLT
	movl	8(%rsp), %edi
	movl	$3, %esi
	callq	dup2@PLT
	movl	20(%rsp), %edi
	movl	$4, %esi
	callq	dup2@PLT
	movl	$2, %edi
	callq	close@PLT
	movl	$1, %edi
	movl	$2, %esi
	callq	dup2@PLT
	leaq	_ZL9mem_limit(%rip), %rsi
	movl	$9, %edi
	callq	setrlimit@PLT
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	execl@PLT
	leaq	.L.str.90(%rip), %rdi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf@PLT
	leaq	.L.str.91(%rip), %rdi
	callq	perror@PLT
	movl	$5, %edi
	callq	_exit@PLT
.Lfunc_end12:
	.size	_ZL11fork_playerPcP6player, .Lfunc_end12-_ZL11fork_playerPcP6player
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_,@function
_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_: # @_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp119:
	.cfi_def_cfa_offset 48
.Ltmp120:
	.cfi_offset %rbx, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movl	%edi, %r14d
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbp
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbp, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	testq	%rbx, %rbx
	jne	.LBB13_2
# BB#1:
	movq	(%rbp), %rax
	movq	-24(%rax), %rax
	leaq	(%rbp,%rax), %rdi
	movl	32(%rbp,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.LBB13_3
.LBB13_2:
	movq	%rbx, %rdi
	callq	strlen@PLT
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LBB13_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movl	%r15d, %esi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.6(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%r14d, %edi
	callq	exit@PLT
.Lfunc_end13:
	.size	_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_, .Lfunc_end13-_ZL8exit_msgIJPKciS1_EEv11exit_reasonDpT_
	.cfi_endproc

	.section	.text._ZN10game_state3setEiic,"axG",@progbits,_ZN10game_state3setEiic,comdat
	.weak	_ZN10game_state3setEiic
	.align	16, 0x90
	.type	_ZN10game_state3setEiic,@function
_ZN10game_state3setEiic:                # @_ZN10game_state3setEiic
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp124:
	.cfi_def_cfa_offset 16
	leal	5(%rdx), %eax
	cmpl	$46, %ecx
	je	.LBB14_13
# BB#1:
	cmpl	$87, %ecx
	je	.LBB14_8
# BB#2:
	cmpl	$66, %ecx
	jne	.LBB14_18
# BB#3:
	cmpl	%esi, %eax
	jle	.LBB14_24
# BB#4:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jle	.LBB14_24
# BB#5:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB14_24
# BB#6:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB14_24
# BB#7:                                 # %_ZN10game_state3setEii9FieldType.exit
	movslq	%edx, %rax
	movslq	%esi, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$1, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB14_13:
	cmpl	%esi, %eax
	jle	.LBB14_24
# BB#14:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jle	.LBB14_24
# BB#15:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB14_24
# BB#16:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB14_24
# BB#17:                                # %_ZN10game_state3setEii9FieldType.exit12
	movslq	%edx, %rax
	movslq	%esi, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$3, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB14_8:
	cmpl	%esi, %eax
	jle	.LBB14_24
# BB#9:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jle	.LBB14_24
# BB#10:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB14_24
# BB#11:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB14_24
# BB#12:                                # %_ZN10game_state3setEii9FieldType.exit6
	movslq	%edx, %rax
	movslq	%esi, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$2, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB14_18:
	cmpl	%esi, %eax
	jle	.LBB14_24
# BB#19:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jle	.LBB14_24
# BB#20:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB14_24
# BB#21:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB14_24
# BB#22:                                # %_ZN10game_state3setEii9FieldType.exit18
	movslq	%edx, %rax
	movslq	%esi, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$4, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB14_24:                              # %_ZL15check_valid_posii.exit.thread.i
	leaq	.L.str.57(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType(%rip), %rcx
	movl	$148, %edx
	callq	__assert_fail@PLT
.Lfunc_end14:
	.size	_ZN10game_state3setEiic, .Lfunc_end14-_ZN10game_state3setEiic
	.cfi_endproc

	.text
	.align	16, 0x90
	.type	_ZL13alarm_handleriP9siginfo_tPv,@function
_ZL13alarm_handleriP9siginfo_tPv:       # @_ZL13alarm_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp126:
	.cfi_def_cfa_offset 48
.Ltmp127:
	.cfi_offset %rbx, -16
	cmpl	$14, %edi
	jne	.LBB15_7
# BB#1:
	movq	_ZL14current_player(%rip), %rax
	testq	%rax, %rax
	je	.LBB15_8
# BB#2:
	cmpb	$0, 12(%rax)
	je	.LBB15_3
# BB#5:
	movb	$1, 13(%rax)
	movl	(%rax), %edi
	movl	$9, %esi
	addq	$32, %rsp
	popq	%rbx
	jmp	kill@PLT                # TAILCALL
.LBB15_3:
	movb	$1, 12(%rax)
	movl	(%rax), %edi
	movl	$24, %esi
	callq	kill@PLT
	movq	_ZL9cpu_limit.1(%rip), %rax
	subq	_ZL9cpu_limit.0(%rip), %rax
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	cmoveq	%rcx, %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	leaq	(%rsp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB15_4
# BB#6:
	addq	$32, %rsp
	popq	%rbx
	retq
.LBB15_7:
	leaq	.L.str.59(%rip), %rdi
	leaq	.L.str.60(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv(%rip), %rcx
	movl	$80, %edx
	callq	__assert_fail@PLT
.LBB15_8:
	leaq	.L.str.61(%rip), %rdi
	leaq	.L.str.60(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv(%rip), %rcx
	movl	$83, %edx
	callq	__assert_fail@PLT
.LBB15_4:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.62(%rip), %rsi
	movl	$21, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	callq	abort@PLT
.Lfunc_end15:
	.size	_ZL13alarm_handleriP9siginfo_tPv, .Lfunc_end15-_ZL13alarm_handleriP9siginfo_tPv
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL13child_handleriP9siginfo_tPv,@function
_ZL13child_handleriP9siginfo_tPv:       # @_ZL13child_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp131:
	.cfi_def_cfa_offset 48
.Ltmp132:
	.cfi_offset %rbx, -32
.Ltmp133:
	.cfi_offset %r14, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	8(%rbx), %eax
	addl	$-5, %eax
	cmpl	$2, %eax
	jae	.LBB16_1
# BB#20:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB16_1:
	movl	24(%rbx), %ebp
	cmpl	$15, %ebp
	je	.LBB16_13
# BB#2:
	cmpl	$11, %ebp
	je	.LBB16_4
# BB#3:
	cmpl	$9, %ebp
	je	.LBB16_4
# BB#19:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.63(%rip), %rsi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	_ZNSolsEi@PLT
	leaq	.L.str.70(%rip), %rsi
	movl	$2, %edx
	movq	%rax, %rdi
	jmp	.LBB16_18
.LBB16_13:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB16_21
# BB#14:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i5
	cmpb	$0, 56(%rbx)
	je	.LBB16_16
# BB#15:
	movb	67(%rbx), %al
	jmp	.LBB16_17
.LBB16_16:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB16_17:                              # %_Z8print_nlv.exit7
	movsbl	%al, %esi
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.69(%rip), %rsi
	movl	$39, %edx
	movq	%rbx, %rdi
.LBB16_18:                              # %_Z8print_nlv.exit7
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT # TAILCALL
.LBB16_4:
	movq	_ZSt4cerr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %rbp
	testq	%rbp, %rbp
	jne	.LBB16_5
.LBB16_21:
	callq	_ZSt16__throw_bad_castv@PLT
.LBB16_5:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 56(%rbp)
	jne	.LBB16_6
# BB#7:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
	jmp	.LBB16_8
.LBB16_6:
	movb	67(%rbp), %al
.LBB16_8:                               # %_Z8print_nlv.exit
	movsbl	%al, %esi
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movl	8(%rbx), %eax
	movl	24(%rbx), %esi
	decl	%eax
	leaq	.L.str.75(%rip), %r9
	cmpl	$3, %eax
	movq	%r9, %rcx
	ja	.LBB16_10
# BB#9:                                 # %switch.lookup.i
	cltq
	leaq	.Lswitch.table.99(%rip), %rcx
	movq	(%rcx,%rax,8), %rcx
.LBB16_10:                              # %_ZL11si_code_stri.exit
	leal	-1(%rsi), %eax
	cmpl	$16, %eax
	ja	.LBB16_12
# BB#11:                                # %switch.lookup.i4
	cltq
	leaq	.Lswitch.table.100(%rip), %rdx
	movq	(%rdx,%rax,8), %r9
.LBB16_12:                              # %_ZL10signal_stri.exit
	leaq	.L.str.66(%rip), %rax
	movq	%rax, (%rsp)
	leaq	.L.str.63(%rip), %rdi
	leaq	.L.str.64(%rip), %rdx
	leaq	.L.str.65(%rip), %r8
	callq	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_@PLT
	movq	_ZSt4cerr@GOTPCREL(%rip), %rbx
	leaq	.L.str.44(%rip), %r14
	movl	$6, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.67(%rip), %rsi
	movl	$22, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	_ZL6player(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	leaq	12(%rsp), %rbp
	xorl	%edx, %edx
	movq	%rbp, %rsi
	callq	waitpid@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	callq	waitpid@PLT
	movl	$6, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.68(%rip), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end16:
	.size	_ZL13child_handleriP9siginfo_tPv, .Lfunc_end16-_ZL13child_handleriP9siginfo_tPv
	.cfi_endproc

	.section	.text._Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,"axG",@progbits,_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,comdat
	.weak	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.align	16, 0x90
	.type	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_,@function
_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_:   # @_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp138:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp141:
	.cfi_def_cfa_offset 80
.Ltmp142:
	.cfi_offset %rbx, -56
.Ltmp143:
	.cfi_offset %r12, -48
.Ltmp144:
	.cfi_offset %r13, -40
.Ltmp145:
	.cfi_offset %r14, -32
.Ltmp146:
	.cfi_offset %r15, -24
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rcx, %r13
	movq	%rdx, %rbp
	movl	%esi, %ebx
	movq	%rdi, %r14
	movq	80(%rsp), %r12
	movq	_ZSt4cerr@GOTPCREL(%rip), %r15
	leaq	.L.str.44(%rip), %rsi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	testq	%r14, %r14
	je	.LBB17_1
# BB#2:
	movq	%r14, %rdi
	callq	strlen@PLT
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.LBB17_3
.LBB17_1:
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	leaq	(%r15,%rax), %rdi
	movl	32(%r15,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_3:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movq	_ZSt4cerr@GOTPCREL(%rip), %rdi
	movl	%ebx, %esi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	testq	%rbp, %rbp
	movq	16(%rsp), %r15          # 8-byte Reload
	je	.LBB17_4
# BB#5:
	movq	%rbp, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.LBB17_6
.LBB17_4:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_6:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
	movq	8(%rsp), %rbp           # 8-byte Reload
	testq	%r13, %r13
	je	.LBB17_7
# BB#8:
	movq	%r13, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.LBB17_9
.LBB17_7:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_9:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
	testq	%rbp, %rbp
	je	.LBB17_10
# BB#11:
	movq	%rbp, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.LBB17_12
.LBB17_10:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_12:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
	testq	%r15, %r15
	je	.LBB17_13
# BB#14:
	movq	%r15, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	jmp	.LBB17_15
.LBB17_13:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$1, %esi
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LBB17_15:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
	testq	%r12, %r12
	je	.LBB17_16
# BB#17:
	movq	%r12, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT # TAILCALL
.LBB17_16:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	%rbx, %rdi
	addq	%rax, %rdi
	movl	32(%rbx,%rax), %esi
	orl	$1, %esi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT # TAILCALL
.Lfunc_end17:
	.size	_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_, .Lfunc_end17-_Z5printIJPKciS1_S1_S1_S1_S1_EEvDpT_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_mcp_S.cc,@function
_GLOBAL__sub_I_mcp_S.cc:                # @_GLOBAL__sub_I_mcp_S.cc
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbx, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	__dso_handle@GOTPCREL(%rip), %rdx
	movq	%rbx, %rsi
	popq	%rbx
	jmp	__cxa_atexit@PLT        # TAILCALL
.Lfunc_end18:
	.size	_GLOBAL__sub_I_mcp_S.cc, .Lfunc_end18-_GLOBAL__sub_I_mcp_S.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cnt == 64"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./abalone.cc"
	.size	.L.str.1, 13

	.type	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state,@object # @__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state
.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state:
	.asciz	"bool deserialize_state(int, game_state *)"
	.size	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state, 42

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"buf[63] == '\\0'"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Read "
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	", len "
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid length of move: "
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\n"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unexpected EOF in move at "
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"init"
	.size	.L.str.8, 5

	.type	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc,@object # @__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc
.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc:
	.asciz	"void initialize_state(game_state *, const char *)"
	.size	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"strlen(init) == 63"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"W: "
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	", B: "
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"B:BBBBBBBBBBB..BBB.............................WWW..WWWWWWWWWWW"
	.size	.L.str.12, 64

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Master Control Program\n"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"dT:t:m:M:s:h"
	.size	.L.str.14, 13

	.type	_ZL5debug,@object       # @_ZL5debug
	.local	_ZL5debug
	.comm	_ZL5debug,1,1
	.type	_ZL9mem_limit,@object   # @_ZL9mem_limit
	.data
	.align	8
_ZL9mem_limit:
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.size	_ZL9mem_limit, 16

	.type	_ZL6player,@object      # @_ZL6player
	.local	_ZL6player
	.comm	_ZL6player,32,16
	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"Unable to fork players.\n"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"["
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"] P"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"'s turn.\n"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"State: "
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"No move from player "
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Invalid move from player "
	.size	.L.str.21, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"P"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	" moves.\n"
	.size	.L.str.23, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"End of Line.\n"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"BW"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	" wins after "
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	" turns.\n"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"A draw after "
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"str"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"./board.h"
	.size	.L.str.31, 10

	.type	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc,@object # @__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc
.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc:
	.asciz	"void game_state::toString(char *) const"
	.size	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc, 40

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"i == 64"
	.size	.L.str.32, 8

	.type	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc,@object # @__PRETTY_FUNCTION__._ZN10game_state5setupEPKc
.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc:
	.asciz	"void game_state::setup(const char *)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc, 37

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"strlen(str) == 63"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"str[1] == ':'"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Unknown player type in '%s'\n"
	.size	.L.str.35, 29

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"i == 63"
	.size	.L.str.36, 8

	.type	_ZZNK9game_move8toStringEPcE3row,@object # @_ZZNK9game_move8toStringEPcE3row
	.section	.rodata._ZZNK9game_move8toStringEPcE3row,"aG",@progbits,_ZZNK9game_move8toStringEPcE3row,comdat
	.weak	_ZZNK9game_move8toStringEPcE3row
_ZZNK9game_move8toStringEPcE3row:
	.asciz	"-ABCDEFGHI"
	.size	_ZZNK9game_move8toStringEPcE3row, 11

	.type	_ZZNK9game_move8toStringEPcE4diag,@object # @_ZZNK9game_move8toStringEPcE4diag
	.section	.rodata._ZZNK9game_move8toStringEPcE4diag,"aG",@progbits,_ZZNK9game_move8toStringEPcE4diag,comdat
	.weak	_ZZNK9game_move8toStringEPcE4diag
_ZZNK9game_move8toStringEPcE4diag:
	.asciz	"-123456789"
	.size	_ZZNK9game_move8toStringEPcE4diag, 11

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"Invalid move: source invalid\n"
	.size	.L.str.37, 30

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Invalid move: source2 invalid\n"
	.size	.L.str.38, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Invalid move: missing comma after source\n"
	.size	.L.str.39, 42

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Invalid move: Unexpected char: "
	.size	.L.str.40, 32

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Invalid move: destination invalid\n"
	.size	.L.str.41, 35

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Invalid move: Unexpected chars at end\n"
	.size	.L.str.42, 39

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"i >= 1 && i <= 9"
	.size	.L.str.43, 17

	.type	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc,@object # @__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc
.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc:
	.asciz	"static idx_t game_move::rowToNum(char)"
	.size	.L__PRETTY_FUNCTION__._ZN9game_move8rowToNumEc, 39

	.type	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc,@object # @__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc
.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc:
	.asciz	"static idx_t game_move::diagToNum(char)"
	.size	.L__PRETTY_FUNCTION__._ZN9game_move9diagToNumEc, 40

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"<MCP> "
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"ABCDEFGHI"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	" "
	.size	.L.str.46, 2

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"  "
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"   "
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	" - "
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"    "
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/ \\ "
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\\ / "
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"               1   2   3   4   5"
	.size	.L.str.53, 33

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"\033[31;1mB\033[0m"
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\033[32;1mW\033[0m"
	.size	.L.str.55, 13

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"o"
	.size	.L.str.56, 2

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"check_valid_pos(row, diagonal)"
	.size	.L.str.57, 31

	.type	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType,@object # @__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType
.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType:
	.asciz	"void game_state::set(idx_t, idx_t, FieldType)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state3setEii9FieldType, 46

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Usage: mcp [-s state_string] [-t soft-player-time] [-m soft-player-mem]\n           [-T hard-player-time] [-M hard-player-mem]\n           [-d]\n           [-h]\n           player1 player2\n state_string - 63 character string representing an initial field state\n                (this is the string the MCP prints before every move.)\n player-time  - CPU time per turn in seconds\n player-mem   - Memory limit per player in megabytes\n -d           - turn on debugging, program won't exit on invalid move\n -h           - Show this help\n"
	.size	.L.str.58, 528

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"signum == SIGALRM"
	.size	.L.str.59, 18

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"./mcp-shared.h"
	.size	.L.str.60, 15

	.type	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv,@object # @__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv
.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv:
	.asciz	"void alarm_handler(int, siginfo_t *, void *)"
	.size	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv, 45

	.type	_ZL14current_player,@object # @_ZL14current_player
	.local	_ZL14current_player
	.comm	_ZL14current_player,8,8
	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"p"
	.size	.L.str.61, 2

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Failed to set timer.\n"
	.size	.L.str.62, 22

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Child signal: "
	.size	.L.str.63, 15

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	" ("
	.size	.L.str.64, 3

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	","
	.size	.L.str.65, 2

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	")\n"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"killing the other one\n"
	.size	.L.str.67, 23

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"exiting\n"
	.size	.L.str.68, 9

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"\033[32mCHILD terminated successfully\033[0m\n"
	.size	.L.str.69, 40

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"!\n"
	.size	.L.str.70, 3

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"exited"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"killed"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"coredumped"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"trapped"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"unknown"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"SIGHUP"
	.size	.L.str.76, 7

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"SIGINT"
	.size	.L.str.77, 7

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"SIGILL"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"SIGABRT"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"SIGSEGV"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"SIGFPE"
	.size	.L.str.81, 7

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"SIGPIPE"
	.size	.L.str.82, 8

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"SIGKILL"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"SIGTERM"
	.size	.L.str.84, 8

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"SIGALRM"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"SIGUSR1"
	.size	.L.str.86, 8

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"SIGUSR2"
	.size	.L.str.87, 8

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"SIGBUS"
	.size	.L.str.88, 7

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"SIGCHLD"
	.size	.L.str.89, 8

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"EXECL '%s' FAILED\n"
	.size	.L.str.90, 19

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"execl"
	.size	.L.str.91, 6

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"( p == 0) or (p == 1)"
	.size	.L.str.92, 22

	.type	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi,@object # @__PRETTY_FUNCTION__._ZN10game_state6playerEi
.L__PRETTY_FUNCTION__._ZN10game_state6playerEi:
	.asciz	"void game_state::player(idx_t)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state6playerEi, 31

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"time()"
	.size	.L.str.93, 7

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"localtime()"
	.size	.L.str.94, 12

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"%H:%M:%S"
	.size	.L.str.95, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Move is: "
	.size	.L.str.97, 10

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Player timeout!\n"
	.size	.L.str.98, 17

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_mcp_S.cc
	.type	_ZL9cpu_limit.0,@object # @_ZL9cpu_limit.0
	.data
	.align	8
_ZL9cpu_limit.0:
	.quad	-1                      # 0xffffffffffffffff
	.size	_ZL9cpu_limit.0, 8

	.type	_ZL9cpu_limit.1,@object # @_ZL9cpu_limit.1
	.align	8
_ZL9cpu_limit.1:
	.quad	-1                      # 0xffffffffffffffff
	.size	_ZL9cpu_limit.1, 8

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Final state:"
	.size	.Lstr, 13

	.type	.Lswitch.table,@object  # @switch.table
	.section	.data.rel.ro,"aw",@progbits
	.align	16
.Lswitch.table:
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.46
	.size	.Lswitch.table, 32

	.type	.Lswitch.table.99,@object # @switch.table.99
	.align	16
.Lswitch.table.99:
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.size	.Lswitch.table.99, 32

	.type	.Lswitch.table.100,@object # @switch.table.100
	.align	16
.Lswitch.table.100:
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.75
	.quad	.L.str.78
	.quad	.L.str.75
	.quad	.L.str.79
	.quad	.L.str.88
	.quad	.L.str.81
	.quad	.L.str.83
	.quad	.L.str.86
	.quad	.L.str.80
	.quad	.L.str.87
	.quad	.L.str.82
	.quad	.L.str.85
	.quad	.L.str.84
	.quad	.L.str.75
	.quad	.L.str.89
	.size	.Lswitch.table.100, 136


	.ident	"clang version 3.8.1-17 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
#endif
#endif
