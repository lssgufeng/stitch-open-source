	.file	"main.cpp"
	.section	.text._ZStorSt13_Ios_OpenmodeS_,"axG",@progbits,_ZStorSt13_Ios_OpenmodeS_,comdat
	.weak	_ZStorSt13_Ios_OpenmodeS_
	.type	_ZStorSt13_Ios_OpenmodeS_, @function
_ZStorSt13_Ios_OpenmodeS_:
.LFB590:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	orl	%edx, %eax
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE590:
	.size	_ZStorSt13_Ios_OpenmodeS_, .-_ZStorSt13_Ios_OpenmodeS_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"-h"
.LC1:
	.string	"notes -h : list's help\n"
	.align 4
.LC2:
	.string	"notes -f <filename> : sets the file name to use\n"
.LC3:
	.string	"-f"
.LC4:
	.string	"notes.txt"
.LC5:
	.string	":save"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1034:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1034
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$336, %esp
	leal	24(%esp), %eax
	movl	%eax, (%esp)
.LEHB0:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
.LEHE0:
	movl	$0, 332(%esp)
	leal	311(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	leal	311(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	304(%esp), %eax
	movl	%eax, (%esp)
.LEHB1:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE1:
	movl	$.LC0, 4(%esp)
	leal	304(%esp), %eax
	movl	%eax, (%esp)
.LEHB2:
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
.LEHE2:
	movl	%eax, %ebx
	leal	304(%esp), %eax
	movl	%eax, (%esp)
.LEHB3:
	call	_ZNSsD1Ev
.LEHE3:
	leal	311(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	testb	%bl, %bl
	je	.L3
	movl	$.LC1, 4(%esp)
	movl	$_ZSt4cout, (%esp)
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC2, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE4:
	movl	$0, (%esp)
	call	exit
.L3:
	leal	319(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	leal	319(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	312(%esp), %eax
	movl	%eax, (%esp)
.LEHB5:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE5:
	movl	$.LC3, 4(%esp)
	leal	312(%esp), %eax
	movl	%eax, (%esp)
.LEHB6:
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
.LEHE6:
	movl	%eax, %ebx
	leal	312(%esp), %eax
	movl	%eax, (%esp)
.LEHB7:
	call	_ZNSsD1Ev
.LEHE7:
	leal	319(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	testb	%bl, %bl
	je	.L4
	movl	$32, 4(%esp)
	movl	$16, (%esp)
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	12(%ebp), %edx
	addl	$8, %edx
	movl	(%edx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
.LEHB8:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
.LEHE8:
.L4:
	movl	$0, %ebx
	movl	$0, %esi
	cmpl	$2, 8(%ebp)
	je	.L5
	leal	327(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	movl	$1, %ebx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	leal	327(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	320(%esp), %eax
	movl	%eax, (%esp)
.LEHB9:
	call	_ZNSsC1EPKcRKSaIcE
	movl	$1, %esi
	movl	$.LC3, 4(%esp)
	leal	320(%esp), %eax
	movl	%eax, (%esp)
	call	_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
.LEHE9:
	testb	%al, %al
	je	.L5
	movl	$1, %eax
	jmp	.L6
.L5:
	movl	$0, %eax
.L6:
	movl	%eax, %edi
	movl	%esi, %eax
	testb	%al, %al
	je	.L7
	leal	320(%esp), %eax
	movl	%eax, (%esp)
.LEHB10:
	call	_ZNSsD1Ev
.LEHE10:
.L7:
	testb	%bl, %bl
	je	.L8
	leal	327(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
.L8:
	movl	%edi, %eax
	testb	%al, %al
	je	.L9
	movl	$32, 4(%esp)
	movl	$16, (%esp)
	call	_ZStorSt13_Ios_OpenmodeS_
	movl	%eax, 8(%esp)
	movl	$.LC4, 4(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
.LEHB11:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
.L9:
	movl	$0, 328(%esp)
	jmp	.L10
.L16:
	leal	300(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSsC1Ev
.LEHE11:
	leal	300(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$_ZSt3cin, (%esp)
.LEHB12:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
	movl	$.LC5, 4(%esp)
	leal	300(%esp), %eax
	movl	%eax, (%esp)
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	testb	%al, %al
	je	.L11
	movl	$0, %ebx
	jmp	.L12
.L11:
	cmpl	$1, 332(%esp)
	jne	.L13
	movl	$62, 4(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	leal	300(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movl	$10, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.L13:
	cmpl	$0, 332(%esp)
	jne	.L14
	movl	$1, 332(%esp)
	leal	300(%esp), %eax
	movl	%eax, 4(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movl	$10, 4(%esp)
	movl	%eax, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.LEHE12:
.L14:
	movl	$1, %ebx
.L12:
	leal	300(%esp), %eax
	movl	%eax, (%esp)
.LEHB13:
	call	_ZNSsD1Ev
	cmpl	$1, %ebx
	jne	.L15
.L10:
	cmpl	$1, 328(%esp)
	setne	%al
	testb	%al, %al
	jne	.L16
.L15:
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
.LEHE13:
	movl	$0, %ebx
	leal	24(%esp), %eax
	movl	%eax, (%esp)
.LEHB14:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LEHE14:
	movl	%ebx, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
.L28:
	.cfi_restore_state
	movl	%eax, %ebx
	leal	304(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L18
.L27:
	movl	%eax, %ebx
.L18:
	leal	311(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	jmp	.L19
.L31:
	movl	%eax, %ebx
	leal	312(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L21
.L30:
	movl	%eax, %ebx
.L21:
	leal	319(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	jmp	.L19
.L32:
	movl	%eax, %edi
	movl	%esi, %eax
	testb	%al, %al
	je	.L23
	leal	320(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
.L23:
	movl	%edi, %esi
	jmp	.L24
.L33:
	movl	%eax, %esi
.L24:
	testb	%bl, %bl
	je	.L25
	leal	327(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
.L25:
	movl	%esi, %ebx
	jmp	.L19
.L34:
	movl	%eax, %ebx
	leal	300(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L19
.L29:
	movl	%eax, %ebx
.L19:
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB15:
	call	_Unwind_Resume
.LEHE15:
	.cfi_endproc
.LFE1034:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1034:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1034-.LLSDACSB1034
.LLSDACSB1034:
	.uleb128 .LEHB0-.LFB1034
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1034
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L27-.LFB1034
	.uleb128 0
	.uleb128 .LEHB2-.LFB1034
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L28-.LFB1034
	.uleb128 0
	.uleb128 .LEHB3-.LFB1034
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L27-.LFB1034
	.uleb128 0
	.uleb128 .LEHB4-.LFB1034
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L29-.LFB1034
	.uleb128 0
	.uleb128 .LEHB5-.LFB1034
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L30-.LFB1034
	.uleb128 0
	.uleb128 .LEHB6-.LFB1034
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L31-.LFB1034
	.uleb128 0
	.uleb128 .LEHB7-.LFB1034
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L30-.LFB1034
	.uleb128 0
	.uleb128 .LEHB8-.LFB1034
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L29-.LFB1034
	.uleb128 0
	.uleb128 .LEHB9-.LFB1034
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L32-.LFB1034
	.uleb128 0
	.uleb128 .LEHB10-.LFB1034
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L33-.LFB1034
	.uleb128 0
	.uleb128 .LEHB11-.LFB1034
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L29-.LFB1034
	.uleb128 0
	.uleb128 .LEHB12-.LFB1034
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L34-.LFB1034
	.uleb128 0
	.uleb128 .LEHB13-.LFB1034
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L29-.LFB1034
	.uleb128 0
	.uleb128 .LEHB14-.LFB1034
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB1034
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE1034:
	.text
	.size	main, .-main
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,comdat
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, @function
_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_:
.LFB1054:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSs7compareEPKc
	testl	%eax, %eax
	sete	%al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1054:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.section	.text._ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,"axG",@progbits,_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_,comdat
	.weak	_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.type	_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, @function
_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_:
.LFB1057:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	xorl	$1, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1057:
	.size	_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_, .-_ZStneIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_EPKS3_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1115:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	.L37
	cmpl	$65535, 12(%ebp)
	jne	.L37
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %eax
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	%eax, (%esp)
	call	__cxa_atexit
.L37:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1115:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB1116:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1116:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__sub_I_main
	.section	.rodata
	.align 4
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 4
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.long	_ZL22__gthrw_pthread_cancelm
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.ident	"GCC: (GNU) 4.6.0 20110513 (prerelease)"
	.section	.note.GNU-stack,"",@progbits
