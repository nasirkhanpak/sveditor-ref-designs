/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: n2_8tcasxa_5.s
* Copyright (C) 1995-2007 Sun Microsystems, Inc. All Rights Reserved
* 4150 Network Circle, Santa Clara, California 95054, U.S.A.
*
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER. 
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; version 2 of the License.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*
* For the avoidance of doubt, and except that if any non-GPL license 
* choice is available it will apply instead, Sun elects to use only 
* the General Public License version 2 (GPLv2) at this time for any 
* software where a choice of GPL license versions is made 
* available with the language indicating that GPLv2 or any later version 
* may be used, or where a choice of which version of the GPL is applied is 
* otherwise unspecified. 
*
* Please contact Sun Microsystems, Inc., 4150 Network Circle, Santa Clara, 
* CA 95054 USA or visit www.sun.com if you need additional information or 
* have any questions. 
*
* 
* ========== Copyright Header End ============================================
*/
#define N_CPUS  8
#define REGION_MAPPED_SIZE_RTL 8192
#define REGION_SIZE_RTL (128 * 1024)
#define RESULTS_BUF_SIZE_PER_CPU_RTL 1024
#define PRIVATE_DATA_AREA_PER_CPU_RTL 64

#define ALIGN_PAGE_8K .align 8192
#define ALIGN_PAGE_64K .align 65536
#define ALIGN_PAGE_512K .align 524288
#define ALIGN_PAGE_4M .align 4194304
#define USER_PAGE_CUSTOM_MAP

SECTION .MY_HYP_SEC TEXT_VA = 0x1100150000
attr_text {
        Name=.MY_HYP_SEC,
        hypervisor
	}
.text
.global intr0x60_custom_trap
intr0x60_custom_trap:
	ldxa	[%g0] 0x72, %g2;
	ldxa	[%g0] 0x74, %g1;	
	retry;

.global intr0x190_custom_trap
intr0x190_custom_trap:

.global intr0x190_custom_trap
intr0x190_custom_trap:

#ifdef SJM
! programming the JBI - not quite rrugho
!=====================
!setx 0x0000000006040012, %g1, %g2
!setx 0x8503000010, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000100, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000000, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000400, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000108, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000101, %g1, %g2
!setx 0x9800000008, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000408, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000110, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000202, %g1, %g2
!setx 0x9800000010, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000410, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000118, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000303, %g1, %g2
!setx 0x9800000018, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000418, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000120, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000404, %g1, %g2
!setx 0x9800000020, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000420, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000128, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000505, %g1, %g2
!setx 0x9800000028, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000428, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000130, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000606, %g1, %g2
!setx 0x9800000030, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000430, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000138, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000707, %g1, %g2
!setx 0x9800000038, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000438, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000140, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000808, %g1, %g2
!setx 0x9800000040, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000440, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000148, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000909, %g1, %g2
!setx 0x9800000048, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000448, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000150, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000a0a, %g1, %g2
!setx 0x9800000050, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000450, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000158, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000b0b, %g1, %g2
!setx 0x9800000058, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000458, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000160, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000c0c, %g1, %g2
!setx 0x9800000060, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000460, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000168, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000d0d, %g1, %g2
!setx 0x9800000068, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000468, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000170, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000e0e, %g1, %g2
!setx 0x9800000070, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000470, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000003, %g1, %g2
!setx 0x8500000178, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000f0f, %g1, %g2
!setx 0x9800000078, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000478, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x000000000000007f, %g1, %g2
!setx 0x8503000008, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000001010, %g1, %g2
!setx 0x9800000080, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000480, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000001111, %g1, %g2
!setx 0x9800000088, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000488, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9300000c00, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9300000e20, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9300000e28, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9300000e38, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000008, %g1, %g2
!setx 0x8503000018, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x9800000828, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000000, %g1, %g2
!setx 0x8503000028, %g1, %g3
!stx %g2, [%g3]
!!=====================
!setx 0x0000000000000001, %g1, %g2
!setx 0x8503000020, %g1, %g3
!stx %g2, [%g3]
!!=====================

/***********************************************************************
  Disable L2 Cache Visibility Port
 ***********************************************************************/

setx 0x0000000000000000, %g1, %g2
setx 0x9800001800, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800001820, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800001828, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800001830, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800001838, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800001840, %g1, %g3
stx %g2, [%g3]
!=====================

/***********************************************************************
  Disable IOBridge Visibility Ports
 ***********************************************************************/

setx 0x0000000000000000, %g1, %g2
setx 0x9800001000, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002000, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002008, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002100, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002140, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002160, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002180, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x98000021a0, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002148, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002168, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002188, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x98000021a8, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002150, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002170, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x9800002190, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000000000000000, %g1, %g2
setx 0x98000021b0, %g1, %g3
stx %g2, [%g3]
!=====================

/***********************************************************************
 Configure jbi controller
 ***********************************************************************/

setx 0x03fb303e00000001, %g1, %g2
setx 0x8000000000, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x000000007033fe0f, %g1, %g2
setx 0x8000000008, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x0000003fc0000000, %g1, %g2
setx 0x80000100a0, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0x00000000fe0003ff, %g1, %g2
setx 0x8000004100, %g1, %g3
stx %g2, [%g3]
!=====================

/***********************************************************************
 IOSYNC cycles to start sjm
 ***********************************************************************/

setx 0xdeadbeefdeadbeef, %g1, %g2
setx 0xcf00beef00, %g1, %g3
stx %g2, [%g3]
!=====================
setx 0xdeadbeefdeadbeef, %g1, %g2
setx 0xef00beef00, %g1, %g3
stx %g2, [%g3]

!=============================
done;

#else
#ifdef  DC_ON_OFF
	
	and	%i0, 0x1, %i0
	brz	%i0, on
	nop

        mov     0xd, %i0
	ba	finish_dc_on_off
        stxa    %l0, [%g0] 0x45         /* turn D-cache off */
on:        
        mov     0xf, %i0
        stxa    %i0, [%g0] 0x45         /* turn D-cache back on */

finish_dc_on_off:
	done

#else
	stxa	%i0, [%g0] 0x73;	
	done;
#endif
#endif
!============================================================================

#define ENABLE_T0_Fp_exception_ieee_754_0x21
#define ENABLE_T0_Fp_exception_other_0x22
#define ENABLE_T0_Fp_disabled_0x20
#define ENABLE_T0_Illegal_instruction_0x10
#define ENABLE_T1_Illegal_instruction_0x10
#define ENABLE_HT0_Illegal_instruction_0x10
#define ENABLE_HT1_Illegal_instruction_0x10
#define ENABLE_T0_Clean_Window_0x24
#define MAIN_PAGE_NUCLEUS_ALSO
#define MAIN_PAGE_HV_ALSO
#define MAIN_PAGE_VA_IS_RA_ALSO




#define H_T0_Trap_Instruction_0
#define My_T0_Trap_Instruction_0	\
	ta      0x90;			\
	done;

#define H_HT0_HTrap_Instruction_0 intr0x190_custom_trap
#ifdef SJM
#define My_HT0_HTrap_Instruction_0 \
	setx intr0x190_custom_trap, %g1, %g2; \
	jmp %g2; nop
#else
#define My_HT0_HTrap_Instruction_0      \
	stxa    %i0, [%g0] 0x73;        \
	done;
#endif

#define H_HT0_Interrupt_0x60 intr0x60_custom_trap
#define My_HT0_Interrupt_0x60   \
        ldxa    [%g0] 0x72, %g2;        \
        ldxa    [%g0] 0x74, %g1;        \
        retry;
#define H_HT0_Trap_Instruction_5
#define My_HT0_Trap_Instruction_5   \
        ldxa [%g0 + %g0]0x45, %g1;     \
		membar #Sync;  \
        xor  %g1, 19, %g1;   \
        stxa %g1, [%g0 + %g0]0x45;  \
		wrpr %g0, 0x200, %pstate;
        done;

#ifndef THREAD_COUNT
#define THREAD_COUNT 8
#endif

#ifndef THREAD_STRIDE
#define THREAD_STRIDE 1
#endif
#define SKIP_TRAPCHECK
! force ta T_RD_THID to return thread%8 (aka 0-7)
#define PORTABLE_CORE
#include "hboot.s"


!try later:
!	stxa    %l6, [$8] (0x22 | ($2 & 0x9)) ! ASI is randomly set
!===========
define(BST_INIT, `
	add     $6, ($7 & 0xfff0), $8	! 4-byte align the offset
	stxa    %l6, [$8] 0x22		! ASI is randomly set
')

!try later:
!ldda    [$8] (0x22 | ($2 & 0x9)), %l6 ! ASI is randomly set
!===========
define(BLD_INIT, `
        add     $6, ($7 & 0xfff0), $8 	! 4-byte align the offset
        ldda    [$8] 0x22, %l6 		! ASI is randomly set
')

define(CHECK_PROC_ID,`
check_cpu_id: 

	wr	%g0, 0x4, %fprs         /* make sure fef is 1 */
	mov 	THREAD_STRIDE, %l2
	th_fork(thread,%l0)

thread_0:
#ifdef SJM
	ta 	0x30
#endif
	mov 	0, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
	
thread_1:
	mov 	1, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_2:
	mov 	2, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_3:
	mov 	3, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_4:
	mov 	4, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_5:
	mov 	5, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_6:
	mov 	6, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_7:
	mov 	7, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_8:
	mov 	8, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_9:
	mov 	9, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_10:
	mov 	10, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_11:
	mov 	11, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_12:
	mov 	12, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_13:
	mov 	13, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_14:
	mov 	14, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_15:
	mov 	15, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_16:
	mov 	16, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_17:
	mov 	17, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_18:
	mov 	18, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_19:
	mov 	19, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_20:
	mov 	20, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_21:
	mov 	21, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_22:
	mov 	22, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_23:
	mov 	23, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_24:
	mov 	24, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_25:
	mov 	25, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_26:
	mov 	26, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
	
thread_27:
	mov 	27, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_28:
	mov 	28, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_29:
	mov 	29, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_30:
	mov 	30, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_31:
	mov 	31, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop

thread_32:
    mov     32, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_33:
    mov     33, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_34:
    mov     34, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_35:
    mov     35, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_36:
    mov     36, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_37:
    mov     37, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_38:
    mov     38, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_39:
    mov     39, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_40:
    mov     40, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_41:
    mov     41, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_42:
    mov     42, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_43:
    mov     43, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_44:
    mov     44, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_45:
    mov     45, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_46:
    mov     46, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_47:
    mov     47, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_48:
    mov     48, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_49:
    mov     49, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_50:
    mov     50, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_51:
    mov     51, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_52:
    mov     52, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_53:
    mov     53, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_54:
    mov     54, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_55:
    mov     55, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_56:
    mov     56, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_57:
    mov     57, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_58:
    mov     58, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_59:
    mov     59, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_60:
    mov     60, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_61:
    mov     61, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_62:
    mov     62, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

thread_63:
    mov     63, %g1
        udivx   %g1, %l2, %g1
    ba  entry_point; nop

entry_point:
#ifdef RTGPRIV
	ta	T_CHANGE_PRIV
#endif
	
')
! --- Common Macro Definitions ---
!
! macros will be instantiated with these arguments
! macro_name(P#, rand#, my_cpu#, PA_val, VA_val, VA_reg, VA_offset, \
!            tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3)
!
! P# - Pid, just in case one needs unique number
! rand# - random number
! my_cpu# - CPU id
! PA_val - shared memory physisal address value
! VA_val - shared memory virtual address value
! VA_reg - register containing VA region base address
! VA_offset - VA_reg + VA_offset will give correct VA address value
! tmp_reg0-tmp_reg3 - integer registers for arbitrary use within the macro
!                     tmp_reg0 & tmp_reg1 are even-odd register pair
!
! VA_val may be incorrect since VA will be determined at compile time by assembler
! and may not available at diag generation time, but VA_reg+VA_offset is valid
!
! ex. SAMPLE(1, 1249, 0, 0x43400100, 0x100, %i1, 0x100, %l6, %l7, %o5, %l3)
!
! Sample macro 1:
!  load unsigned byte from the given shared addr into tmp_reg1
!  the given shared addr is 4-byte aligned and we will randomly
!  pick one byte from the 4 bytes.
! 
! define(SAMPLE, `
!        ldub   [$6+$7+($2 mod 4)], $8
! ')
!
! Can also use C-like macro definition format.
!
! Sample macro 2:
!   issue an "ldda" instruction to the randomly picked shared location
!   (aligned it to 16-byte boundary first) with a random ASI value among
!   0x22, 0x23, 0x2a, and 0x2b (utilizing the provided "rand" value).
!
! #define BLD_INIT(Pid, rand, my_cpu, PA_val, \
!                 VA_val, VA_reg, VA_offset, \
!                 tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
!   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
!   ldda [tmp_reg2] (0x22 | (rand & 0x9)), tmp_reg0;
!
! ---

! Macro NOPTRAIN
! Train of NOPs

#define NOPTRAIN(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
		nop;\
		nop;\
		nop;\
		nop;


! Macro STTRAIN4
! Train of total 4 of UW stores.
! Note: doesn't use shared addresses

#define STTRAIN4(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        set 5120, tmp_reg1; \
        add %i0, tmp_reg1, tmp_reg1; \
        set rand, tmp_reg2; \
        stw tmp_reg2, [tmp_reg1]; \
        stw tmp_reg2, [tmp_reg1+4]; \
        stw tmp_reg2, [tmp_reg1+8]; \
        stw tmp_reg2, [tmp_reg1+16];

! Macro STTRAIN8
! Train of total 8 of UW stores 

#define STTRAIN8(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        set 5120, tmp_reg1; \
        add %i0, tmp_reg1, tmp_reg1; \
        set rand, tmp_reg2; \
        add tmp_reg2, rand % 4096, tmp_reg3; \
        stw tmp_reg2, [tmp_reg1]; \
        stw tmp_reg2, [tmp_reg1+4]; \
        stw tmp_reg2, [tmp_reg1+8]; \
        stw tmp_reg2, [tmp_reg1+12]; \
        stw tmp_reg3, [tmp_reg1+4]; \
        stw tmp_reg3, [tmp_reg1+12]; \
        stw tmp_reg3, [tmp_reg1]; \
        stw tmp_reg3, [tmp_reg1+8];
 
! Macro LDTRAIN4
! Train of total 4 of UW Loads
! Note the values of those loads inside the macro will not be analized,
! even though the accesses are [possibly] made to the shared locations

#define LDTRAIN4(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        ld [%i0], tmp_reg1; \
        ld [%i1+4], tmp_reg1; \
        ld [%i2+8], tmp_reg1; \
        ld [%i3+12], tmp_reg1;

! Macro LDTRAIN8

#define LDTRAIN8(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        ld [%i3], tmp_reg1; \
        ld [%i2+4], tmp_reg1; \
        ld [%i1+8], tmp_reg2; \
        ld [%i0+12], tmp_reg2; \
        ld [%i3+4], tmp_reg3; \
        ld [%i2], tmp_reg3; \
        ld [%i1+12], tmp_reg4; \
        ld [%i0+8], tmp_reg4;

! Macro PREFETCHTRAIN4

#define PREFETCHTRAIN4(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        prefetch [%i0+4], 0; \
        prefetch [%i1+12], 0; \
        prefetch [%i2+8], 0; \
        prefetch [%i3], 0;

! Macro PREFETCHTRAIN8

#define PREFETCHTRAIN8(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        prefetch [%i3], 0; \
        prefetch [%i2+4], 0; \
        prefetch [%i1+8], 0; \
        prefetch [%i0+12], 0; \
        prefetch [%i3+4], 1; \
        prefetch [%i2], 1; \
        prefetch [%i1+12], 1; \
        prefetch [%i0+8], 1;

! Macro CASTRAIN4
! This is an interesting macro that will probably create the write congessions
! access to the shared locations (offsets from bases have to be adjusted)
! the values of the locations are not changed, so it should not affect analysis

#define CASTRAIN4(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        set 128, tmp_reg1;\
        add %i0, tmp_reg1, tmp_reg1;\
        set 256, tmp_reg2;\
        add %i1, tmp_reg2, tmp_reg2;\
        ld [tmp_reg1], tmp_reg3;\
        ld [tmp_reg2], tmp_reg4;\
        cas [tmp_reg1], tmp_reg3, tmp_reg3;\
        cas [tmp_reg1], tmp_reg3, tmp_reg3;\
        cas [tmp_reg2], tmp_reg4, tmp_reg4;\
        cas [tmp_reg2], tmp_reg4, tmp_reg4;

! CASTRAIN8
! yet another flavor of cas train theme that actually always use shared locations
! given by the specified instance arguments for the first 4 cases
! and then follows then with another 4 to a randomized offset

#define CASTRAIN8(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
  add VA_reg, VA_offset, tmp_reg1;\
  add VA_reg, (rand&0x0ffc), tmp_reg2;\
  ld [tmp_reg1], tmp_reg3;\
  cas [tmp_reg1], tmp_reg3, tmp_reg3;\
  cas [tmp_reg1], tmp_reg3, tmp_reg3;\
  cas [tmp_reg1], tmp_reg3, tmp_reg3;\
  cas [tmp_reg1], tmp_reg3, tmp_reg3;\
  ld  [tmp_reg2], tmp_reg4;\
  cas [tmp_reg2], tmp_reg4, tmp_reg4;\
  cas [tmp_reg2], tmp_reg4, tmp_reg4;\
  cas [tmp_reg2], tmp_reg4, tmp_reg4;\
  cas [tmp_reg2], tmp_reg4, tmp_reg4;

! Macro ST_BR_ANLD_CAS
! this is meant to reproduce NG6025
! the scenario is the anulled load in the delay slot of the branch is 
! not wiped completely, which creates false RAW hazard, and the following cas
! is getting screwed
! WARNING: there is a store to the %i0+128, which can potentially be a shared 
! location. When using this macro, make sure that the vicinity of offset 128 in
! region 0 is not used

#define ST_BR_ANLD_CAS(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        set 128, tmp_reg1;\
        add %i0, tmp_reg1, tmp_reg1;\
        set rand, tmp_reg3;\
        stw tmp_reg3, [tmp_reg1];\
        ba,a 1;\
        cas [tmp_reg1], tmp_reg3, tmp_reg4;

#define ASI_BLOCK(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
        setx 0x060, tmp_reg1, tmp_reg2; \
        stxa %g0, [tmp_reg2] 0x38;

! Macro SELF_MODIFY
! do a read-unmodify-write at address pc + random[0..0x80]
! this is targetted to catch bugs due to sharing/modification
! of data between D$ and I$. (e.g. Niagara1, Bug #6372)
! 1. 0x80 chosen arbitrarily, is another number better
! 2. should we include an iflush ?
! 3. WT.MACRO.SELF_MODIFY should be given a small non-0 weight by default
! 4. Possible variation: a macro which only does a load
!    from the instruction stream instead of a load-store. 
!    (Niagara1 bug #6372 did not involve stores to instruction
!    stream, just sharing of unmodified data between I$ and D$.)
! 5. this macro needs text segment to be writable. On system runs,
!    this is achieved by using a special map file for the linker.
! - sgh, 25 may 04

#define SELF_MODIFY(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
	rd    %pc, tmp_reg0; \
	ld    [ tmp_reg0 + (rand & 0x7c)], tmp_reg1; \
	st    tmp_reg1, [ tmp_reg0 + (rand & 0x7c)] 

#define ASI_BLOCK(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
        setx 0x060, tmp_reg1, tmp_reg2; \
        stxa %g0, [tmp_reg2] 0x38;


#define ASI_BLOCK_VA_HOLE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
        setx 0x8559e06ff33bad10, tmp_reg1, tmp_reg2; \
        stxa %g0, [tmp_reg2] 0x80;
	
#define PREFETCH_VA_HOLE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        setx 0x8559e06ff33bad10, tmp_reg1, tmp_reg2; \
        prefetch [tmp_reg2], 0; \
        prefetch [tmp_reg2+4], 1; \
        prefetch [tmp_reg2+8], 2; \
        prefetch [tmp_reg2+12], 3; \
        prefetch [tmp_reg2+4], 4; \
        prefetch [tmp_reg2], 5; \
        prefetch [tmp_reg2+12], 6; \
        prefetch [tmp_reg2+8], 7;

#define LOAD_VA_HOLE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        setx 0x8559e06ff33bad10, tmp_reg1, tmp_reg2; \
        ld [tmp_reg2], tmp_reg1; \
        ld [tmp_reg2+4], tmp_reg1; \
        ld [tmp_reg2+8], tmp_reg1; \
        ld [tmp_reg2+12], tmp_reg1;



#define STORE_VA_HOLE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        setx 0x8559e06ff33bad10, tmp_reg2, tmp_reg1; \
        set rand, tmp_reg2; \
        add tmp_reg2, rand % 4096, tmp_reg3; \
        stw tmp_reg2, [tmp_reg1]; \
        stw tmp_reg2, [tmp_reg1+4]; \
        stw tmp_reg2, [tmp_reg1+8]; \
        stw tmp_reg2, [tmp_reg1+12]; \
        stw tmp_reg3, [tmp_reg1+4]; \
        stw tmp_reg3, [tmp_reg1+12]; \
        stw tmp_reg3, [tmp_reg1]; \
        stw tmp_reg3, [tmp_reg1+8];	

#define CAS_VA_HOLE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        setx 0x8559e06ff33bad10, tmp_reg3, tmp_reg1; \
        setx 0x8559e06ff33bad10, tmp_reg3, tmp_reg2; \
        add tmp_reg2, rand % 4096, tmp_reg3; \
        cas [tmp_reg1], tmp_reg3, tmp_reg3;\
        cas [tmp_reg2], tmp_reg4, tmp_reg4;

#define IDC_FLIP(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        ta 0xb5; \
		ta T_CHANGE_NONHPRIV;

! this macro produce ldda/stda to 
! ASI_BLOCK_AS_IF_USER_PRIMARY            0x16
! ASI_BLOCK_AS_IF_USER_SECONDARY          0x17
! ASI_BLOCK_AS_IF_USER_PRIMARY_LITTLE     0x1e
! ASI_BLOCK_AS_IF_USER_SECONDARY_LITTLE   0x1f
!! hardcode for now since illegal asi not working in RS
#define BLD_16(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   ldda [tmp_reg3]0x16, tmp_reg0;
#define BLD_17(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   ldda [tmp_reg3]0x17, tmp_reg0;
#define BLD_1e(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   ldda [tmp_reg3]0x1e, tmp_reg0;
#define BLD_1f(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   ldda [tmp_reg3]0x1f, tmp_reg0;

#define BST_16(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   stda tmp_reg0, [tmp_reg3]0x16;
#define BST_17(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   stda tmp_reg0, [tmp_reg3]0x17;
#define BST_1e(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   stda tmp_reg0, [tmp_reg3]0x1e;
#define BST_1f(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ta      T_CHANGE_PRIV;\
   ta      T_CHANGE_HPRIV;\
   stda tmp_reg0, [tmp_reg3]0x1f;

#define BLD_INIT_2(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ldda [tmp_reg3] (0x27 | (rand & 0xf)), tmp_reg0;
#define BST_INIT_2(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   stda tmp_reg0, [tmp_reg3] (0x27 | (rand & 0xf));
#define BLD_INIT_E(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   ldda [tmp_reg3] (0xe2 | (rand & 0xb)), tmp_reg0;
#define BST_INIT_E(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0xfff0), tmp_reg3; \
   stda tmp_reg0, [tmp_reg3] (0xe2 | (rand & 0xb));
#define PREFETCHA(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg0, tmp_reg1, tmp_reg2, tmp_reg3) \
   add  VA_reg, (VA_offset & 0x00ff), tmp_reg3; \
   prefetch [%i1], (rand & 0x1f); \
   prefetch [%i1 + ((rand >> 5) & 0x1f)], ((rand >> 5) & 0x1f); \
   prefetcha [%i1]((rand >> 5) & 0x1f), (0x0 | ((rand >> 5) & 0x1f));
#define STBYTE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        add  VA_reg, (VA_offset & 0xff00), tmp_reg1; \
        set rand, tmp_reg2; \
        stb tmp_reg2, [tmp_reg1+(rand & 0x5f)];
#define LDBYTE(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        add  VA_reg, (VA_offset & 0xff00), tmp_reg1; \
        ldub [tmp_reg1+(rand & 0x5f)], tmp_reg2;
#define STBYTE1(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        add  VA_reg, (VA_offset & 0xff00), tmp_reg1;\
		set 5200, tmp_reg2; \
		add tmp_reg2, tmp_reg1, tmp_reg1; \
		set rand, tmp_reg2; \
		stb tmp_reg2, [tmp_reg1+(rand & 0x5f)];
#define STINT(Pid, rand, my_cpu, PA_val, VA_val, VA_reg, VA_offset, tmp_reg1, tmp_reg2, tmp_reg3, tmp_reg4) \
        set rand, tmp_reg1; \
        stha  tmp_reg1,[%g0+%g0](0x73); \
        stda tmp_reg1, [%g0+%g0](0x73);
define(EN_INTERRUPTS,`
nop
')

define(DIS_INTERRUPTS,`
nop
')

define(CHECK_DISPATCH_STATUS,`
nop
')

define(CHECK_RECEIVE_STATUS,`
nop
')

define(WRITE_INTR_DATA_REGS,`
nop
')

define(INTR_SET_DISPATCH_VECTOR,`
add      %g0, $3, $4
sllx     $4, 8,  $5      ! DEST ID
add      %g0, $2, $4      ! VECTOR NUMBER
or       $5, $4, $5
mov      %i0, $4
mov      $5, %i0
ta       0x30
mov      $4, %i0
')

define(DSPCH_INTERRUPT,`
nop
')

#define REGION0_ALIAS3_O 0x0
#define REGION1_ALIAS3_O 0x20000
#define REGION2_ALIAS3_O 0x40000
#define REGION3_ALIAS3_O 0x60000
#define REGION4_ALIAS3_O 0x80000
#define REGION5_ALIAS3_O 0xa0000
#define REGION6_ALIAS3_O 0xc0000
#define REGION7_ALIAS3_O 0xe0000
#define REPLACEMENT0_ALIAS3_O 0x100000
#define REGION0_ALIAS2_O 0x200000
#define REGION1_ALIAS2_O 0x220000
#define REGION2_ALIAS2_O 0x240000
#define REGION3_ALIAS2_O 0x260000
#define REGION4_ALIAS2_O 0x280000
#define REGION5_ALIAS2_O 0x2a0000
#define REGION6_ALIAS2_O 0x2c0000
#define REGION7_ALIAS2_O 0x2e0000
#define REPLACEMENT0_ALIAS2_O 0x300000
#define REGION0_ALIAS1_O 0x400000
#define REGION1_ALIAS1_O 0x420000
#define REGION2_ALIAS1_O 0x440000
#define REGION3_ALIAS1_O 0x460000
#define REGION4_ALIAS1_O 0x480000
#define REGION5_ALIAS1_O 0x4a0000
#define REGION6_ALIAS1_O 0x4c0000
#define REGION7_ALIAS1_O 0x4e0000
#define REPLACEMENT0_ALIAS1_O 0x500000
#define REGION0_ALIAS0_O 0x600000
#define REGION1_ALIAS0_O 0x620000
#define REGION2_ALIAS0_O 0x640000
#define REGION3_ALIAS0_O 0x660000
#define REGION4_ALIAS0_O 0x680000
#define REGION5_ALIAS0_O 0x6a0000
#define REGION6_ALIAS0_O 0x6c0000
#define REGION7_ALIAS0_O 0x6e0000
#define REPLACEMENT0_ALIAS0_O 0x700000


#define USER_PAGE_CUSTOM_MAP
SECTION .MAIN TEXT_VA=0x1000000
attr_text {
	Name = .MAIN,
	VA=0x1000000,
	RA=0x130000000,
	PA=ra2pa(0x130000000,0),
part_0_ctx_nonzero_tsb_config_1,
 TTE_EP=1,
	TTE_G=1,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=0
	}

attr_text {
	Name = .MAIN,
	VA=0x1000000,
	RA=0x130000000,
	PA=ra2pa(0x130000000,0),
part_0_ctx_nonzero_tsb_config_0,
 TTE_EP=1,
	TTE_G=1,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

SECTION tsotool_unshared_data DATA_VA=0x21400000
attr_data {
	Name = tsotool_unshared_data,
	VA=0x21400000,
	RA=0x21400000,
	PA=ra2pa(0x21400000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=1,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region0_alias3_4 DATA_VA=0x6000000
attr_data {
	Name = region0_alias3_4,
	VA=0x6000000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias3_4 DATA_VA=0x6020000
attr_data {
	Name = region1_alias3_4,
	VA=0x6020000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias3_4 DATA_VA=0x6040000
attr_data {
	Name = region2_alias3_4,
	VA=0x6040000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias3_4 DATA_VA=0x6060000
attr_data {
	Name = region3_alias3_4,
	VA=0x6060000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias3_4 DATA_VA=0x6080000
attr_data {
	Name = region4_alias3_4,
	VA=0x6080000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias3_4 DATA_VA=0x60a0000
attr_data {
	Name = region5_alias3_4,
	VA=0x60a0000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias3_4 DATA_VA=0x60c0000
attr_data {
	Name = region6_alias3_4,
	VA=0x60c0000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias3_4 DATA_VA=0x60e0000
attr_data {
	Name = region7_alias3_4,
	VA=0x60e0000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias3_4 DATA_VA=0x6100000
attr_data {
	Name = replacement0_alias3_4,
	VA=0x6100000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias3_4 DATA_VA=0x6120000
attr_data {
	Name = replacement1_alias3_4,
	VA=0x6120000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias3_4 DATA_VA=0x6140000
attr_data {
	Name = replacement2_alias3_4,
	VA=0x6140000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias3_4 DATA_VA=0x6160000
attr_data {
	Name = replacement3_alias3_4,
	VA=0x6160000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias3_4 DATA_VA=0x6180000
attr_data {
	Name = replacement4_alias3_4,
	VA=0x6180000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias3_4 DATA_VA=0x61a0000
attr_data {
	Name = replacement5_alias3_4,
	VA=0x61a0000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias3_4 DATA_VA=0x61c0000
attr_data {
	Name = replacement6_alias3_4,
	VA=0x61c0000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias3_4 DATA_VA=0x61e0000
attr_data {
	Name = replacement7_alias3_4,
	VA=0x61e0000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias2_4 DATA_VA=0x6200000
attr_data {
	Name = region0_alias2_4,
	VA=0x6200000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias2_4 DATA_VA=0x6220000
attr_data {
	Name = region1_alias2_4,
	VA=0x6220000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias2_4 DATA_VA=0x6240000
attr_data {
	Name = region2_alias2_4,
	VA=0x6240000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias2_4 DATA_VA=0x6260000
attr_data {
	Name = region3_alias2_4,
	VA=0x6260000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias2_4 DATA_VA=0x6280000
attr_data {
	Name = region4_alias2_4,
	VA=0x6280000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias2_4 DATA_VA=0x62a0000
attr_data {
	Name = region5_alias2_4,
	VA=0x62a0000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias2_4 DATA_VA=0x62c0000
attr_data {
	Name = region6_alias2_4,
	VA=0x62c0000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias2_4 DATA_VA=0x62e0000
attr_data {
	Name = region7_alias2_4,
	VA=0x62e0000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias2_4 DATA_VA=0x6300000
attr_data {
	Name = replacement0_alias2_4,
	VA=0x6300000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias2_4 DATA_VA=0x6320000
attr_data {
	Name = replacement1_alias2_4,
	VA=0x6320000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias2_4 DATA_VA=0x6340000
attr_data {
	Name = replacement2_alias2_4,
	VA=0x6340000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias2_4 DATA_VA=0x6360000
attr_data {
	Name = replacement3_alias2_4,
	VA=0x6360000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias2_4 DATA_VA=0x6380000
attr_data {
	Name = replacement4_alias2_4,
	VA=0x6380000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias2_4 DATA_VA=0x63a0000
attr_data {
	Name = replacement5_alias2_4,
	VA=0x63a0000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias2_4 DATA_VA=0x63c0000
attr_data {
	Name = replacement6_alias2_4,
	VA=0x63c0000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias2_4 DATA_VA=0x63e0000
attr_data {
	Name = replacement7_alias2_4,
	VA=0x63e0000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias1_4 DATA_VA=0x6400000
attr_data {
	Name = region0_alias1_4,
	VA=0x6400000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias1_4 DATA_VA=0x6420000
attr_data {
	Name = region1_alias1_4,
	VA=0x6420000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias1_4 DATA_VA=0x6440000
attr_data {
	Name = region2_alias1_4,
	VA=0x6440000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias1_4 DATA_VA=0x6460000
attr_data {
	Name = region3_alias1_4,
	VA=0x6460000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias1_4 DATA_VA=0x6480000
attr_data {
	Name = region4_alias1_4,
	VA=0x6480000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias1_4 DATA_VA=0x64a0000
attr_data {
	Name = region5_alias1_4,
	VA=0x64a0000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias1_4 DATA_VA=0x64c0000
attr_data {
	Name = region6_alias1_4,
	VA=0x64c0000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias1_4 DATA_VA=0x64e0000
attr_data {
	Name = region7_alias1_4,
	VA=0x64e0000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias1_4 DATA_VA=0x6500000
attr_data {
	Name = replacement0_alias1_4,
	VA=0x6500000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias1_4 DATA_VA=0x6520000
attr_data {
	Name = replacement1_alias1_4,
	VA=0x6520000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias1_4 DATA_VA=0x6540000
attr_data {
	Name = replacement2_alias1_4,
	VA=0x6540000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias1_4 DATA_VA=0x6560000
attr_data {
	Name = replacement3_alias1_4,
	VA=0x6560000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias1_4 DATA_VA=0x6580000
attr_data {
	Name = replacement4_alias1_4,
	VA=0x6580000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias1_4 DATA_VA=0x65a0000
attr_data {
	Name = replacement5_alias1_4,
	VA=0x65a0000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias1_4 DATA_VA=0x65c0000
attr_data {
	Name = replacement6_alias1_4,
	VA=0x65c0000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias1_4 DATA_VA=0x65e0000
attr_data {
	Name = replacement7_alias1_4,
	VA=0x65e0000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias0 DATA_VA=0x6600000
attr_data {
	Name = region0_alias0,
	VA=0x6600000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region1_alias0 DATA_VA=0x6620000
attr_data {
	Name = region1_alias0,
	VA=0x6620000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region2_alias0 DATA_VA=0x6640000
attr_data {
	Name = region2_alias0,
	VA=0x6640000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region3_alias0 DATA_VA=0x6660000
attr_data {
	Name = region3_alias0,
	VA=0x6660000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region4_alias0 DATA_VA=0x6680000
attr_data {
	Name = region4_alias0,
	VA=0x6680000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region5_alias0 DATA_VA=0x66a0000
attr_data {
	Name = region5_alias0,
	VA=0x66a0000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region6_alias0 DATA_VA=0x66c0000
attr_data {
	Name = region6_alias0,
	VA=0x66c0000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION region7_alias0 DATA_VA=0x66e0000
attr_data {
	Name = region7_alias0,
	VA=0x66e0000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement0_alias0 DATA_VA=0x6700000
attr_data {
	Name = replacement0_alias0,
	VA=0x6700000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement1_alias0 DATA_VA=0x6720000
attr_data {
	Name = replacement1_alias0,
	VA=0x6720000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement2_alias0 DATA_VA=0x6740000
attr_data {
	Name = replacement2_alias0,
	VA=0x6740000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement3_alias0 DATA_VA=0x6760000
attr_data {
	Name = replacement3_alias0,
	VA=0x6760000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement4_alias0 DATA_VA=0x6780000
attr_data {
	Name = replacement4_alias0,
	VA=0x6780000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement5_alias0 DATA_VA=0x67a0000
attr_data {
	Name = replacement5_alias0,
	VA=0x67a0000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement6_alias0 DATA_VA=0x67c0000
attr_data {
	Name = replacement6_alias0,
	VA=0x67c0000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION replacement7_alias0 DATA_VA=0x67e0000
attr_data {
	Name = replacement7_alias0,
	VA=0x67e0000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1
	}

SECTION non_fault_area_4 DATA_VA=0x0
attr_data {
	Name = non_fault_area_4,
	VA=0x0,
	RA=0x47002000,
	PA=ra2pa(0x47002000,0),
	part_0_ctx_nonzero_tsb_config_0,
	TTE_G=0,
	TTE_Context=PCONTEXT,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=1,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=1,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias3_0 DATA_VA=0x6000000
attr_data {
	Name = region0_alias3_0,
	VA=0x6000000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias3_0 DATA_VA=0x6020000
attr_data {
	Name = region1_alias3_0,
	VA=0x6020000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias3_0 DATA_VA=0x6040000
attr_data {
	Name = region2_alias3_0,
	VA=0x6040000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias3_0 DATA_VA=0x6060000
attr_data {
	Name = region3_alias3_0,
	VA=0x6060000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias3_0 DATA_VA=0x6080000
attr_data {
	Name = region4_alias3_0,
	VA=0x6080000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias3_0 DATA_VA=0x60a0000
attr_data {
	Name = region5_alias3_0,
	VA=0x60a0000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias3_0 DATA_VA=0x60c0000
attr_data {
	Name = region6_alias3_0,
	VA=0x60c0000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias3_0 DATA_VA=0x60e0000
attr_data {
	Name = region7_alias3_0,
	VA=0x60e0000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias3_0 DATA_VA=0x6100000
attr_data {
	Name = replacement0_alias3_0,
	VA=0x6100000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias3_0 DATA_VA=0x6120000
attr_data {
	Name = replacement1_alias3_0,
	VA=0x6120000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias3_0 DATA_VA=0x6140000
attr_data {
	Name = replacement2_alias3_0,
	VA=0x6140000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias3_0 DATA_VA=0x6160000
attr_data {
	Name = replacement3_alias3_0,
	VA=0x6160000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias3_0 DATA_VA=0x6180000
attr_data {
	Name = replacement4_alias3_0,
	VA=0x6180000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias3_0 DATA_VA=0x61a0000
attr_data {
	Name = replacement5_alias3_0,
	VA=0x61a0000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias3_0 DATA_VA=0x61c0000
attr_data {
	Name = replacement6_alias3_0,
	VA=0x61c0000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias3_0 DATA_VA=0x61e0000
attr_data {
	Name = replacement7_alias3_0,
	VA=0x61e0000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias2_0 DATA_VA=0x6200000
attr_data {
	Name = region0_alias2_0,
	VA=0x6200000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias2_0 DATA_VA=0x6220000
attr_data {
	Name = region1_alias2_0,
	VA=0x6220000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias2_0 DATA_VA=0x6240000
attr_data {
	Name = region2_alias2_0,
	VA=0x6240000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias2_0 DATA_VA=0x6260000
attr_data {
	Name = region3_alias2_0,
	VA=0x6260000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias2_0 DATA_VA=0x6280000
attr_data {
	Name = region4_alias2_0,
	VA=0x6280000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias2_0 DATA_VA=0x62a0000
attr_data {
	Name = region5_alias2_0,
	VA=0x62a0000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias2_0 DATA_VA=0x62c0000
attr_data {
	Name = region6_alias2_0,
	VA=0x62c0000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias2_0 DATA_VA=0x62e0000
attr_data {
	Name = region7_alias2_0,
	VA=0x62e0000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias2_0 DATA_VA=0x6300000
attr_data {
	Name = replacement0_alias2_0,
	VA=0x6300000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias2_0 DATA_VA=0x6320000
attr_data {
	Name = replacement1_alias2_0,
	VA=0x6320000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias2_0 DATA_VA=0x6340000
attr_data {
	Name = replacement2_alias2_0,
	VA=0x6340000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias2_0 DATA_VA=0x6360000
attr_data {
	Name = replacement3_alias2_0,
	VA=0x6360000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias2_0 DATA_VA=0x6380000
attr_data {
	Name = replacement4_alias2_0,
	VA=0x6380000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias2_0 DATA_VA=0x63a0000
attr_data {
	Name = replacement5_alias2_0,
	VA=0x63a0000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias2_0 DATA_VA=0x63c0000
attr_data {
	Name = replacement6_alias2_0,
	VA=0x63c0000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias2_0 DATA_VA=0x63e0000
attr_data {
	Name = replacement7_alias2_0,
	VA=0x63e0000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias1_0 DATA_VA=0x6400000
attr_data {
	Name = region0_alias1_0,
	VA=0x6400000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias1_0 DATA_VA=0x6420000
attr_data {
	Name = region1_alias1_0,
	VA=0x6420000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias1_0 DATA_VA=0x6440000
attr_data {
	Name = region2_alias1_0,
	VA=0x6440000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias1_0 DATA_VA=0x6460000
attr_data {
	Name = region3_alias1_0,
	VA=0x6460000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias1_0 DATA_VA=0x6480000
attr_data {
	Name = region4_alias1_0,
	VA=0x6480000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias1_0 DATA_VA=0x64a0000
attr_data {
	Name = region5_alias1_0,
	VA=0x64a0000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias1_0 DATA_VA=0x64c0000
attr_data {
	Name = region6_alias1_0,
	VA=0x64c0000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias1_0 DATA_VA=0x64e0000
attr_data {
	Name = region7_alias1_0,
	VA=0x64e0000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias1_0 DATA_VA=0x6500000
attr_data {
	Name = replacement0_alias1_0,
	VA=0x6500000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias1_0 DATA_VA=0x6520000
attr_data {
	Name = replacement1_alias1_0,
	VA=0x6520000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias1_0 DATA_VA=0x6540000
attr_data {
	Name = replacement2_alias1_0,
	VA=0x6540000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias1_0 DATA_VA=0x6560000
attr_data {
	Name = replacement3_alias1_0,
	VA=0x6560000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias1_0 DATA_VA=0x6580000
attr_data {
	Name = replacement4_alias1_0,
	VA=0x6580000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias1_0 DATA_VA=0x65a0000
attr_data {
	Name = replacement5_alias1_0,
	VA=0x65a0000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias1_0 DATA_VA=0x65c0000
attr_data {
	Name = replacement6_alias1_0,
	VA=0x65c0000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias1_0 DATA_VA=0x65e0000
attr_data {
	Name = replacement7_alias1_0,
	VA=0x65e0000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region0_alias0_0 DATA_VA=0x6600000
attr_data {
	Name = region0_alias0_0,
	VA=0x6600000,
	RA=0x43000000,
	PA=ra2pa(0x43000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=0,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region1_alias0_0 DATA_VA=0x6620000
attr_data {
	Name = region1_alias0_0,
	VA=0x6620000,
	RA=0x43800000,
	PA=ra2pa(0x43800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region2_alias0_0 DATA_VA=0x6640000
attr_data {
	Name = region2_alias0_0,
	VA=0x6640000,
	RA=0x44000000,
	PA=ra2pa(0x44000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region3_alias0_0 DATA_VA=0x6660000
attr_data {
	Name = region3_alias0_0,
	VA=0x6660000,
	RA=0x44800000,
	PA=ra2pa(0x44800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region4_alias0_0 DATA_VA=0x6680000
attr_data {
	Name = region4_alias0_0,
	VA=0x6680000,
	RA=0x45000000,
	PA=ra2pa(0x45000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region5_alias0_0 DATA_VA=0x66a0000
attr_data {
	Name = region5_alias0_0,
	VA=0x66a0000,
	RA=0x45800000,
	PA=ra2pa(0x45800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region6_alias0_0 DATA_VA=0x66c0000
attr_data {
	Name = region6_alias0_0,
	VA=0x66c0000,
	RA=0x46000000,
	PA=ra2pa(0x46000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION region7_alias0_0 DATA_VA=0x66e0000
attr_data {
	Name = region7_alias0_0,
	VA=0x66e0000,
	RA=0x46800000,
	PA=ra2pa(0x46800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement0_alias0_0 DATA_VA=0x6700000
attr_data {
	Name = replacement0_alias0_0,
	VA=0x6700000,
	RA=0x47000000,
	PA=ra2pa(0x47000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement1_alias0_0 DATA_VA=0x6720000
attr_data {
	Name = replacement1_alias0_0,
	VA=0x6720000,
	RA=0x47800000,
	PA=ra2pa(0x47800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement2_alias0_0 DATA_VA=0x6740000
attr_data {
	Name = replacement2_alias0_0,
	VA=0x6740000,
	RA=0x48000000,
	PA=ra2pa(0x48000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement3_alias0_0 DATA_VA=0x6760000
attr_data {
	Name = replacement3_alias0_0,
	VA=0x6760000,
	RA=0x48800000,
	PA=ra2pa(0x48800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement4_alias0_0 DATA_VA=0x6780000
attr_data {
	Name = replacement4_alias0_0,
	VA=0x6780000,
	RA=0x49000000,
	PA=ra2pa(0x49000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement5_alias0_0 DATA_VA=0x67a0000
attr_data {
	Name = replacement5_alias0_0,
	VA=0x67a0000,
	RA=0x49800000,
	PA=ra2pa(0x49800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement6_alias0_0 DATA_VA=0x67c0000
attr_data {
	Name = replacement6_alias0_0,
	VA=0x67c0000,
	RA=0x4a000000,
	PA=ra2pa(0x4a000000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024

SECTION replacement7_alias0_0 DATA_VA=0x67e0000
attr_data {
	Name = replacement7_alias0_0,
	VA=0x67e0000,
	RA=0x4a800000,
	PA=ra2pa(0x4a800000,0),
part_0_ctx_zero_tsb_config_2,
	TTE_G=0,
	TTE_Context=0,
	TTE_V=1,
	TTE_Size=0,
	TTE_SIZE_PTR=0,
	TTE_NFO=0,
	TTE_IE=0,
	TTE_Soft2=0,
	TTE_Diag=0,
	TTE_Soft=0,
	TTE_L=0,
	TTE_CP=1,
	TTE_CV=1,
	TTE_E=0,
	TTE_P=0,
	TTE_W=1,
	tsbonly
	}

.data
.skip 1024


!------------------------------------------------------------------------

SECTION tsotool_unshared_data
.global tsotool_unshared_data_start
.global res_buf_fp_p_0
.global res_buf_int_p_0
.global private_data_p0
.global stack_top_p0:
.global res_buf_fp_p_1
.global res_buf_int_p_1
.global private_data_p1
.global stack_top_p1:
.global res_buf_fp_p_2
.global res_buf_int_p_2
.global private_data_p2
.global stack_top_p2:
.global res_buf_fp_p_3
.global res_buf_int_p_3
.global private_data_p3
.global stack_top_p3:
.global res_buf_fp_p_4
.global res_buf_int_p_4
.global private_data_p4
.global stack_top_p4:
.global res_buf_fp_p_5
.global res_buf_int_p_5
.global private_data_p5
.global stack_top_p5:
.global res_buf_fp_p_6
.global res_buf_int_p_6
.global private_data_p6
.global stack_top_p6:
.global res_buf_fp_p_7
.global res_buf_int_p_7
.global private_data_p7
.global stack_top_p7:
.data
ALIGN_PAGE_512K
tsotool_unshared_data_start:
!-- label names of res_buf must match with extract_loads_m64.pl --
.align 64 ! for self bcopy()
res_buf_fp_p_0:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_0:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_1:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_1:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_2:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_2:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_3:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_3:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_4:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_4:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_5:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_5:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_6:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_6:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_fp_p_7:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
.align 64 ! for self bcopy()
res_buf_int_p_7:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL/2
private_data_p0:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p1:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p2:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p3:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p4:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p5:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p6:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p7:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
stack_top_p0:
	.skip 2048
stack_top_p1:
	.skip 2048
stack_top_p2:
	.skip 2048
stack_top_p3:
	.skip 2048
stack_top_p4:
	.skip 2048
stack_top_p5:
	.skip 2048
stack_top_p6:
	.skip 2048
stack_top_p7:
	.skip 2048
tsotool_unshared_data_end:
ALIGN_PAGE_512K
! to prevent VAs from running over from this section into shared regions

!------------------------------------------------------------------------

.seg "data"
! 8 shared memory regions, 3 alias(es) each (Alias 0 is normal VA)


SECTION region0_alias0
.global REGION0_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION0_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION0_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region1_alias0
.global REGION1_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION1_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION1_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region2_alias0
.global REGION2_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION2_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION2_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region3_alias0
.global REGION3_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION3_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION3_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region4_alias0
.global REGION4_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION4_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION4_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region5_alias0
.global REGION5_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION5_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION5_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region6_alias0
.global REGION6_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION6_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION6_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION region7_alias0
.global REGION7_ALIAS0_START
.data
ALIGN_PAGE_8K
REGION7_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REGION7_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement0_alias0
.global REPLACEMENT0_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT0_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT0_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement1_alias0
.global REPLACEMENT1_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT1_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT1_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement2_alias0
.global REPLACEMENT2_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT2_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT2_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement3_alias0
.global REPLACEMENT3_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT3_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT3_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement4_alias0
.global REPLACEMENT4_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT4_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT4_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement5_alias0
.global REPLACEMENT5_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT5_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT5_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement6_alias0
.global REPLACEMENT6_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT6_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT6_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL


SECTION replacement7_alias0
.global REPLACEMENT7_ALIAS0_START
.data
ALIGN_PAGE_8K
REPLACEMENT7_ALIAS0_START:
	.skip REGION_MAPPED_SIZE_RTL
REPLACEMENT7_ALIAS0_END:
	.skip REGION_SIZE_RTL-REGION_MAPPED_SIZE_RTL

SECTION .MAIN
.global local_trap_handlers_start
.global local_trap_handlers_end.global extern_interrupt_handler
.text
ALIGN_PAGE_8K
local_trap_handlers_start:

.align 64
extern_interrupt_handler:
stxa  %g0, [%g0]ASI_INTR_RECEIVE
retry

local_trap_handlers_end:

SECTION .MAIN
.global main
.global tsotool_text_start
.global irepl_text_start
.text
ba user_text_start
nop
ALIGN_PAGE_64K
irepl_text_start:
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
	jmpl %g1+8, %g1
	nop
	.skip 24
ALIGN_PAGE_64K
user_text_start:
ba main
nop
user_text_end:

ALIGN_PAGE_64K
tsotool_text_start:
main:
	mov     0, %o0
	mov     0, %o1
	CHECK_PROC_ID
! at this point, g1 should have CPU id (0, 1, 2, ...)
	set     REGION0_ALIAS0_START, %o0	! shared address 0
	set     REGION1_ALIAS0_START, %o1	! shared address 1
	cmp     %g1, 0x7
	be      setup_p7
	nop
	cmp     %g1, 0x6
	be      setup_p6
	nop
	cmp     %g1, 0x5
	be      setup_p5
	nop
	cmp     %g1, 0x4
	be      setup_p4
	nop
	cmp     %g1, 0x3
	be      setup_p3
	nop
	cmp     %g1, 0x2
	be      setup_p2
	nop
	cmp     %g1, 0x1
	be      setup_p1
	nop
	cmp     %g1, 0x0
	be      setup_p0
	nop
	EXIT_BAD   ! Should never reach here
	nop

setup_p0:
	setx    stack_top_p0, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_0, %g1, %o4
	setx    private_data_p0, %g1, %o5
	setx    func0, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p1:
	setx    stack_top_p1, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_1, %g1, %o4
	setx    private_data_p1, %g1, %o5
	setx    func1, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p2:
	setx    stack_top_p2, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_2, %g1, %o4
	setx    private_data_p2, %g1, %o5
	setx    func2, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p3:
	setx    stack_top_p3, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_3, %g1, %o4
	setx    private_data_p3, %g1, %o5
	setx    func3, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p4:
	setx    stack_top_p4, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_4, %g1, %o4
	setx    private_data_p4, %g1, %o5
	setx    func4, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p5:
	setx    stack_top_p5, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_5, %g1, %o4
	setx    private_data_p5, %g1, %o5
	setx    func5, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p6:
	setx    stack_top_p6, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_6, %g1, %o4
	setx    private_data_p6, %g1, %o5
	setx    func6, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop

setup_p7:
	setx    stack_top_p7, %g1, %l1
	add     %l1, 1024, %sp
	setx    res_buf_fp_p_7, %g1, %o4
	setx    private_data_p7, %g1, %o5
	setx    func7, %g1, %l4
	call    %l4
	nop
	EXIT_GOOD
	nop
#define    NO_REAL_CPUS_MINUS_1    7

!-----------------

! register usage:
! %i0 %i1 : base registers for first 2 regions
! %i2 %i3 : cache registers for 8 regions
! %i4 fixed pointer to per-cpu results area
! %l1 moving pointer to per-cpu FP results area
! %o7 moving pointer to per-cpu integer results area
! %i5 pointer to per-cpu private area
! %l0 holds lfsr, used as source of random bits 
! %l2 loop count register
! %f16 running counter for unique fp store values
! %f17 holds increment value for fp counter
! %l4 running counter for unique integer store values (increment value is always 1)
! %l5 move-to register for load values (simulation only)
! %f30 move-to register for FP values (simulation only)
! %i4 holds the instructions count which is used for interrupt ordering
! %i4 holds the thread_id (OBP only) 
! %l5 holds the moving pointer for interrupt bonus data (OBP only). Conflicts with RTL/simulation usage
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func0:
! instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
andn %i0, 63, %i0

add %i1, 63, %i1
andn %i1, 63, %i1

add %i2, 63, %i2
andn %i2, 63, %i2

add %i3, 63, %i3
andn %i3, 63, %i3

add %i4, 63, %i4
andn %i4, 63, %i4

add %i5, 63, %i5
andn %i5, 63, %i5


! Initialize pointer to FP load results area
mov   %i4, %l1

! Initialize pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
add  %o7, %l1, %o7 

! Reinitialize i4 to 0. i4 will be used to keep the count of analyzable node info
mov 0x0, %i4

! Initialize %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l6
or    %l6, %lo(0xdeadbee0), %l6
stw   %l6, [%i5]
sethi %hi(0xdeadbee1), %l6
or    %l6, %lo(0xdeadbee1), %l6
stw   %l6, [%i5+4]
ldd [%i5], %f0
fmovd %f0, %f2
fmovd %f0, %f4
fmovd %f0, %f6
fmovd %f0, %f8
fmovd %f0, %f10
fmovd %f0, %f12
fmovd %f0, %f14
fmovd %f0, %f16
fmovd %f0, %f18
fmovd %f0, %f20
fmovd %f0, %f22
fmovd %f0, %f24
fmovd %f0, %f26
fmovd %f0, %f28
fmovd %f0, %f30
fmovd %f0, %f32
fmovd %f0, %f34
fmovd %f0, %f36
fmovd %f0, %f38
fmovd %f0, %f40
fmovd %f0, %f42
fmovd %f0, %f44
fmovd %f0, %f46
fmovd %f0, %f48
fmovd %f0, %f50
fmovd %f0, %f52
fmovd %f0, %f54
fmovd %f0, %f56
fmovd %f0, %f58
fmovd %f0, %f60
fmovd %f0, %f62

! Signature for extract_loads script to start extracting load values for this stream
sethi %hi(0x00deade1), %l6
or    %l6, %lo(0x00deade1), %l6
stw %l6, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x1), %l4
or    %l4, %lo(0x1), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x3f800001), %l6
or    %l6, %lo(0x3f800001), %l6
stw %l6, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x34000000), %l6
or    %l6, %lo(0x34000000), %l6
stw %l6, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x7308^4
sethi %hi(0x7308), %l0
or    %l0, %lo(0x7308), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES0: ! Test instruction sequence for ISTREAM 0 begins

P1: !_CASX [9] (maybe <- 0x1) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_0:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_0
nop

P2: !_ST [1] (maybe <- 0x3) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_1:
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l3, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
stwa   %o5, [%i0 + 4] %asi
add   %l4, 1, %l4

P3: !_REPLACEMENT [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
loop_exit_0_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_1
nop

P4: !_CASX [19] (maybe <- 0x4) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_2:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P5: !_CASX [12] (maybe <- 0x6) (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l7
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_2
nop

P6: !_CASX [2] (maybe <- 0x8) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_3:
add %i0, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET6
nop
RET6:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P7: !_CASX [16] (maybe <- 0x9) (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_3
nop

P8: !_CASX [6] (maybe <- 0xb) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_4:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P9: !_CASX [5] (maybe <- 0xd) (Int) (Loop exit)
add %i1, 8, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l6
mov %l4, %o3
casx [%l7], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_4
nop

P10: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_5:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P11: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_5
nop

P12: !_CAS [19] (maybe <- 0xe) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_6:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P13: !_CASX [2] (maybe <- 0xf) (Int) (Loop exit)
add %i0, 8, %l3
ldx [%l3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %o5
mov %l4, %o2
casx [%l3], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_6
nop

P14: !_FLUSHI [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_7:
flush %g0 

P15: !_CASX [1] (maybe <- 0x10) (Int) (Loop exit)
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_7
nop

P16: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_8:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P17: !_CASX [5] (maybe <- 0x12) (Int)
add %i1, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P18: !_LD [22] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_8
nop

P19: !_CAS [9] (maybe <- 0x13) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_9:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i3], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_9
nop

P20: !_CASX [22] (maybe <- 0x14) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_10:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_10
nop

P21: !_PREFETCH [9] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_11:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 0], 4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET21
nop
RET21:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_0_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_11
nop

P22: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_12:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P23: !_LD [20] (Int) (Loop exit) (Branch target of P263)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_12
nop
ba P24
nop

TARGET263:
ba RET263
nop


P24: !_LD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_13:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P25: !_LD [1] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i0 + 4] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_13
nop

P26: !_CASX [5] (maybe <- 0x16) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_14:
add %i1, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_14
nop

P27: !_CASX [8] (maybe <- 0x17) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_15:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P28: !_LD [8] (Int)
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P29: !_LD [1] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i0 + 4] %asi, %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_15
nop

P30: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_16:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P31: !_LD [10] (Int) (Loop exit) (Branch target of P257)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_16
nop
ba P32
nop

TARGET257:
ba RET257
nop


P32: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_17:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P33: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_17
nop

P34: !_PREFETCH [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_18:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 22
loop_exit_0_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_18
nop

P35: !_CASX [19] (maybe <- 0x18) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_19:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P36: !_LD [14] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P37: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_19
nop

P38: !_LD [0] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_20:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET38
nop
RET38:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P39: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_20
nop

P40: !_CASX [13] (maybe <- 0x1a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_21:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_21
nop

P41: !_ST [12] (maybe <- 0x1c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_22:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P42: !_LD [20] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P43: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_22
nop

P44: !_CAS [13] (maybe <- 0x1d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_23:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P45: !_LD [5] (Int)
lduw [%i1 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P46: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_23
nop

P47: !_ST [2] (maybe <- 0x1e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_24:
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4
loop_exit_0_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_24
nop

P48: !_CASX [5] (maybe <- 0x1f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_25:
add %i1, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_25
nop

P49: !_CASX [13] (maybe <- 0x20) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_26:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P50: !_CASX [1] (maybe <- 0x22) (Int) (Loop exit)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_26
nop

P51: !_REPLACEMENT [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_27:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P52: !_CAS [23] (maybe <- 0x24) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_27
nop

P53: !_CASX [19] (maybe <- 0x25) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_28:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P54: !_CAS [17] (maybe <- 0x27) (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_28
nop

P55: !_CASX [10] (maybe <- 0x28) (Int) (Loop entry) (Loop exit) (Branch target of P470)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_29:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_29
nop
ba P56
nop

TARGET470:
ba RET470
nop


P56: !_REPLACEMENT [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_30:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
loop_exit_0_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_30
nop

P57: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_31:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P58: !_CAS [15] (maybe <- 0x2a) (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %o5
mov %o5, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
mov %l4, %o1
cas [%i2], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P59: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_31
nop

P60: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_32:
membar #StoreLoad

P61: !_REPLACEMENT [21] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
loop_exit_0_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_32
nop

P62: !_CAS [6] (maybe <- 0x2b) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_33:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i2], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET62
nop
RET62:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P63: !_CASX [16] (maybe <- 0x2c) (Int) (Loop exit)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_33
nop

P64: !_ST [20] (maybe <- 0x2e) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_34:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P65: !_LD [17] (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P66: !_LD [2] (Int) (Loop exit) (LE) (Branch target of P38)
wr %g0, 0x88, %asi
lduwa [%i0 + 12] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_34
nop
ba P67
nop

TARGET38:
ba RET38
nop


P67: !_CASX [16] (maybe <- 0x2f) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_35:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P68: !_CASX [2] (maybe <- 0x31) (Int) (Loop exit)
add %i0, 8, %o5
ldx [%o5], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l7
mov %l4, %o3
casx [%o5], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_35
nop

P69: !_CASX [0] (maybe <- 0x32) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_36:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_36
nop

P70: !_CASX [7] (maybe <- 0x34) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_37:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_37
nop

P71: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_38:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P72: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_38
nop

P73: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_39:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P74: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_39
nop

P75: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_40:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P76: !_LD [23] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_40
nop

P77: !_CAS [17] (maybe <- 0x36) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_41:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
wr %g0, 0x88, %asi
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %l6
lduwa [%l6] %asi, %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l7, %o5
casa [%l6] %asi, %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_41
nop

P78: !_CASX [21] (maybe <- 0x37) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_42:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_42
nop

P79: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_43:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P80: !_ST [17] (maybe <- 0x39) (Int)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P81: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_43
nop

P82: !_CASX [13] (maybe <- 0x3a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_44:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P83: !_LD [21] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P84: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_44
nop

P85: !_ST [18] (maybe <- 0x3c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_45:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P86: !_REPLACEMENT [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
loop_exit_0_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_45
nop

P87: !_CASX [18] (maybe <- 0x3d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_46:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_46
nop

P88: !_CASX [14] (maybe <- 0x3f) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_47:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P89: !_CASX [8] (maybe <- 0x40) (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_47
nop

P90: !_CASX [9] (maybe <- 0x41) (Int) (Loop entry) (Branch target of P194)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_48:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P91
nop

TARGET194:
ba RET194
nop


P91: !_LD [10] (Int)
lduw [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P92: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_48
nop

P93: !_CAS [13] (maybe <- 0x43) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_49:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_49
nop

P94: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_50:
membar #StoreLoad

P95: !_REPLACEMENT [0] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
loop_exit_0_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_50
nop

P96: !_CASX [16] (maybe <- 0x44) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_51:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_51
nop

P97: !_CASX [16] (maybe <- 0x46) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_52:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P98: !_LD [5] (Int) (Branch target of P463)
lduw [%i1 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
ba P99
nop

TARGET463:
ba RET463
nop


P99: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_52
nop

P100: !_CASX [12] (maybe <- 0x48) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_53:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P101: !_CAS [10] (maybe <- 0x4a) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_53
nop

P102: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_54:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P103: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_54
nop

P104: !_ST [8] (maybe <- 0x4b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_55:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4
loop_exit_0_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_55
nop

P105: !_ST [11] (maybe <- 0x4c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_56:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P106: !_LD [23] (FP) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_56
nop

P107: !_ST [1] (maybe <- 0x3f800001) (FP) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_57:
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET107
nop
RET107:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P108: !_CAS [16] (maybe <- 0x4d) (Int) (Loop exit) (CBR)
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET108
nop
RET108:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_57
nop

P109: !_REPLACEMENT [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_58:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P110: !_CASX [8] (maybe <- 0x4e) (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_58
nop

P111: !_REPLACEMENT [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_59:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P112: !_CASX [11] (maybe <- 0x4f) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_59
nop

P113: !_CASX [1] (maybe <- 0x50) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_60:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_60
nop

P114: !_CASX [19] (maybe <- 0x52) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_61:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_61
nop

P115: !_CASX [11] (maybe <- 0x54) (Int) (Loop entry) (Branch target of P185)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_62:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P116
nop

TARGET185:
ba RET185
nop


P116: !_REPLACEMENT [0] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_62
nop

P117: !_ST [10] (maybe <- 0x3f800002) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_63:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]

P118: !_LD [8] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P119: !_LD [9] (Int) (Loop exit)
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_63
nop

P120: !_CAS [18] (maybe <- 0x55) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_64:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i3], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P121: !_CASX [11] (maybe <- 0x56) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l7
mov %l4, %o2
casx [%o5], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_64
nop

P122: !_LD [20] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_65:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P123: !_CASX [1] (maybe <- 0x57) (Int) (Loop exit)
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_65
nop

P124: !_PREFETCH [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_66:
sethi %hi(REGION5_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 0

P125: !_LD [17] (Int)
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P126: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_66
nop

P127: !_CASX [10] (maybe <- 0x59) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_67:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P128: !_CASX [16] (maybe <- 0x5b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l7
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_67
nop

P129: !_CASX [3] (maybe <- 0x5d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_68:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_68
nop

P130: !_PREFETCH [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_69:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 2

P131: !_ST [11] (maybe <- 0x5f) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_0_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_69
nop

P132: !_CASX [3] (maybe <- 0x60) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_70:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_70
nop

P133: !_CASX [22] (maybe <- 0x62) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_71:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_71
nop

P134: !_CASX [20] (maybe <- 0x64) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_72:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P135: !_LD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P136: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_72
nop

P137: !_CASX [19] (maybe <- 0x65) (Int) (Loop entry) (Branch target of P307)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_73:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P138
nop

TARGET307:
ba RET307
nop


P138: !_CAS [5] (maybe <- 0x67) (Int) (Loop exit)
add %i1, 12, %l3
lduw [%l3], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_73
nop

P139: !_CAS [1] (maybe <- 0x68) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_74:
add %i0, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_74
nop

P140: !_CASX [6] (maybe <- 0x69) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_75:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P141: !_LD [8] (Int)
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P142: !_LD [6] (Int) (Loop exit)
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_75
nop

P143: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_76:
membar #StoreLoad
loop_exit_0_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_76
nop

P144: !_CAS [12] (maybe <- 0x6b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_77:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i2], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_77
nop

P145: !_ST [0] (maybe <- 0x6c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_78:
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4
loop_exit_0_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_78
nop

P146: !_CASX [2] (maybe <- 0x6d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_79:
add %i0, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_79
nop

P147: !_CAS [4] (maybe <- 0x6e) (Int) (Loop entry) (Loop exit) (Branch target of P62)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_80:
add %i1, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_80
nop
ba P148
nop

TARGET62:
ba RET62
nop


P148: !_REPLACEMENT [0] (Int) (Loop entry) (Loop exit) (Branch target of P588)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_81:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
loop_exit_0_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_81
nop
ba P149
nop

TARGET588:
ba RET588
nop


P149: !_LD [21] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_82:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_82
nop

P150: !_LD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_83:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P151: !_LD [11] (Int) (Loop exit) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET151
nop
RET151:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_83
nop

P152: !_CASX [10] (maybe <- 0x6f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_84:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_84
nop

P153: !_CASX [3] (maybe <- 0x71) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_85:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P154: !_CASX [16] (maybe <- 0x73) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l7
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_85
nop

P155: !_CASX [9] (maybe <- 0x75) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_86:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_86
nop

P156: !_CASX [22] (maybe <- 0x77) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_87:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_87
nop

P157: !_CAS [16] (maybe <- 0x79) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_88:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_88
nop

P158: !_LD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_89:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P159: !_CAS [11] (maybe <- 0x7a) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
mov %l4, %o1
cas [%l6], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P160: !_LD [10] (Int) (Loop exit)
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_89
nop

P161: !_CASX [21] (maybe <- 0x7b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_90:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_90
nop

P162: !_CASX [23] (maybe <- 0x7d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_91:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_91
nop

P163: !_CASX [1] (maybe <- 0x7e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_92:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_92
nop

P164: !_LD [16] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_93:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P165: !_CASX [6] (maybe <- 0x80) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i3], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P166: !_LD [6] (Int) (Loop exit) (Branch target of P107)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_93
nop
ba P167
nop

TARGET107:
ba RET107
nop


P167: !_ST [19] (maybe <- 0x82) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_94:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_0_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_94
nop

P168: !_CASX [18] (maybe <- 0x83) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_95:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_95
nop

P169: !_REPLACEMENT [21] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_96:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P170: !_FLUSHI [9] (Int) (Loop exit)
flush %g0 
loop_exit_0_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_96
nop

P171: !_CASX [20] (maybe <- 0x85) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_97:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P172: !_LD [0] (Int) (Branch target of P21)
lduw [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
ba P173
nop

TARGET21:
ba RET21
nop


P173: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_97
nop

P174: !_CASX [1] (maybe <- 0x86) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_98:
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
sllx %l6, 32, %o5
or %l6, %o5, %l6 
and %l7, %l6, %o5
srlx %o5, 8, %o5
sllx %l7, 8, %l7
and %l7, %l6, %l7
or %l7, %o5, %l7 
sethi %hi(0xffff0000), %l6
srlx %l7, 16, %o5
andn %o5, %l6, %o5
andn %l7, %l6, %l7
sllx %l7, 16, %l7
or %l7, %o5, %l7 
srlx %l7, 32, %o5
sllx %l7, 32, %l7
or %l7, %o5, %o5 
wr %g0, 0x88, %asi
ldxa [%i0] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
mov %l3, %l6
mov  %o5, %l3
casxa [%i0] %asi, %l6, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
add  %l4, 1, %l4

P175: !_PREFETCH [0] (Int) (Loop exit)
prefetch [%i0 + 0], 2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_98
nop

P176: !_CASX [2] (maybe <- 0x88) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_99:
add %i0, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_99
nop

P177: !_CASX [23] (maybe <- 0x89) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_100:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_100
nop

P178: !_LD [20] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_101:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P179: !_LD [8] (FP) (Branch target of P151)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
ba P180
nop

TARGET151:
ba RET151
nop


P180: !_LD [17] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_101
nop

P181: !_CASX [9] (maybe <- 0x8a) (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_102:
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
sllx %l6, 32, %o5
or %l6, %o5, %l6 
and %l7, %l6, %o5
srlx %o5, 8, %o5
sllx %l7, 8, %l7
and %l7, %l6, %l7
or %l7, %o5, %l7 
sethi %hi(0xffff0000), %l6
srlx %l7, 16, %o5
andn %o5, %l6, %o5
andn %l7, %l6, %l7
sllx %l7, 16, %l7
or %l7, %o5, %l7 
srlx %l7, 32, %o5
sllx %l7, 32, %l7
or %l7, %o5, %o5 
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldxa [%i3] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
mov %l3, %l6
mov  %o5, %l3
casxa [%i3] %asi, %l6, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
add  %l4, 1, %l4

P182: !_REPLACEMENT [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_102
nop

P183: !_CASX [1] (maybe <- 0x8c) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_103:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P184: !_CAS [18] (maybe <- 0x8e) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_103
nop

P185: !_PREFETCH [8] (Int) (Loop entry) (Loop exit) (CBR) (Branch target of P272)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_104:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 23

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET185
nop
RET185:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

loop_exit_0_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_104
nop
ba P186
nop

TARGET272:
ba RET272
nop


P186: !_CASX [17] (maybe <- 0x8f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_105:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_105
nop

P187: !_LD [13] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_106:
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P188: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_106
nop

P189: !_CASX [20] (maybe <- 0x90) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_107:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_107
nop

P190: !_CASX [16] (maybe <- 0x91) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_108:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P191: !_CASX [7] (maybe <- 0x93) (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_108
nop

P192: !_CASX [23] (maybe <- 0x95) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_109:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_109
nop

P193: !_CASX [17] (maybe <- 0x96) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_110:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P194: !_CASX [8] (maybe <- 0x97) (Int) (Loop exit) (CBR)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l7
mov %l4, %o3
casx [%o5], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET194
nop
RET194:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_110
nop

P195: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_111:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P196: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_111
nop

P197: !_ST [0] (maybe <- 0x98) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_112:
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4
loop_exit_0_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_112
nop

P198: !_ST [15] (maybe <- 0x99) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_113:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
loop_exit_0_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_113
nop

P199: !_CASX [6] (maybe <- 0x9a) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_114:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P200: !_CASX [2] (maybe <- 0x9c) (Int) (Loop exit)
add %i0, 8, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l6
mov %l4, %o3
casx [%l7], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_114
nop

P201: !_CASX [19] (maybe <- 0x9d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_115:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_115
nop

P202: !_CASX [8] (maybe <- 0x9f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_116:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P203: !_PREFETCH [0] (Int) (Loop exit)
prefetch [%i0 + 0], 23
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_116
nop

P204: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_117:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P205: !_CASX [2] (maybe <- 0xa0) (Int)
add %i0, 8, %o5
ldx [%o5], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov  %l6, %l7
mov %l4, %l6
casx [%o5], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4

P206: !_LD [13] (Int) (Loop exit)
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_117
nop

P207: !_CAS [14] (maybe <- 0xa1) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_118:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_118
nop

P208: !_CASX [2] (maybe <- 0xa2) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_119:
add %i0, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_119
nop

P209: !_CASX [11] (maybe <- 0xa3) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_120:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_120
nop

P210: !_CASX [9] (maybe <- 0xa4) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_121:
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldxa [%i3] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov %o5, %l3
mov  %l7, %o5
casxa [%i3] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_121
nop

P211: !_LD [18] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_122:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered

P212: !_FLUSHI [14] (Int) (Loop exit)
flush %g0 
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_122
nop

P213: !_CASX [22] (maybe <- 0xa6) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_123:
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
sllx %l7, 32, %l3
or %l7, %l3, %l7 
and %o5, %l7, %l3
srlx %l3, 8, %l3
sllx %o5, 8, %o5
and %o5, %l7, %o5
or %o5, %l3, %o5 
sethi %hi(0xffff0000), %l7
srlx %o5, 16, %l3
andn %l3, %l7, %l3
andn %o5, %l7, %o5
sllx %o5, 16, %o5
or %o5, %l3, %o5 
srlx %o5, 32, %l3
sllx %o5, 32, %o5
or %o5, %l3, %l3 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldxa [%i3] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
mov %l6, %l7
mov  %l3, %l6
casxa [%i3] %asi, %l7, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_123
nop

P214: !_CAS [22] (maybe <- 0xa8) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_124:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P215: !_CASX [0] (maybe <- 0xa9) (Int) (Loop exit)
ldx [%i0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %o5
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i0], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_124
nop

P216: !_REPLACEMENT [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_125:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+12], %l7
st %l7, [%i3+12]
add %i3, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P217: !_CASX [2] (maybe <- 0xab) (Int) (Loop exit)
add %i0, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_125
nop

P218: !_PREFETCH [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_126:
prefetch [%i0 + 4], 22
loop_exit_0_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_126
nop

P219: !_CASX [17] (maybe <- 0xac) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_127:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_127
nop

P220: !_LD [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_128:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P221: !_LD [3] (Int) (Loop exit) (Branch target of P478)
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_128
nop
ba P222
nop

TARGET478:
ba RET478
nop


P222: !_CASX [20] (maybe <- 0xad) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_129:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_129
nop

P223: !_CASX [6] (maybe <- 0xae) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_130:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET223
nop
RET223:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P224: !_LD [12] (FP) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_130
nop

P225: !_CASX [16] (maybe <- 0xb0) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_131:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P226: !_CASX [23] (maybe <- 0xb2) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l7
mov %l4, %o3
casx [%o5], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_131
nop

P227: !_REPLACEMENT [18] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_132:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
loop_exit_0_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_132
nop

P228: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_133:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P229: !_CASX [8] (maybe <- 0xb3) (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov  %l3, %l6
mov %l4, %l3
casx [%l7], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P230: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_133
nop

P231: !_LD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_134:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P232: !_CASX [1] (maybe <- 0xb4) (Int)
ldx [%i0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i0], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4

P233: !_LD [7] (Int) (Loop exit)
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_134
nop

P234: !_CASX [4] (maybe <- 0xb6) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_135:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_135
nop

P235: !_REPLACEMENT [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_136:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
loop_exit_0_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_136
nop

P236: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_137:
membar #StoreLoad
loop_exit_0_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_137
nop

P237: !_CASX [4] (maybe <- 0xb8) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_138:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_138
nop

P238: !_CASX [10] (maybe <- 0xba) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_139:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P239: !_CASX [23] (maybe <- 0xbc) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l3
mov %l4, %o3
casx [%l6], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_139
nop

P240: !_PREFETCH [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_140:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 21

P241: !_CASX [15] (maybe <- 0xbd) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_140:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_140
nop

P242: !_LD [4] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_141:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET242
nop
RET242:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P243: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_141:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_141
nop

P244: !_LD [20] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_142:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P245: !_REPLACEMENT [2] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+12], %l7
st %l7, [%i3+12]
add %i3, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_142:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_142
nop

P246: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_143:
membar #StoreLoad

P247: !_LD [10] (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET247
nop
RET247:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P248: !_LD [18] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET248
nop
RET248:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_143:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_143
nop

P249: !_CAS [22] (maybe <- 0xbf) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_144:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P250: !_CAS [20] (maybe <- 0xc0) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l3
lduw [%l3], %o1
mov %o1, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_144:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_144
nop

P251: !_REPLACEMENT [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_145:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P252: !_CASX [13] (maybe <- 0xc1) (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_145:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_145
nop

P253: !_CASX [8] (maybe <- 0xc3) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_146:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P254: !_LD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P255: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_146:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_146
nop

P256: !_REPLACEMENT [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_147:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P257: !_PREFETCH [21] (Int) (Loop exit) (CBR) (Branch target of P349)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 20

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET257
nop
RET257:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

loop_exit_0_147:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_147
nop
ba P258
nop

TARGET349:
ba RET349
nop


P258: !_REPLACEMENT [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_148:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
loop_exit_0_148:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_148
nop

P259: !_LD [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_149:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P260: !_CASX [10] (maybe <- 0xc4) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i3], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P261: !_LD [5] (Int) (Loop exit) (Branch target of P423)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_149:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_149
nop
ba P262
nop

TARGET423:
ba RET423
nop


P262: !_CASX [16] (maybe <- 0xc6) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_150:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_150:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_150
nop

P263: !_CASX [1] (maybe <- 0xc8) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_151:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET263
nop
RET263:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P264: !_CASX [4] (maybe <- 0xca) (Int) (Loop exit)
ldx [%i1], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l7
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i1], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_151:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_151
nop

P265: !_CASX [13] (maybe <- 0xcc) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_152:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P266: !_LD [3] (Int)
lduw [%i1 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P267: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_152:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_152
nop

P268: !_ST [16] (maybe <- 0xce) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_153:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_0_153:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_153
nop

P269: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_154:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P270: !_CAS [0] (maybe <- 0xcf) (Int)
lduw [%i0], %l6
mov %l6, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
mov %l4, %o1
cas [%i0], %l7, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P271: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_154:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_154
nop

P272: !_LD [19] (Int) (Loop entry) (CBR) (Branch target of P294)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_155:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET272
nop
RET272:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

ba P273
nop

TARGET294:
ba RET294
nop


P273: !_ST [23] (maybe <- 0xd0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P274: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_155:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_155
nop

P275: !_CASX [16] (maybe <- 0xd1) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_156:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_156:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_156
nop

P276: !_CASX [14] (maybe <- 0xd3) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_157:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_157:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_157
nop

P277: !_CASX [6] (maybe <- 0xd4) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_158:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P278: !_CASX [19] (maybe <- 0xd6) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_158:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_158
nop

P279: !_CASX [3] (maybe <- 0xd8) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_159:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET279
nop
RET279:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_159:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_159
nop

P280: !_LD [20] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_160:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P281: !_CASX [12] (maybe <- 0xda) (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P282: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_160:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_160
nop

P283: !_CAS [8] (maybe <- 0xdc) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_161:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_161:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_161
nop

P284: !_CASX [17] (maybe <- 0xdd) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_162:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P285: !_CASX [1] (maybe <- 0xde) (Int) (Loop exit) (Branch target of P495)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_162:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_162
nop
ba P286
nop

TARGET495:
ba RET495
nop


P286: !_CASX [0] (maybe <- 0xe0) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_163:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_163:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_163
nop

P287: !_CASX [20] (maybe <- 0xe2) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_164:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P288: !_LD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P289: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_164:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_164
nop

P290: !_CASX [16] (maybe <- 0xe3) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_165:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P291: !_CASX [20] (maybe <- 0xe5) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l3
mov %l4, %o3
casx [%l6], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_165:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_165
nop

P292: !_CAS [11] (maybe <- 0xe6) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_166:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_166:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_166
nop

P293: !_REPLACEMENT [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_167:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P294: !_CASX [1] (maybe <- 0xe7) (Int) (Loop exit) (CBR)
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET294
nop
RET294:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_167:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_167
nop

P295: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_168:
membar #StoreLoad

P296: !_CASX [5] (maybe <- 0xe9) (Int) (Loop exit)
add %i1, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_168:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_168
nop

P297: !_CASX [5] (maybe <- 0xea) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_169:
add %i1, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P298: !_CASX [19] (maybe <- 0xeb) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_169:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_169
nop

P299: !_CASX [2] (maybe <- 0xed) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_170:
add %i0, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P300: !_CAS [22] (maybe <- 0xee) (Int) (Loop exit) (Branch target of P413)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l7
lduw [%l7], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_170:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_170
nop
ba P301
nop

TARGET413:
ba RET413
nop


P301: !_LD [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_171:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P302: !_FLUSHI [18] (Int)
flush %g0 

P303: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_171:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_171
nop

P304: !_LD [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_172:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P305: !_LD [17] (Int) (Loop exit) (Branch target of P611)
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_172:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_172
nop
ba P306
nop

TARGET611:
ba RET611
nop


P306: !_CASX [6] (maybe <- 0xef) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_173:
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_173:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_173
nop

P307: !_CASX [11] (maybe <- 0xf1) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_174:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET307
nop
RET307:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P308: !_LD [7] (Int)
sethi %hi(REGION2_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P309: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_174:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_174
nop

P310: !_CAS [2] (maybe <- 0xf2) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_175:
add %i0, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_175:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_175
nop

P311: !_CASX [19] (maybe <- 0xf3) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_176:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_176:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_176
nop

P312: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_177:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P313: !_LD [13] (Int) (Loop exit) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET313
nop
RET313:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_177:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_177
nop

P314: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_178:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P315: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_178:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_178
nop

P316: !_CASX [15] (maybe <- 0xf5) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_179:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P317: !_CASX [18] (maybe <- 0xf7) (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET317
nop
RET317:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_179:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_179
nop

P318: !_ST [23] (maybe <- 0xf9) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_180:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P319: !_CASX [3] (maybe <- 0xfa) (Int) (Loop exit)
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_180:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_180
nop

P320: !_CASX [6] (maybe <- 0xfc) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_181:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P321: !_CASX [18] (maybe <- 0xfe) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_181:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_181
nop

P322: !_CAS [13] (maybe <- 0x100) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_182:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P323: !_CASX [14] (maybe <- 0x101) (Int) (Loop exit)
add %i2, 8, %l6
ldx [%l6], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l3
mov %l4, %o2
casx [%l6], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_182:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_182
nop

P324: !_CAS [10] (maybe <- 0x102) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_183:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P325: !_CASX [1] (maybe <- 0x103) (Int) (Loop exit)
ldx [%i0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i0], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_183:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_183
nop

P326: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_184:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P327: !_CASX [20] (maybe <- 0x105) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P328: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_184:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_184
nop

P329: !_CASX [21] (maybe <- 0x106) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_185:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_185:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_185
nop

P330: !_ST [17] (maybe <- 0x108) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_186:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P331: !_ST [14] (maybe <- 0x3f800003) (FP) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]
loop_exit_0_186:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_186
nop

P332: !_LD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_187:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P333: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_187:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_187
nop

P334: !_CASX [4] (maybe <- 0x109) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_188:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P335: !_LD [4] (Int)
lduw [%i1 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P336: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_188:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_188
nop

P337: !_CASX [19] (maybe <- 0x10b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_189:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P338: !_PREFETCH [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 21
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_189:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_189
nop

P339: !_CASX [1] (maybe <- 0x10d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_190:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P340: !_CASX [18] (maybe <- 0x10f) (Int) (Loop exit) (LE)
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
sllx %l7, 32, %l3
or %l7, %l3, %l7 
and %o5, %l7, %l3
srlx %l3, 8, %l3
sllx %o5, 8, %o5
and %o5, %l7, %o5
or %o5, %l3, %o5 
sethi %hi(0xffff0000), %l7
srlx %o5, 16, %l3
andn %l3, %l7, %l3
andn %o5, %l7, %o5
sllx %o5, 16, %o5
or %o5, %l3, %o5 
srlx %o5, 32, %l3
sllx %o5, 32, %o5
or %o5, %l3, %l3 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldxa [%i3] %asi, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
mov %l6, %l7
mov  %l3, %l6
casxa [%i3] %asi, %l7, %l6
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_190:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_190
nop

P341: !_CASX [7] (maybe <- 0x111) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_191:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P342: !_PREFETCH [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 0
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_191:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_191
nop

P343: !_REPLACEMENT [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_192:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
loop_exit_0_192:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_192
nop

P344: !_CASX [13] (maybe <- 0x113) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_193:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P345: !_ST [23] (maybe <- 0x115) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_193:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_193
nop

P346: !_REPLACEMENT [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_194:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+12], %l7
st %l7, [%i3+12]
add %i3, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
loop_exit_0_194:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_194
nop

P347: !_ST [16] (maybe <- 0x3f800004) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_195:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]

P348: !_PREFETCH [10] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 23
loop_exit_0_195:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_195
nop

P349: !_CASX [21] (maybe <- 0x116) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_196:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET349
nop
RET349:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_196:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_196
nop

P350: !_CAS [3] (maybe <- 0x118) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_197:
lduw [%i1], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i1], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P351: !_CAS [7] (maybe <- 0x119) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %o5
lduw [%o5], %o1
mov %o1, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_197:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_197
nop

P352: !_PREFETCH [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_198:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 20

P353: !_LD [14] (FP) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_198:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_198
nop

P354: !_REPLACEMENT [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_199:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P355: !_ST [21] (maybe <- 0x11a) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
loop_exit_0_199:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_199
nop

P356: !_CASX [20] (maybe <- 0x11b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_200:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P357: !_CASX [9] (maybe <- 0x11c) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_200:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_200
nop

P358: !_CASX [4] (maybe <- 0x11e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_201:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_201:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_201
nop

P359: !_CASX [3] (maybe <- 0x120) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_202:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_202:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_202
nop

P360: !_ST [18] (maybe <- 0x122) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_203:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
loop_exit_0_203:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_203
nop

P361: !_REPLACEMENT [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_204:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
loop_exit_0_204:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_204
nop

P362: !_LD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_205:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P363: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_205:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_205
nop

P364: !_CASX [0] (maybe <- 0x123) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_206:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P365: !_CASX [17] (maybe <- 0x125) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_206:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_206
nop

P366: !_CAS [1] (maybe <- 0x126) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_207:
add %i0, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P367: !_CASX [9] (maybe <- 0x127) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i2], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_207:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_207
nop

P368: !_REPLACEMENT [18] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_208:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
loop_exit_0_208:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_208
nop

P369: !_CASX [17] (maybe <- 0x129) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_209:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P370: !_REPLACEMENT [3] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_209:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_209
nop

P371: !_ST [8] (maybe <- 0x12a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_210:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4
loop_exit_0_210:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_210
nop

P372: !_CASX [2] (maybe <- 0x12b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_211:
add %i0, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P373: !_CAS [23] (maybe <- 0x12c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_211:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_211
nop

P374: !_ST [5] (maybe <- 0x12d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_212:
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4

P375: !_CASX [22] (maybe <- 0x12e) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_212:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_212
nop

P376: !_CASX [16] (maybe <- 0x130) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_213:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P377: !_REPLACEMENT [2] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_213:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_213
nop

P378: !_CASX [6] (maybe <- 0x132) (Int) (Loop entry) (Branch target of P108)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_214:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P379
nop

TARGET108:
ba RET108
nop


P379: !_FLUSHI [21] (Int) (Loop exit) (Branch target of P242)
flush %g0 
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_214:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_214
nop
ba P380
nop

TARGET242:
ba RET242
nop


P380: !_ST [21] (maybe <- 0x134) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_215:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P381: !_ST [11] (maybe <- 0x135) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_0_215:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_215
nop

P382: !_LD [20] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_216:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_216:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_216
nop

P383: !_REPLACEMENT [19] (Int) (Loop entry) (Loop exit) (Branch target of P248)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_217:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+4], %l6
st %l6, [%i3+4]
add %i3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
loop_exit_0_217:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_217
nop
ba P384
nop

TARGET248:
ba RET248
nop


P384: !_REPLACEMENT [0] (Int) (Loop entry) (Branch target of P247)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_218:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
ba P385
nop

TARGET247:
ba RET247
nop


P385: !_LD [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P386: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_218:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_218
nop

P387: !_CASX [4] (maybe <- 0x136) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_219:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P388: !_CAS [22] (maybe <- 0x138) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_219:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_219
nop

P389: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_220:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P390: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_220:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_220
nop

P391: !_REPLACEMENT [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_221:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
loop_exit_0_221:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_221
nop

P392: !_CASX [7] (maybe <- 0x139) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_222:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P393: !_LD [0] (FP) (Loop exit)
ld [%i0 + 0], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_222:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_222
nop

P394: !_CASX [16] (maybe <- 0x13b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_223:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_223:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_223
nop

P395: !_ST [1] (maybe <- 0x13d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_224:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P396: !_CASX [9] (maybe <- 0x13e) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_224:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_224
nop

P397: !_CASX [13] (maybe <- 0x140) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_225:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P398: !_REPLACEMENT [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_225:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_225
nop

P399: !_PREFETCH [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_226:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 23

P400: !_CAS [19] (maybe <- 0x142) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_226:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_226
nop

P401: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_227:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P402: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_227:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_227
nop

P403: !_CASX [12] (maybe <- 0x143) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_228:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_228:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_228
nop

P404: !_CAS [12] (maybe <- 0x145) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_229:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_229:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_229
nop

P405: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_230:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P406: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_230:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_230
nop

P407: !_LD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_231:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P408: !_CAS [10] (maybe <- 0x146) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%l3], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P409: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_231:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_231
nop

P410: !_CAS [11] (maybe <- 0x147) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_232:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P411: !_REPLACEMENT [17] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_232:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_232
nop

P412: !_REPLACEMENT [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_233:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P413: !_LD [5] (Int) (CBR)
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET413
nop
RET413:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P414: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_233:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_233
nop

P415: !_ST [10] (maybe <- 0x148) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_234:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P416: !_CASX [20] (maybe <- 0x149) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_234:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_234
nop

P417: !_CASX [11] (maybe <- 0x14a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_235:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_235:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_235
nop

P418: !_LD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_236:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P419: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_236:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_236
nop

P420: !_CASX [22] (maybe <- 0x14b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_237:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_237:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_237
nop

P421: !_ST [8] (maybe <- 0x14d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_238:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P422: !_ST [2] (maybe <- 0x3f800005) (FP) (Loop exit)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 12 ]
loop_exit_0_238:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_238
nop

P423: !_ST [16] (maybe <- 0x14e) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_239:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET423
nop
RET423:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_0_239:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_239
nop

P424: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_240:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P425: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_240:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_240
nop

P426: !_PREFETCH [19] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_241:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 22
loop_exit_0_241:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_241
nop

P427: !_ST [11] (maybe <- 0x14f) (Int) (Loop entry) (Loop exit) (Branch target of P571)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_242:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_0_242:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_242
nop
ba P428
nop

TARGET571:
ba RET571
nop


P428: !_ST [12] (maybe <- 0x150) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_243:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P429: !_CASX [0] (maybe <- 0x151) (Int) (Loop exit)
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_243:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_243
nop

P430: !_CASX [16] (maybe <- 0x153) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_244:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P431: !_CAS [14] (maybe <- 0x155) (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %l6
lduw [%l6], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_244:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_244
nop

P432: !_CASX [21] (maybe <- 0x156) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_245:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P433: !_PREFETCH [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 0
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_245:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_245
nop

P434: !_REPLACEMENT [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_246:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
loop_exit_0_246:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_246
nop

P435: !_CASX [7] (maybe <- 0x158) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_247:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P436: !_REPLACEMENT [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_247:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_247
nop

P437: !_CAS [2] (maybe <- 0x15a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_248:
add %i0, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_248:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_248
nop

P438: !_CASX [3] (maybe <- 0x15b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_249:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P439: !_CASX [2] (maybe <- 0x15d) (Int) (Loop exit)
add %i0, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_249:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_249
nop

P440: !_CASX [14] (maybe <- 0x15e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_250:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_250:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_250
nop

P441: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_251:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P442: !_LD [23] (Int) (Loop exit)
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_251:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_251
nop

P443: !_CASX [5] (maybe <- 0x15f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_252:
add %i1, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_252:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_252
nop

P444: !_LD [0] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_253:
ld [%i0 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_253:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_253
nop

P445: !_CASX [2] (maybe <- 0x160) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_254:
add %i0, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P446: !_CASX [20] (maybe <- 0x161) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l3
mov %l4, %o3
casx [%l6], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_254:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_254
nop

P447: !_CASX [6] (maybe <- 0x162) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_255:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P448: !_ST [18] (maybe <- 0x164) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_255:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_255
nop

P449: !_LD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_256:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P450: !_REPLACEMENT [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P451: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_256:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_256
nop

P452: !_PREFETCH [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_257:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 3

P453: !_CASX [15] (maybe <- 0x165) (Int) (Loop exit)
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_257:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_257
nop

P454: !_CASX [4] (maybe <- 0x167) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_258:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_258:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_258
nop

P455: !_CASX [15] (maybe <- 0x169) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_259:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_259:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_259
nop

P456: !_ST [7] (maybe <- 0x16b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_260:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P457: !_REPLACEMENT [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
loop_exit_0_260:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_260
nop

P458: !_LD [16] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_261:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P459: !_CASX [22] (maybe <- 0x16c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i3], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4

P460: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_261:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_261
nop

P461: !_LD [8] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_262:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P462: !_PREFETCH [11] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 23
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_262:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_262
nop

P463: !_CASX [14] (maybe <- 0x16e) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_263:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET463
nop
RET463:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P464: !_ST [16] (maybe <- 0x3f800006) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_263:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_263
nop

P465: !_CASX [9] (maybe <- 0x16f) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_264:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P466: !_CASX [9] (maybe <- 0x171) (Int) (Loop exit)
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_264:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_264
nop

P467: !_CASX [20] (maybe <- 0x173) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_265:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_265:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_265
nop

P468: !_CASX [3] (maybe <- 0x174) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_266:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_266:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_266
nop

P469: !_CASX [10] (maybe <- 0x176) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_267:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_267:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_267
nop

P470: !_LD [9] (FP) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_268:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET470
nop
RET470:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_268:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_268
nop

P471: !_ST [22] (maybe <- 0x178) (Int) (Loop entry) (Branch target of P317)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_269:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
ba P472
nop

TARGET317:
ba RET317
nop


P472: !_REPLACEMENT [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+12], %l7
st %l7, [%i3+12]
add %i3, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
loop_exit_0_269:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_269
nop

P473: !_CASX [14] (maybe <- 0x179) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_270:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P474: !_REPLACEMENT [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_270:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_270
nop

P475: !_FLUSHI [22] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_271:
flush %g0 
loop_exit_0_271:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_271
nop

P476: !_CASX [19] (maybe <- 0x17a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_272:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_272:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_272
nop

P477: !_CASX [23] (maybe <- 0x17c) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_273:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET477
nop
RET477:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P478: !_CASX [21] (maybe <- 0x17d) (Int) (Loop exit) (CBR)
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET478
nop
RET478:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_273:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_273
nop

P479: !_CASX [19] (maybe <- 0x17f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_274:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_274:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_274
nop

P480: !_REPLACEMENT [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_275:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
loop_exit_0_275:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_275
nop

P481: !_ST [1] (maybe <- 0x181) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_276:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P482: !_ST [21] (maybe <- 0x182) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
loop_exit_0_276:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_276
nop

P483: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_277:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P484: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_277:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_277
nop

P485: !_ST [21] (maybe <- 0x183) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_278:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P486: !_REPLACEMENT [2] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
loop_exit_0_278:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_278
nop

P487: !_CASX [5] (maybe <- 0x184) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_279:
add %i1, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_279:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_279
nop

P488: !_LD [12] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_280:
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P489: !_REPLACEMENT [0] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P490: !_LD [22] (Int) (Loop exit) (Branch target of P223)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_280:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_280
nop
ba P491
nop

TARGET223:
ba RET223
nop


P491: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_281:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P492: !_CASX [23] (maybe <- 0x185) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P493: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_281:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_281
nop

P494: !_CASX [20] (maybe <- 0x186) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_282:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_282:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_282
nop

P495: !_PREFETCH [17] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_283:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 17

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET495
nop
RET495:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P496: !_LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P497: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_283:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_283
nop

P498: !_CASX [2] (maybe <- 0x187) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_284:
add %i0, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_284:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_284
nop

P499: !_REPLACEMENT [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_285:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
loop_exit_0_285:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_285
nop

P500: !_CASX [13] (maybe <- 0x188) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_286:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P501: !_CASX [2] (maybe <- 0x18a) (Int) (Loop exit)
add %i0, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_286:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_286
nop

P502: !_CASX [19] (maybe <- 0x18b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_287:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_287:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_287
nop

P503: !_PREFETCH [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_288:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 0
loop_exit_0_288:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_288
nop

P504: !_CASX [9] (maybe <- 0x18d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_289:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P505: !_REPLACEMENT [0] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_289:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_289
nop

P506: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_290:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P507: !_LD [14] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i2 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_290:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_290
nop

P508: !_CASX [20] (maybe <- 0x18f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_291:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_291:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_291
nop

P509: !_CAS [0] (maybe <- 0x190) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_292:
lduw [%i0], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i0], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_292:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_292
nop

P510: !_CAS [22] (maybe <- 0x191) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_293:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_293:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_293
nop

P511: !_CASX [1] (maybe <- 0x192) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_294:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P512: !_CASX [19] (maybe <- 0x194) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_294:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_294
nop

P513: !_CASX [21] (maybe <- 0x196) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_295:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P514: !_CASX [18] (maybe <- 0x198) (Int) (Loop exit) (LE)
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldxa [%i3] %asi, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
mov %o5, %l3
mov  %l7, %o5
casxa [%i3] %asi, %l3, %o5
! move %o5(lower) -> %o3(upper)
sllx %o5, 32, %o3
! move %o5(upper) -> %o3(lower)
srlx %o5, 32, %l3
or %l3, %o3, %o3
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_295:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_295
nop

P515: !_CASX [1] (maybe <- 0x19a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_296:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_296:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_296
nop

P516: !_REPLACEMENT [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_297:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]

P517: !_CAS [5] (maybe <- 0x19c) (Int) (Loop exit)
add %i1, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_297:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_297
nop

P518: !_ST [18] (maybe <- 0x19d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_298:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
loop_exit_0_298:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_298
nop

P519: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_299:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P520: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_299:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_299
nop

P521: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_300:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P522: !_LD [15] (Int) (Loop exit)
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_300:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_300
nop

P523: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_301:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P524: !_REPLACEMENT [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P525: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_301:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_301
nop

P526: !_CASX [17] (maybe <- 0x19e) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_302:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P527: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_302:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_302
nop

P528: !_CASX [5] (maybe <- 0x19f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_303:
add %i1, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_303:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_303
nop

P529: !_CASX [16] (maybe <- 0x1a0) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_304:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_304:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_304
nop

P530: !_CASX [1] (maybe <- 0x1a2) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_305:
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
ldxa [%i0] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
mov %l7, %o5
mov  %l6, %l7
casxa [%i0] %asi, %o5, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_305:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_305
nop

P531: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_306:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P532: !_CASX [23] (maybe <- 0x1a4) (Int) (Branch target of P563)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov  %l6, %l7
mov %l4, %l6
casx [%o5], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4
ba P533
nop

TARGET563:
ba RET563
nop


P533: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_306:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_306
nop

P534: !_CASX [12] (maybe <- 0x1a5) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_307:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P535: !_CAS [3] (maybe <- 0x1a7) (Int) (Loop exit) (Branch target of P6)
lduw [%i1], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%i1], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_307:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_307
nop
ba P536
nop

TARGET6:
ba RET6
nop


P536: !_LD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_308:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P537: !_CASX [18] (maybe <- 0x1a8) (Int) (LE) (Branch target of P477)
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
! move %o5(upper) -> %o1(upper)
or %o5, %g0, %o1
mov %o5, %l3
mov  %l7, %o5
casxa [%i2] %asi, %l3, %o5
! move %o5(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srl %o5, 0, %l3
or %l3, %o1, %o1
! move %o5(upper) -> %o2(upper)
or %o5, %g0, %o2
add  %l4, 1, %l4
ba P538
nop

TARGET477:
ba RET477
nop


P538: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_308:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_308
nop

P539: !_CAS [8] (maybe <- 0x1aa) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_309:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_309:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_309
nop

P540: !_LD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_310:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P541: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_310:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_310
nop

P542: !_ST [22] (maybe <- 0x3f800007) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_311:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]

P543: !_CASX [10] (maybe <- 0x1ab) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_311:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_311
nop

P544: !_CASX [22] (maybe <- 0x1ad) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_312:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_312:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_312
nop

P545: !_CASX [21] (maybe <- 0x1af) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_313:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P546: !_CASX [2] (maybe <- 0x1b1) (Int) (Loop exit)
add %i0, 8, %o5
ldx [%o5], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l7
mov %l4, %o3
casx [%o5], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_313:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_313
nop

P547: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_314:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_314:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_314
nop

P548: !_CASX [14] (maybe <- 0x1b2) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_315:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_315:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_315
nop

P549: !_REPLACEMENT [22] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_316:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+4], %o5
st %o5, [%i3+4]
add %i3, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
loop_exit_0_316:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_316
nop

P550: !_CASX [19] (maybe <- 0x1b3) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_317:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P551: !_ST [6] (maybe <- 0x1b5) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_317:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_317
nop

P552: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_318:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P553: !_LD [21] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
lduwa [%i2 + 0] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_318:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_318
nop

P554: !_CASX [6] (maybe <- 0x1b6) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_319:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_319:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_319
nop

P555: !_CASX [18] (maybe <- 0x1b8) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_320:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P556: !_ST [1] (maybe <- 0x1ba) (Int) (Loop exit)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_320:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_320
nop

P557: !_CASX [13] (maybe <- 0x1bb) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_321:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_321:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_321
nop

P558: !_CASX [9] (maybe <- 0x1bd) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_322:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P559: !_CASX [12] (maybe <- 0x1bf) (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_322:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_322
nop

P560: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_323:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P561: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_323:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_323
nop

P562: !_CASX [10] (maybe <- 0x1c1) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_324:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_324:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_324
nop

P563: !_LD [2] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_325:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET563
nop
RET563:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P564: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_325:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_325
nop

P565: !_CASX [20] (maybe <- 0x1c3) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_326:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_326:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_326
nop

P566: !_PREFETCH [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_327:
prefetch [%i0 + 4], 16
loop_exit_0_327:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_327
nop

P567: !_CASX [14] (maybe <- 0x1c4) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_328:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_328:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_328
nop

P568: !_LD [10] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_329:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered

P569: !_LD [21] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P570: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_329:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_329
nop

P571: !_CASX [18] (maybe <- 0x1c5) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_330:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET571
nop
RET571:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P572: !_CAS [8] (maybe <- 0x1c7) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %o5
lduw [%o5], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_330:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_330
nop

P573: !_REPLACEMENT [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_331:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+12], %l6
st %l6, [%i3+12]
add %i3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]

P574: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
loop_exit_0_331:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_331
nop

P575: !_CASX [18] (maybe <- 0x1c8) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_332:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_332:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_332
nop

P576: !_CASX [18] (maybe <- 0x1ca) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_333:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_333:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_333
nop

P577: !_CASX [6] (maybe <- 0x1cc) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_334:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P578: !_PREFETCH [10] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 21
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_334:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_334
nop

P579: !_REPLACEMENT [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_335:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P580: !_CAS [3] (maybe <- 0x1ce) (Int) (Loop exit) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
wr %g0, 0x88, %asi
lduwa [%i1] %asi, %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l3, %l6
casa [%i1] %asi, %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_335:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_335
nop

P581: !_CASX [18] (maybe <- 0x1cf) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_336:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_336:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_336
nop

P582: !_CASX [9] (maybe <- 0x1d1) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_337:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_337:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_337
nop

P583: !_ST [1] (maybe <- 0x1d3) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_338:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P584: !_CASX [6] (maybe <- 0x1d4) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_338:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_338
nop

P585: !_CASX [6] (maybe <- 0x1d6) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_339:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_339:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_339
nop

P586: !_LD [6] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_340:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered

P587: !_CASX [18] (maybe <- 0x1d8) (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_340:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_340
nop

P588: !_ST [22] (maybe <- 0x1da) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_341:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET588
nop
RET588:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P589: !_CASX [1] (maybe <- 0x1db) (Int) (Loop exit)
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_341:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_341
nop

P590: !_REPLACEMENT [20] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_342:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P591: !_CASX [19] (maybe <- 0x1dd) (Int) (Loop exit) (LE)
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldxa [%i3] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
mov %l7, %o5
mov  %l6, %l7
casxa [%i3] %asi, %o5, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_342:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_342
nop

P592: !_CAS [8] (maybe <- 0x1df) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_343:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_343:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_343
nop

P593: !_CAS [8] (maybe <- 0x1e0) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_344:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_344:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_344
nop

P594: !_CASX [23] (maybe <- 0x1e1) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_345:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P595: !_LD [20] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P596: !_LD [20] (Int) (Loop exit)
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_345:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_345
nop

P597: !_CASX [23] (maybe <- 0x1e2) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_346:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P598: !_CASX [21] (maybe <- 0x1e3) (Int) (Loop exit) (LE)
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
ldxa [%i2] %asi, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %o5
or %o5, %o2, %o2
mov %l7, %o5
mov  %l6, %l7
casxa [%i2] %asi, %o5, %l7
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %o5
or %o5, %o3, %o3
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_346:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_346
nop

P599: !_REPLACEMENT [16] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_347:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P600: !_LD [3] (Int)
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P601: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_347:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_347
nop

P602: !_CAS [14] (maybe <- 0x1e5) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_348:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_348:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_348
nop

P603: !_PREFETCH [22] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_349:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 1
loop_exit_0_349:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_349
nop

P604: !_PREFETCH [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_350:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 2

P605: !_LD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P606: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_350:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_350
nop

P607: !_CASX [23] (maybe <- 0x1e6) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_351:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_351:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_351
nop

P608: !_REPLACEMENT [10] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_352:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
loop_exit_0_352:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_352
nop

P609: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_353:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P610: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_353:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_353
nop

P611: !_FLUSHI [5] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_354:
flush %g0 

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET611
nop
RET611:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P612: !_LD [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P613: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_354:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_354
nop

P614: !_LD [14] (Int) (Loop entry) (Branch target of P313)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_355:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P615
nop

TARGET313:
ba RET313
nop


P615: !_CASX [16] (maybe <- 0x1e7) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P616: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_355:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_355
nop

P617: !_CASX [22] (maybe <- 0x1e9) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_356:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_356:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_356
nop

P618: !_REPLACEMENT [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_357:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
loop_exit_0_357:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_357
nop

P619: !_CASX [0] (maybe <- 0x1eb) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_358:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P620: !_REPLACEMENT [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_358:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_358
nop

P621: !_CAS [18] (maybe <- 0x1ed) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_359:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_359:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_359
nop

P622: !_REPLACEMENT [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_360:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
loop_exit_0_360:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_360
nop

P623: !_CASX [1] (maybe <- 0x1ee) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_361:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P624: !_CASX [9] (maybe <- 0x1f0) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l7
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_361:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_361
nop

P625: !_CASX [8] (maybe <- 0x1f2) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_362:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P626: !_ST [15] (maybe <- 0x1f3) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_362:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_362
nop

P627: !_REPLACEMENT [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_363:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+4], %l6
st %l6, [%i2+4]
add %i2, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P628: !_CASX [8] (maybe <- 0x1f4) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_363:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_363
nop

P629: !_CASX [17] (maybe <- 0x1f5) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_364:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P630: !_CASX [11] (maybe <- 0x1f6) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_364:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_364
nop

P631: !_REPLACEMENT [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_365:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P632: !_CASX [23] (maybe <- 0x1f7) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_365:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_365
nop

P633: !_CASX [11] (maybe <- 0x1f8) (Int) (Loop entry) (Branch target of P279)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_366:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P634
nop

TARGET279:
ba RET279
nop


P634: !_LD [0] (Int)
lduw [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P635: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_366:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_366
nop

P636: !_FLUSHI [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_367:
flush %g0 

P637: !_LD [9] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P638: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_367:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_367
nop

P639: !_PREFETCH [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_368:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 0], 20

P640: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P641: !_LD [17] (Int) (Loop exit)
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_368:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_368
nop

P642: !_CAS [21] (maybe <- 0x1f9) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_369:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET642
nop
RET642:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P643: !_CASX [17] (maybe <- 0x1fa) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l6
mov %l4, %o2
casx [%l7], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_369:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_369
nop

P644: !_CASX [22] (maybe <- 0x1fb) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_370:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_370:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_370
nop

P645: !_CASX [4] (maybe <- 0x1fd) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_371:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_371:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_371
nop

P646: !_REPLACEMENT [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_372:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P647: !_CASX [1] (maybe <- 0x1ff) (Int) (Loop exit)
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_372:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_372
nop

P648: !_ST [10] (maybe <- 0x201) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_373:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P649: !_CASX [6] (maybe <- 0x202) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_373:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_373
nop

P650: !_CAS [0] (maybe <- 0x204) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_374:
lduw [%i0], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i0], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_374:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_374
nop

P651: !_CASX [2] (maybe <- 0x205) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_375:
add %i0, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_375:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_375
nop

P652: !_CASX [21] (maybe <- 0x206) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_376:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P653: !_CASX [17] (maybe <- 0x208) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l7
mov %l4, %o3
casx [%o5], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_0_376:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_376
nop

P654: !_CASX [6] (maybe <- 0x209) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_377:
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldxa [%i3] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
mov %l7, %o5
mov  %l6, %l7
casxa [%i3] %asi, %o5, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_377:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_377
nop

P655: !_CASX [1] (maybe <- 0x20b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_378:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_378:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_378
nop

P656: !_LD [21] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_379:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_0_379:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_379
nop

P657: !_CASX [16] (maybe <- 0x20d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_380:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_380:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_380
nop

P658: !_CASX [15] (maybe <- 0x20f) (Int) (Loop entry) (Branch target of P642)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_381:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P659
nop

TARGET642:
ba RET642
nop


P659: !_LD [18] (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P660: !_LD [18] (Int) (Loop exit)
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_0_381:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_381
nop

P661: !_CAS [8] (maybe <- 0x211) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_382:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_0_382:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_382
nop

P662: !_REPLACEMENT [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_383:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
loop_exit_0_383:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_383
nop

P663: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_384:
membar #StoreLoad
loop_exit_0_384:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_384
nop

P664: !_CASX [2] (maybe <- 0x212) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_385:
add %i0, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_385:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_385
nop

P665: !_ST [19] (maybe <- 0x213) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_386:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_0_386:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_386
nop

P666: !_CASX [12] (maybe <- 0x214) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_0_387:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_0_387:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_387
nop

P667: !_MEMBAR (Int)
membar #StoreLoad

END_NODES0: ! Test instruction sequence for CPU 0 ends
sethi %hi(0xdead0e0f), %l3
or    %l3, %lo(0xdead0e0f), %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sethi %hi(0xdead0e0f), %l3
or    %l3, %lo(0xdead0e0f), %l3
stw %l3, [%i5] 
ld [%i5], %f0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

restore
retl
nop
!-----------------

! register usage:
! %i0 %i1 : base registers for first 2 regions
! %i2 %i3 : cache registers for 8 regions
! %i4 fixed pointer to per-cpu results area
! %l1 moving pointer to per-cpu FP results area
! %o7 moving pointer to per-cpu integer results area
! %i5 pointer to per-cpu private area
! %l0 holds lfsr, used as source of random bits 
! %l2 loop count register
! %f16 running counter for unique fp store values
! %f17 holds increment value for fp counter
! %l4 running counter for unique integer store values (increment value is always 1)
! %l5 move-to register for load values (simulation only)
! %f30 move-to register for FP values (simulation only)
! %i4 holds the instructions count which is used for interrupt ordering
! %i4 holds the thread_id (OBP only) 
! %l5 holds the moving pointer for interrupt bonus data (OBP only). Conflicts with RTL/simulation usage
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func1:
! instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
andn %i0, 63, %i0

add %i1, 63, %i1
andn %i1, 63, %i1

add %i2, 63, %i2
andn %i2, 63, %i2

add %i3, 63, %i3
andn %i3, 63, %i3

add %i4, 63, %i4
andn %i4, 63, %i4

add %i5, 63, %i5
andn %i5, 63, %i5


! Initialize pointer to FP load results area
mov   %i4, %l1

! Initialize pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
add  %o7, %l1, %o7 

! Reinitialize i4 to 0. i4 will be used to keep the count of analyzable node info
mov 0x0, %i4

! Initialize %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %o5
or    %o5, %lo(0xdeadbee0), %o5
stw   %o5, [%i5]
sethi %hi(0xdeadbee1), %o5
or    %o5, %lo(0xdeadbee1), %o5
stw   %o5, [%i5+4]
ldd [%i5], %f0
fmovd %f0, %f2
fmovd %f0, %f4
fmovd %f0, %f6
fmovd %f0, %f8
fmovd %f0, %f10
fmovd %f0, %f12
fmovd %f0, %f14
fmovd %f0, %f16
fmovd %f0, %f18
fmovd %f0, %f20
fmovd %f0, %f22
fmovd %f0, %f24
fmovd %f0, %f26
fmovd %f0, %f28
fmovd %f0, %f30
fmovd %f0, %f32
fmovd %f0, %f34
fmovd %f0, %f36
fmovd %f0, %f38
fmovd %f0, %f40
fmovd %f0, %f42
fmovd %f0, %f44
fmovd %f0, %f46
fmovd %f0, %f48
fmovd %f0, %f50
fmovd %f0, %f52
fmovd %f0, %f54
fmovd %f0, %f56
fmovd %f0, %f58
fmovd %f0, %f60
fmovd %f0, %f62

! Signature for extract_loads script to start extracting load values for this stream
sethi %hi(0x01deade1), %o5
or    %o5, %lo(0x01deade1), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x800001), %l4
or    %l4, %lo(0x800001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x40000001), %o5
or    %o5, %lo(0x40000001), %o5
stw %o5, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x34800000), %o5
or    %o5, %lo(0x34800000), %o5
stw %o5, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x363^4
sethi %hi(0x363), %l0
or    %l0, %lo(0x363), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES1: ! Test instruction sequence for ISTREAM 1 begins

P668: !_CAS [22] (maybe <- 0x800001) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_0:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_0
nop

P669: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_1:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P670: !_CASX [5] (maybe <- 0x800002) (Int)
add %i1, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P671: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_1
nop

P672: !_CASX [6] (maybe <- 0x800003) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_2:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P673: !_ST [2] (maybe <- 0x800005) (Int) (Loop exit)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_2
nop

P674: !_LD [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_3:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P675: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_3
nop

P676: !_CASX [21] (maybe <- 0x800006) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_4:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P677: !_CASX [6] (maybe <- 0x800008) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_4
nop

P678: !_REPLACEMENT [16] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_5:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
loop_exit_1_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_5
nop

P679: !_CASX [12] (maybe <- 0x80000a) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_6:
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldxa [%i2] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov %o5, %l3
mov  %l7, %o5
casxa [%i2] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4

P680: !_LD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P681: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_6
nop

P682: !_CAS [17] (maybe <- 0x80000c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_7:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P683: !_CASX [6] (maybe <- 0x80000d) (Int) (Loop exit) (LE)
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
sllx %l6, 32, %o5
or %l6, %o5, %l6 
and %l7, %l6, %o5
srlx %o5, 8, %o5
sllx %l7, 8, %l7
and %l7, %l6, %l7
or %l7, %o5, %l7 
sethi %hi(0xffff0000), %l6
srlx %l7, 16, %o5
andn %o5, %l6, %o5
andn %l7, %l6, %l7
sllx %l7, 16, %l7
or %l7, %o5, %l7 
srlx %l7, 32, %o5
sllx %l7, 32, %l7
or %l7, %o5, %o5 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
mov %l3, %l6
mov  %o5, %l3
casxa [%i2] %asi, %l6, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_7
nop

P684: !_CASX [16] (maybe <- 0x80000f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_8:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_8
nop

P685: !_CASX [4] (maybe <- 0x800011) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_9:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P686: !_PREFETCH [1] (Int) (Loop exit) (Branch target of P1035)
prefetch [%i0 + 4], 27
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_9
nop
ba P687
nop

TARGET1035:
ba RET1035
nop


P687: !_CASX [6] (maybe <- 0x800013) (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_10:
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov %o5, %l3
mov  %l7, %o5
casxa [%i2] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4

P688: !_REPLACEMENT [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_10
nop

P689: !_ST [4] (maybe <- 0x800015) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_11:
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %l6, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
stwa   %l3, [%i1 + 4] %asi
add   %l4, 1, %l4

P690: !_REPLACEMENT [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+12], %l6
st %l6, [%i2+12]
add %i2, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
loop_exit_1_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_11
nop

P691: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_12:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P692: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_12
nop

P693: !_CAS [20] (maybe <- 0x800016) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_13:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_13
nop

P694: !_ST [17] (maybe <- 0x800017) (Int) (Loop entry) (Loop exit) (LE) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_14:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %l4, %l7, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l7, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
stwa   %l6, [%i2 + 12] %asi
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET694
nop
RET694:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

loop_exit_1_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_14
nop

P695: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_15:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P696: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_15
nop

P697: !_CASX [3] (maybe <- 0x800018) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_16:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_16
nop

P698: !_ST [9] (maybe <- 0x80001a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_17:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
loop_exit_1_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_17
nop

P699: !_CASX [11] (maybe <- 0x80001b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_18:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P700: !_CASX [17] (maybe <- 0x80001c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l3
mov %l4, %o3
casx [%l6], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_18
nop

P701: !_CASX [13] (maybe <- 0x80001d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_19:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P702: !_LD [23] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_19
nop

P703: !_PREFETCH [10] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_20:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 1
loop_exit_1_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_20
nop

P704: !_PREFETCH [4] (Int) (Loop entry) (Loop exit) (Branch target of P756)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_21:
prefetch [%i1 + 4], 23
loop_exit_1_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_21
nop
ba P705
nop

TARGET756:
ba RET756
nop


P705: !_CASX [4] (maybe <- 0x80001f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_22:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_22
nop

P706: !_PREFETCH [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_23:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 0], 2

P707: !_CASX [4] (maybe <- 0x800021) (Int) (Loop exit)
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_23
nop

P708: !_CASX [10] (maybe <- 0x800023) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_24:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_24
nop

P709: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_25:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P710: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_25
nop

P711: !_REPLACEMENT [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_26:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+12], %l7
st %l7, [%i3+12]
add %i3, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
loop_exit_1_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_26
nop

P712: !_PREFETCH [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_27:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 20

P713: !_CASX [22] (maybe <- 0x800025) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_27
nop

P714: !_ST [3] (maybe <- 0x800027) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_28:
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4
loop_exit_1_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_28
nop

P715: !_CAS [17] (maybe <- 0x800028) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_29:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P716: !_CAS [23] (maybe <- 0x800029) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o1
mov %o1, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o1(lower)
srl %l3, 0, %l6
or %l6, %o1, %o1
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_29
nop

P717: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_30:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P718: !_LD [6] (Int) (Loop exit)
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_30
nop

P719: !_CAS [0] (maybe <- 0x80002a) (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_31:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l3, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
wr %g0, 0x88, %asi
lduwa [%i0] %asi, %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l6, %l7
casa [%i0] %asi, %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P720: !_ST [13] (maybe <- 0x40000001) (FP) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_31
nop

P721: !_PREFETCH [18] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_32:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 20
loop_exit_1_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_32
nop

P722: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_33:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P723: !_LD [1] (Int) (Loop exit) (CBR)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET723
nop
RET723:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_33
nop

P724: !_CASX [22] (maybe <- 0x80002b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_34:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P725: !_CASX [6] (maybe <- 0x80002d) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l7
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_34
nop

P726: !_CASX [14] (maybe <- 0x80002f) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_35:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l3, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
sllx %l6, 32, %l6
wr %g0, 0x88, %asi
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldxa [%l3] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
mov  %l7, %o5
mov  %l6, %l7
casxa [%l3] %asi, %o5, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
add  %l4, 1, %l4

P727: !_CASX [19] (maybe <- 0x800030) (Int) (Loop exit) (LE) (CBR)
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldxa [%i2] %asi, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
! move %l7(upper) -> %o2(lower)
srlx %l7, 32, %o5
or %o5, %o2, %o2
mov %l7, %o5
mov  %l6, %l7
casxa [%i2] %asi, %o5, %l7
! move %l7(lower) -> %o3(upper)
sllx %l7, 32, %o3
! move %l7(upper) -> %o3(lower)
srlx %l7, 32, %o5
or %o5, %o3, %o3
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET727
nop
RET727:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_35
nop

P728: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_36:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P729: !_ST [8] (maybe <- 0x800032) (Int)
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P730: !_LD [8] (Int) (Loop exit)
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_36
nop

P731: !_REPLACEMENT [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_37:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P732: !_REPLACEMENT [8] (Int) (Loop exit)
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
loop_exit_1_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_37
nop

P733: !_LD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_38:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P734: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_38
nop

P735: !_LD [20] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_39:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET735
nop
RET735:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P736: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_39
nop

P737: !_REPLACEMENT [4] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_40:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET737
nop
RET737:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P738: !_LD [12] (Int)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P739: !_LD [12] (Int) (Loop exit)
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_40
nop

P740: !_CASX [14] (maybe <- 0x800033) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_41:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P741: !_REPLACEMENT [17] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_41
nop

P742: !_CASX [10] (maybe <- 0x800034) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_42:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_42
nop

P743: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_43:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P744: !_LD [11] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_43
nop

P745: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_44:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P746: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_44
nop

P747: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_45:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P748: !_REPLACEMENT [2] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]

P749: !_LD [13] (Int) (Loop exit)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_45
nop

P750: !_CAS [23] (maybe <- 0x800036) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_46:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P751: !_PREFETCH [20] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 12], 16
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_46
nop

P752: !_CASX [13] (maybe <- 0x800037) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_47:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_47
nop

P753: !_CAS [2] (maybe <- 0x800039) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_48:
add %i0, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_48
nop

P754: !_CASX [18] (maybe <- 0x80003a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_49:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_49
nop

P755: !_PREFETCH [11] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_50:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 17

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET755
nop
RET755:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P756: !_CASX [6] (maybe <- 0x80003c) (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET756
nop
RET756:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_50
nop

P757: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_51:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P758: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_51
nop

P759: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_52:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P760: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_52
nop

P761: !_CASX [22] (maybe <- 0x80003e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_53:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_53
nop

P762: !_CASX [14] (maybe <- 0x800040) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_54:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P763: !_LD [11] (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_54
nop

P764: !_REPLACEMENT [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_55:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
loop_exit_1_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_55
nop

P765: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_56:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P766: !_CASX [21] (maybe <- 0x800041) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P767: !_LD [6] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET767
nop
RET767:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_56
nop

P768: !_CASX [16] (maybe <- 0x800043) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_57:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P769: !_PREFETCH [4] (Int) (Loop exit) (Branch target of P1173)
prefetch [%i1 + 4], 20
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_57
nop
ba P770
nop

TARGET1173:
ba RET1173
nop


P770: !_REPLACEMENT [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_58:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]

P771: !_CASX [11] (maybe <- 0x800045) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_58
nop

P772: !_CASX [5] (maybe <- 0x800046) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_59:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
sllx %l3, 32, %l3
wr %g0, 0x88, %asi
add %i1, 8, %o5
ldxa [%o5] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
mov  %l6, %l7
mov  %l3, %l6
casxa [%o5] %asi, %l7, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_59
nop

P773: !_CASX [3] (maybe <- 0x800047) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_60:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P774: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P775: !_LD [8] (Int) (Loop exit)
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_60
nop

P776: !_CASX [12] (maybe <- 0x800049) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_61:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET776
nop
RET776:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_61
nop

P777: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_62:
membar #StoreLoad

P778: !_CASX [14] (maybe <- 0x80004b) (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_62
nop

P779: !_CASX [21] (maybe <- 0x80004c) (Int) (Loop entry) (Branch target of P936)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_63:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P780
nop

TARGET936:
ba RET936
nop


P780: !_CASX [11] (maybe <- 0x80004e) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_63
nop

P781: !_REPLACEMENT [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_64:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
loop_exit_1_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_64
nop

P782: !_CAS [11] (maybe <- 0x80004f) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_65:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P783: !_CASX [2] (maybe <- 0x800050) (Int) (Loop exit) (CBR)
add %i0, 8, %l6
ldx [%l6], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l3
mov %l4, %o2
casx [%l6], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET783
nop
RET783:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_65
nop

P784: !_ST [6] (maybe <- 0x800051) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_66:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
loop_exit_1_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_66
nop

P785: !_CAS [15] (maybe <- 0x800052) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_67:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i3], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P786: !_LD [11] (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_67
nop

P787: !_CASX [19] (maybe <- 0x800053) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_68:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET787
nop
RET787:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_68
nop

P788: !_ST [19] (maybe <- 0x800055) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_69:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_1_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_69
nop

P789: !_CASX [20] (maybe <- 0x800056) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_70:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P790: !_CASX [16] (maybe <- 0x800057) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_70
nop

P791: !_CASX [2] (maybe <- 0x800059) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_71:
add %i0, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_71
nop

P792: !_CASX [16] (maybe <- 0x80005a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_72:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P793: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P794: !_LD [6] (Int) (Loop exit)
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_72
nop

P795: !_CAS [14] (maybe <- 0x80005c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_73:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_73
nop

P796: !_ST [0] (maybe <- 0x80005d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_74:
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P797: !_CASX [12] (maybe <- 0x80005e) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_74
nop

P798: !_CASX [4] (maybe <- 0x800060) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_75:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_75
nop

P799: !_CASX [3] (maybe <- 0x800062) (Int) (Loop entry) (Loop exit) (Branch target of P1110)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_76:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_76
nop
ba P800
nop

TARGET1110:
ba RET1110
nop


P800: !_CASX [13] (maybe <- 0x800064) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_77:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P801: !_CASX [4] (maybe <- 0x800066) (Int) (Loop exit)
ldx [%i1], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i1], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_77
nop

P802: !_CASX [12] (maybe <- 0x800068) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_78:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_78
nop

P803: !_ST [4] (maybe <- 0x80006a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_79:
stw   %l4, [%i1 + 4 ]
add   %l4, 1, %l4
loop_exit_1_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_79
nop

P804: !_REPLACEMENT [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_80:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]

P805: !_LD [5] (Int)
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P806: !_LD [12] (Int) (Loop exit) (Branch target of P1134)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_80
nop
ba P807
nop

TARGET1134:
ba RET1134
nop


P807: !_CAS [2] (maybe <- 0x80006b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_81:
add %i0, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P808: !_PREFETCH [20] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 16
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_81
nop

P809: !_ST [16] (maybe <- 0x80006c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_82:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_1_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_82
nop

P810: !_CASX [11] (maybe <- 0x80006d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_83:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_83
nop

P811: !_CASX [12] (maybe <- 0x80006e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_84:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_84
nop

P812: !_CAS [10] (maybe <- 0x800070) (Int) (Loop entry) (Branch target of P915)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_85:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
ba P813
nop

TARGET915:
ba RET915
nop


P813: !_REPLACEMENT [0] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_85
nop

P814: !_ST [0] (maybe <- 0x800071) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_86:
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4
loop_exit_1_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_86
nop

P815: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_87:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P816: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_87
nop

P817: !_ST [22] (maybe <- 0x800072) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_88:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P818: !_LD [3] (Int)
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P819: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_88
nop

P820: !_PREFETCH [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_89:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 21

P821: !_CASX [20] (maybe <- 0x800073) (Int) (Loop exit) (Branch target of P694)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_89
nop
ba P822
nop

TARGET694:
ba RET694
nop


P822: !_CASX [13] (maybe <- 0x800074) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_90:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P823: !_LD [0] (FP) (Loop exit)
ld [%i0 + 0], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_90
nop

P824: !_CAS [8] (maybe <- 0x800076) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_91:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P825: !_CAS [21] (maybe <- 0x800077) (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET825
nop
RET825:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_91
nop

P826: !_CAS [2] (maybe <- 0x800078) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_92:
add %i0, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P827: !_CASX [12] (maybe <- 0x800079) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l7
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i2], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_92
nop

P828: !_REPLACEMENT [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_93:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P829: !_PREFETCH [19] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 4], 0
loop_exit_1_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_93
nop

P830: !_CASX [22] (maybe <- 0x80007b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_94:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P831: !_LD [16] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_94
nop

P832: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_95:
membar #StoreLoad

P833: !_CAS [17] (maybe <- 0x80007d) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_95
nop

P834: !_REPLACEMENT [16] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_96:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
loop_exit_1_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_96
nop

P835: !_ST [14] (maybe <- 0x80007e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_97:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_1_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_97
nop

P836: !_ST [3] (maybe <- 0x80007f) (Int) (Loop entry) (Loop exit) (Branch target of P1181)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_98:
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4
loop_exit_1_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_98
nop
ba P837
nop

TARGET1181:
ba RET1181
nop


P837: !_PREFETCH [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_99:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 16

P838: !_CASX [16] (maybe <- 0x800080) (Int) (Loop exit)
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_99
nop

P839: !_LD [5] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_100:
ld [%i1 + 12], %f0
! 1 addresses covered

P840: !_REPLACEMENT [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_100
nop

P841: !_CASX [0] (maybe <- 0x800082) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_101:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_101
nop

P842: !_CASX [16] (maybe <- 0x800084) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_102:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P843: !_ST [14] (maybe <- 0x40000002) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_102
nop

P844: !_ST [1] (maybe <- 0x40000003) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_103:
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P845: !_PREFETCH [9] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 2
loop_exit_1_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_103
nop

P846: !_REPLACEMENT [20] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_104:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+12], %l6
st %l6, [%i3+12]
add %i3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
loop_exit_1_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_104
nop

P847: !_REPLACEMENT [0] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_105:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
loop_exit_1_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_105
nop

P848: !_CASX [4] (maybe <- 0x800086) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_106:
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
ldxa [%i1] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
mov %l7, %o5
mov  %l6, %l7
casxa [%i1] %asi, %o5, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_106
nop

P849: !_PREFETCH [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_107:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 3
loop_exit_1_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_107
nop

P850: !_CASX [14] (maybe <- 0x800088) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_108:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P851: !_ST [8] (maybe <- 0x800089) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_108
nop

P852: !_CAS [6] (maybe <- 0x80008a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_109:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i2], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P853: !_CASX [15] (maybe <- 0x80008b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_109
nop

P854: !_CASX [8] (maybe <- 0x80008d) (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_110:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
sllx %l3, 32, %l3
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldxa [%o5] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
mov  %l6, %l7
mov  %l3, %l6
casxa [%o5] %asi, %l7, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
add  %l4, 1, %l4

P855: !_ST [1] (maybe <- 0x80008e) (Int) (Loop exit)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_110
nop

P856: !_CASX [6] (maybe <- 0x80008f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_111:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P857: !_ST [20] (maybe <- 0x800091) (Int) (Loop exit) (Branch target of P1184)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_111
nop
ba P858
nop

TARGET1184:
ba RET1184
nop


P858: !_CAS [4] (maybe <- 0x800092) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_112:
add %i1, 4, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P859: !_CAS [22] (maybe <- 0x800093) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %o1
mov %o1, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_112
nop

P860: !_CAS [22] (maybe <- 0x800094) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_113:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_113
nop

P861: !_CASX [21] (maybe <- 0x800095) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_114:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P862: !_ST [16] (maybe <- 0x800097) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_114
nop

P863: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_115:
membar #StoreLoad
loop_exit_1_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_115
nop

P864: !_MEMBAR (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_116:
membar #StoreLoad

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET864
nop
RET864:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P865: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
loop_exit_1_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_116
nop

P866: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_117:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P867: !_CASX [10] (maybe <- 0x800098) (Int)
ldx [%i3], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i3], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4

P868: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_117
nop

P869: !_LD [5] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_118:
wr %g0, 0x88, %asi
lduwa [%i1 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P870: !_CAS [19] (maybe <- 0x80009a) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%l3], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P871: !_LD [16] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_118
nop

P872: !_PREFETCH [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_119:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1

P873: !_CASX [14] (maybe <- 0x80009b) (Int) (Loop exit)
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_119
nop

P874: !_ST [4] (maybe <- 0x80009c) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_120:
stw   %l4, [%i1 + 4 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET874
nop
RET874:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P875: !_LD [9] (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_120
nop

P876: !_CASX [7] (maybe <- 0x80009d) (Int) (Loop entry) (Branch target of P825)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_121:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P877
nop

TARGET825:
ba RET825
nop


P877: !_REPLACEMENT [8] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_121
nop

P878: !_PREFETCH [21] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_122:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 2
loop_exit_1_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_122
nop

P879: !_ST [20] (maybe <- 0x80009f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_123:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P880: !_CASX [14] (maybe <- 0x8000a0) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_123
nop

P881: !_CASX [19] (maybe <- 0x8000a1) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_124:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_124
nop

P882: !_ST [23] (maybe <- 0x8000a3) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_125:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_1_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_125
nop

P883: !_CASX [7] (maybe <- 0x8000a4) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_126:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P884: !_PREFETCH [0] (Int) (Loop exit)
prefetch [%i0 + 0], 22
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_126
nop

P885: !_CASX [19] (maybe <- 0x8000a6) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_127:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_127
nop

P886: !_CAS [22] (maybe <- 0x8000a8) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_128:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P887: !_LD [3] (Int) (LE)
wr %g0, 0x88, %asi
lduwa [%i1 + 0] %asi, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P888: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_128
nop

P889: !_REPLACEMENT [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_129:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
loop_exit_1_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_129
nop

P890: !_ST [17] (maybe <- 0x8000a9) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_130:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %l4, %l7, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l7, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
stwa   %l6, [%i2 + 12] %asi
add   %l4, 1, %l4

P891: !_CASX [10] (maybe <- 0x8000aa) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_130
nop

P892: !_CASX [23] (maybe <- 0x8000ac) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_131:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_131
nop

P893: !_CASX [20] (maybe <- 0x8000ad) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_132:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_132
nop

P894: !_CASX [20] (maybe <- 0x8000ae) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_133:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET894
nop
RET894:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_133
nop

P895: !_CASX [9] (maybe <- 0x8000af) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_134:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_134
nop

P896: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_135:
membar #StoreLoad

P897: !_CASX [8] (maybe <- 0x8000b1) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_135
nop

P898: !_CASX [2] (maybe <- 0x8000b2) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_136:
add %i0, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_136
nop

P899: !_CAS [10] (maybe <- 0x8000b3) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_137:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P900: !_CASX [16] (maybe <- 0x8000b4) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i2], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_137
nop

P901: !_CAS [14] (maybe <- 0x8000b6) (Int) (Loop entry) (Branch target of P1094)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_138:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
ba P902
nop

TARGET1094:
ba RET1094
nop


P902: !_ST [10] (maybe <- 0x40000004) (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 4 ]
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_138
nop

P903: !_PREFETCH [18] (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_139:
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetcha [%i3 + 0] %asi, 1
loop_exit_1_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_139
nop

P904: !_CASX [5] (maybe <- 0x8000b7) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_140:
add %i1, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_140:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_140
nop

P905: !_PREFETCH [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_141:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 19

P906: !_CASX [21] (maybe <- 0x8000b8) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_141:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_141
nop

P907: !_CASX [13] (maybe <- 0x8000ba) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_142:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P908: !_CAS [22] (maybe <- 0x8000bc) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
lduw [%l6], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_142:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_142
nop

P909: !_REPLACEMENT [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_143:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P910: !_CASX [22] (maybe <- 0x8000bd) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_143:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_143
nop

P911: !_CASX [20] (maybe <- 0x8000bf) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_144:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P912: !_CASX [13] (maybe <- 0x8000c0) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_144:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_144
nop

P913: !_LD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_145:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P914: !_REPLACEMENT [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P915: !_LD [7] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET915
nop
RET915:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_145:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_145
nop

P916: !_CASX [19] (maybe <- 0x8000c2) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_146:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P917: !_ST [4] (maybe <- 0x40000005) (FP) (Loop exit)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 4 ]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_146:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_146
nop

P918: !_ST [18] (maybe <- 0x8000c4) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_147:
wr %g0, 0x88, %asi
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l3, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
stwa   %o5, [%i2 + 0] %asi
add   %l4, 1, %l4
loop_exit_1_147:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_147
nop

P919: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_148:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P920: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_148:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_148
nop

P921: !_REPLACEMENT [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_149:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
loop_exit_1_149:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_149
nop

P922: !_REPLACEMENT [22] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_150:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET922
nop
RET922:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_1_150:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_150
nop

P923: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_151:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P924: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_151:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_151
nop

P925: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_152:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P926: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_152:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_152
nop

P927: !_CASX [2] (maybe <- 0x8000c5) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_153:
add %i0, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_153:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_153
nop

P928: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_154:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P929: !_CASX [4] (maybe <- 0x8000c6) (Int)
ldx [%i1], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i1], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P930: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_154:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_154
nop

P931: !_CAS [8] (maybe <- 0x8000c8) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_155:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P932: !_LD [12] (Int) (Branch target of P767)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
ba P933
nop

TARGET767:
ba RET767
nop


P933: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_155:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_155
nop

P934: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_156:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P935: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_156:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_156
nop

P936: !_LD [23] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_157:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET936
nop
RET936:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P937: !_CASX [7] (maybe <- 0x8000c9) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i2], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P938: !_LD [21] (Int) (Loop exit)
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_157:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_157
nop

P939: !_ST [5] (maybe <- 0x8000cb) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_158:
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4
loop_exit_1_158:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_158
nop

P940: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_159:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P941: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_159:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_159
nop

P942: !_LD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_160:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P943: !_LD [21] (Int) (Loop exit)
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_160:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_160
nop

P944: !_CAS [17] (maybe <- 0x8000cc) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_161:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l6
lduwa [%l6] %asi, %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l7, %o5
casa [%l6] %asi, %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P945: !_CAS [22] (maybe <- 0x8000cd) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_161:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_161
nop

P946: !_LD [2] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_162:
wr %g0, 0x88, %asi
lduwa [%i0 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P947: !_LD [20] (Int) (Loop exit) (CBR)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET947
nop
RET947:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_162:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_162
nop

P948: !_CASX [2] (maybe <- 0x8000ce) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_163:
add %i0, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P949: !_CASX [5] (maybe <- 0x8000cf) (Int) (Loop exit)
add %i1, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_163:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_163
nop

P950: !_CASX [5] (maybe <- 0x8000d0) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_164:
add %i1, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_164:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_164
nop

P951: !_CASX [11] (maybe <- 0x8000d1) (Int) (Loop entry) (Loop exit) (Branch target of P787)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_165:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_165:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_165
nop
ba P952
nop

TARGET787:
ba RET787
nop


P952: !_CASX [3] (maybe <- 0x8000d2) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_166:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_166:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_166
nop

P953: !_LD [0] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_167:
wr %g0, 0x88, %asi
lduwa [%i0 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P954: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_167:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_167
nop

P955: !_CASX [7] (maybe <- 0x8000d4) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_168:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_168:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_168
nop

P956: !_CASX [8] (maybe <- 0x8000d6) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_169:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P957: !_LD [0] (Int)
lduw [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P958: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_169:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_169
nop

P959: !_PREFETCH [16] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_170:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 3
loop_exit_1_170:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_170
nop

P960: !_CASX [16] (maybe <- 0x8000d7) (Int) (Loop entry) (Branch target of P1170)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_171:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P961
nop

TARGET1170:
ba RET1170
nop


P961: !_CASX [17] (maybe <- 0x8000d9) (Int) (Loop exit)
add %i3, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_171:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_171
nop

P962: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_172:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P963: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_172:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_172
nop

P964: !_ST [1] (maybe <- 0x8000da) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_173:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4
loop_exit_1_173:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_173
nop

P965: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_174:
membar #StoreLoad

P966: !_REPLACEMENT [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
loop_exit_1_174:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_174
nop

P967: !_CASX [17] (maybe <- 0x8000db) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_175:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_175:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_175
nop

P968: !_CASX [22] (maybe <- 0x8000dc) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_176:
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
sllx %l7, 32, %l3
or %l7, %l3, %l7 
and %o5, %l7, %l3
srlx %l3, 8, %l3
sllx %o5, 8, %o5
and %o5, %l7, %o5
or %o5, %l3, %o5 
sethi %hi(0xffff0000), %l7
srlx %o5, 16, %l3
andn %l3, %l7, %l3
andn %o5, %l7, %o5
sllx %o5, 16, %o5
or %o5, %l3, %o5 
srlx %o5, 32, %l3
sllx %o5, 32, %o5
or %o5, %l3, %l3 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
mov %l6, %l7
mov  %l3, %l6
casxa [%i2] %asi, %l7, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_176:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_176
nop

P969: !_LD [16] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_177:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P970: !_CASX [7] (maybe <- 0x8000de) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P971: !_LD [7] (Int) (Loop exit)
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_177:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_177
nop

P972: !_LD [16] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_178:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P973: !_CAS [14] (maybe <- 0x8000e0) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
mov %l4, %o1
cas [%o5], %l7, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P974: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_178:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_178
nop

P975: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_179:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P976: !_CASX [9] (maybe <- 0x8000e1) (Int) (CBR)
ldx [%i2], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i2], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET976
nop
RET976:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P977: !_LD [12] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET977
nop
RET977:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_179:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_179
nop

P978: !_CASX [18] (maybe <- 0x8000e3) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_180:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET978
nop
RET978:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_180:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_180
nop

P979: !_CASX [13] (maybe <- 0x8000e5) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_181:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_181:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_181
nop

P980: !_CASX [1] (maybe <- 0x8000e7) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_182:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET980
nop
RET980:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_182:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_182
nop

P981: !_ST [5] (maybe <- 0x8000e9) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_183:
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4
loop_exit_1_183:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_183
nop

P982: !_CAS [9] (maybe <- 0x8000ea) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_184:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i2], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P983: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P984: !_LD [10] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_184:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_184
nop

P985: !_CASX [1] (maybe <- 0x8000eb) (Int) (Loop entry) (Loop exit) (Branch target of P1255)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_185:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_185:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_185
nop
ba P986
nop

TARGET1255:
ba RET1255
nop


P986: !_CAS [20] (maybe <- 0x8000ed) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_186:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_186:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_186
nop

P987: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_187:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0x200000), %l3
sub   %i1, %l3, %i1
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P988: !_CASX [5] (maybe <- 0x8000ee) (Int)
add %i1, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P989: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5

sethi %hi(0x200000), %l6
add   %i1, %l6, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_187:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_187
nop

P990: !_CASX [18] (maybe <- 0x8000ef) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_188:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P991: !_PREFETCH [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 26
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_188:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_188
nop

P992: !_CASX [1] (maybe <- 0x8000f1) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_189:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P993: !_LD [14] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P994: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_189:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_189
nop

P995: !_LD [21] (Int) (Loop entry) (CBR) (Branch target of P1235)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_190:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET995
nop
RET995:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

ba P996
nop

TARGET1235:
ba RET1235
nop


P996: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_190:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_190
nop

P997: !_LD [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_191:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P998: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_191:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_191
nop

P999: !_CASX [15] (maybe <- 0x8000f3) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_192:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_192:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_192
nop

P1000: !_CASX [7] (maybe <- 0x8000f5) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_193:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_193:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_193
nop

P1001: !_REPLACEMENT [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_194:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+4], %o5
st %o5, [%i3+4]
add %i3, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P1002: !_CAS [9] (maybe <- 0x8000f7) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i2], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_194:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_194
nop

P1003: !_ST [15] (maybe <- 0x40000006) (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_195:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]
loop_exit_1_195:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_195
nop

P1004: !_ST [17] (maybe <- 0x8000f8) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_196:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P1005: !_REPLACEMENT [0] (Int) (Loop exit) (Branch target of P776)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
loop_exit_1_196:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_196
nop
ba P1006
nop

TARGET776:
ba RET776
nop


P1006: !_LD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_197:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1007: !_ST [16] (maybe <- 0x8000f9) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1008: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_197:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_197
nop

P1009: !_CAS [14] (maybe <- 0x8000fa) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_198:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1010: !_CASX [11] (maybe <- 0x8000fb) (Int) (Loop exit) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
sllx %l7, 32, %l7
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l6
ldxa [%l6] %asi, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
mov  %o5, %l3
mov  %l7, %o5
casxa [%l6] %asi, %l3, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
! move %o5(upper) -> %o2(lower)
srlx %o5, 32, %l3
or %l3, %o2, %o2
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_198:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_198
nop

P1011: !_CASX [3] (maybe <- 0x8000fc) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_199:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_199:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_199
nop

P1012: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_200:
membar #StoreLoad

P1013: !_CASX [5] (maybe <- 0x8000fe) (Int) (Loop exit)
add %i1, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_200:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_200
nop

P1014: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_201:
membar #StoreLoad
loop_exit_1_201:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_201
nop

P1015: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_202:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1016: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_202:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_202
nop

P1017: !_CASX [3] (maybe <- 0x8000ff) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_203:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1018: !_CASX [23] (maybe <- 0x800101) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l6
mov %l4, %o3
casx [%l7], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_203:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_203
nop

P1019: !_CASX [15] (maybe <- 0x800102) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_204:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_204:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_204
nop

P1020: !_ST [5] (maybe <- 0x800104) (Int) (Loop entry) (Loop exit) (Branch target of P1226)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_205:
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4
loop_exit_1_205:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_205
nop
ba P1021
nop

TARGET1226:
ba RET1226
nop


P1021: !_CASX [9] (maybe <- 0x800105) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_206:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1022: !_LD [4] (Int) (LE)
wr %g0, 0x88, %asi
lduwa [%i1 + 4] %asi, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1023: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_206:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_206
nop

P1024: !_CAS [22] (maybe <- 0x800107) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_207:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1025: !_ST [19] (maybe <- 0x800108) (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_207:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_207
nop

P1026: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_208:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1027: !_CAS [14] (maybe <- 0x800109) (Int)
add %i3, 12, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
mov %l4, %o1
cas [%o5], %l7, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1028: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_208:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_208
nop

P1029: !_PREFETCH [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_209:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 2

P1030: !_CAS [21] (maybe <- 0x80010a) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i2], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_209:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_209
nop

P1031: !_CAS [11] (maybe <- 0x80010b) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_210:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %o5
lduwa [%o5] %asi, %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l3, %l6
casa [%o5] %asi, %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1032: !_CASX [22] (maybe <- 0x80010c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l7
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i2], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_210:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_210
nop

P1033: !_CASX [1] (maybe <- 0x80010e) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_211:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1034: !_CASX [6] (maybe <- 0x800110) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_211:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_211
nop

P1035: !_LD [7] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_212:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1035
nop
RET1035:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1036: !_CASX [19] (maybe <- 0x800112) (Int)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P1037: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_212:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_212
nop

P1038: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_213:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1039: !_CASX [1] (maybe <- 0x800114) (Int)
ldx [%i0], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i0], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P1040: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_213:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_213
nop

P1041: !_ST [6] (maybe <- 0x800116) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_214:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
loop_exit_1_214:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_214
nop

P1042: !_CAS [2] (maybe <- 0x800117) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_215:
add %i0, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_215:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_215
nop

P1043: !_LD [15] (Int) (Loop entry) (Branch target of P1164)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_216:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1044
nop

TARGET1164:
ba RET1164
nop


P1044: !_CAS [13] (maybe <- 0x800118) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %l6
mov %l6, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
mov %l4, %o1
cas [%o5], %l7, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1045: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_216:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_216
nop

P1046: !_CASX [9] (maybe <- 0x800119) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_217:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_217:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_217
nop

P1047: !_REPLACEMENT [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_218:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
loop_exit_1_218:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_218
nop

P1048: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_219:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1049: !_FLUSHI [1] (Int)
flush %g0 

P1050: !_LD [9] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_219:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_219
nop

P1051: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_220:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1052: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_220:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_220
nop

P1053: !_CASX [13] (maybe <- 0x80011b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_221:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1054: !_CASX [4] (maybe <- 0x80011d) (Int) (Loop exit)
ldx [%i1], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i1], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_221:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_221
nop

P1055: !_ST [0] (maybe <- 0x80011f) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_222:
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1056: !_CASX [7] (maybe <- 0x800120) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_222:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_222
nop

P1057: !_CASX [7] (maybe <- 0x800122) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_223:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_223:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_223
nop

P1058: !_REPLACEMENT [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_224:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+12], %l6
st %l6, [%i3+12]
add %i3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]

P1059: !_REPLACEMENT [2] (Int) (Loop exit)
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
loop_exit_1_224:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_224
nop

P1060: !_PREFETCH [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_225:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 1
loop_exit_1_225:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_225
nop

P1061: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_226:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1062: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_226:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_226
nop

P1063: !_CASX [19] (maybe <- 0x800124) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_227:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1064: !_LD [17] (Int) (Branch target of P1098)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
ba P1065
nop

TARGET1098:
ba RET1098
nop


P1065: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_227:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_227
nop

P1066: !_CASX [9] (maybe <- 0x800126) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_228:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_228:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_228
nop

P1067: !_CASX [17] (maybe <- 0x800128) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_229:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1068: !_CASX [10] (maybe <- 0x800129) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l7
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_229:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_229
nop

P1069: !_CASX [2] (maybe <- 0x80012b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_230:
add %i0, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1070: !_ST [7] (maybe <- 0x80012c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_230:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_230
nop

P1071: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_231:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1072: !_CASX [1] (maybe <- 0x80012d) (Int) (LE)
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
sllx %l6, 32, %o5
or %l6, %o5, %l6 
and %l7, %l6, %o5
srlx %o5, 8, %o5
sllx %l7, 8, %l7
and %l7, %l6, %l7
or %l7, %o5, %l7 
sethi %hi(0xffff0000), %l6
srlx %l7, 16, %o5
andn %o5, %l6, %o5
andn %l7, %l6, %l7
sllx %l7, 16, %l7
or %l7, %o5, %l7 
srlx %l7, 32, %o5
sllx %l7, 32, %l7
or %l7, %o5, %o5 
wr %g0, 0x88, %asi
ldxa [%i0] %asi, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
! move %l3(upper) -> %o1(upper)
or %l3, %g0, %o1
mov %l3, %l6
mov  %o5, %l3
casxa [%i0] %asi, %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srl %l3, 0, %l6
or %l6, %o1, %o1
! move %l3(upper) -> %o2(upper)
or %l3, %g0, %o2
add  %l4, 1, %l4

P1073: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_231:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_231
nop

P1074: !_CAS [8] (maybe <- 0x80012f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_232:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1075: !_CASX [18] (maybe <- 0x800130) (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_232:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_232
nop

P1076: !_CAS [8] (maybe <- 0x800132) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_233:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1077: !_LD [9] (FP) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_233:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_233
nop

P1078: !_CASX [16] (maybe <- 0x800133) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_234:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_234:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_234
nop

P1079: !_CASX [6] (maybe <- 0x800135) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_235:
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldxa [%i3] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
mov %l7, %o5
mov  %l6, %l7
casxa [%i3] %asi, %o5, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
add  %l4, 1, %l4

P1080: !_FLUSHI [10] (Int) (Loop exit)
flush %g0 
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_235:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_235
nop

P1081: !_CASX [23] (maybe <- 0x800137) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_236:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_236:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_236
nop

P1082: !_CAS [2] (maybe <- 0x800138) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_237:
add %i0, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_237:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_237
nop

P1083: !_CASX [19] (maybe <- 0x800139) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_238:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_238:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_238
nop

P1084: !_CASX [20] (maybe <- 0x80013b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_239:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_239:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_239
nop

P1085: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_240:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1086: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_240:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_240
nop

P1087: !_CAS [5] (maybe <- 0x80013c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_241:
add %i1, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_241:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_241
nop

P1088: !_REPLACEMENT [12] (Int) (Loop entry) (Branch target of P894)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_242:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
ba P1089
nop

TARGET894:
ba RET894
nop


P1089: !_PREFETCH [20] (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 12], 21
loop_exit_1_242:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_242
nop

P1090: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_243:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1091: !_CASX [21] (maybe <- 0x80013d) (Int) (Branch target of P735)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4
ba P1092
nop

TARGET735:
ba RET735
nop


P1092: !_LD [12] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_243:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_243
nop

P1093: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_244:
membar #StoreLoad
loop_exit_1_244:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_244
nop

P1094: !_CASX [9] (maybe <- 0x80013f) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_245:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1094
nop
RET1094:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1095: !_CAS [9] (maybe <- 0x800141) (Int) (Loop exit)
lduw [%i2], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%i2], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_245:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_245
nop

P1096: !_REPLACEMENT [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_246:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
loop_exit_1_246:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_246
nop

P1097: !_REPLACEMENT [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_247:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
loop_exit_1_247:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_247
nop

P1098: !_CASX [17] (maybe <- 0x800142) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_248:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1098
nop
RET1098:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1099: !_CASX [3] (maybe <- 0x800143) (Int) (Loop exit)
ldx [%i1], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i1], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_248:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_248
nop

P1100: !_CASX [14] (maybe <- 0x800145) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_249:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
sllx %l7, 32, %l7
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldxa [%l6] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov  %o5, %l3
mov  %l7, %o5
casxa [%l6] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4

P1101: !_REPLACEMENT [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_249:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_249
nop

P1102: !_CASX [12] (maybe <- 0x800146) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_250:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1103: !_CASX [9] (maybe <- 0x800148) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_250:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_250
nop

P1104: !_REPLACEMENT [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_251:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]

P1105: !_CASX [13] (maybe <- 0x80014a) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_251:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_251
nop

P1106: !_CASX [23] (maybe <- 0x80014c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_252:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1107: !_CASX [17] (maybe <- 0x80014d) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l6
mov %l4, %o3
casx [%l7], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_252:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_252
nop

P1108: !_CASX [0] (maybe <- 0x80014e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_253:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_253:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_253
nop

P1109: !_REPLACEMENT [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_254:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+12], %l6
st %l6, [%i2+12]
add %i2, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]

P1110: !_CASX [9] (maybe <- 0x800150) (Int) (Loop exit) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1110
nop
RET1110:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_254:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_254
nop

P1111: !_CAS [16] (maybe <- 0x800152) (Int) (Loop entry) (Loop exit) (Branch target of P727)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_255:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_255:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_255
nop
ba P1112
nop

TARGET727:
ba RET727
nop


P1112: !_PREFETCH [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_256:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 1

P1113: !_CASX [1] (maybe <- 0x800153) (Int) (Loop exit)
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_256:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_256
nop

P1114: !_CAS [20] (maybe <- 0x800155) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_257:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_257:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_257
nop

P1115: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_258:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1116: !_LD [0] (Int) (Loop exit) (CBR)
lduw [%i0 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1116
nop
RET1116:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_258:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_258
nop

P1117: !_CASX [5] (maybe <- 0x800156) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_259:
add %i1, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1118: !_CAS [16] (maybe <- 0x800157) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %o5
lduw [%o5], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_259:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_259
nop

P1119: !_CASX [19] (maybe <- 0x800158) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_260:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1120: !_CASX [2] (maybe <- 0x80015a) (Int) (Loop exit)
add %i0, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_260:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_260
nop

P1121: !_LD [14] (Int) (Loop entry) (Branch target of P1116)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_261:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1122
nop

TARGET1116:
ba RET1116
nop


P1122: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_261:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_261
nop

P1123: !_CASX [22] (maybe <- 0x80015b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_262:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_262:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_262
nop

P1124: !_CASX [1] (maybe <- 0x80015d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_263:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1125: !_REPLACEMENT [5] (Int) (Loop exit) (Branch target of P995)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_263:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_263
nop
ba P1126
nop

TARGET995:
ba RET995
nop


P1126: !_ST [2] (maybe <- 0x80015f) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_264:
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1126
nop
RET1126:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

loop_exit_1_264:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_264
nop

P1127: !_PREFETCH [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_265:
prefetch [%i1 + 0], 17

P1128: !_LD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1129: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_265:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_265
nop

P1130: !_LD [10] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_266:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_1_266:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_266
nop

P1131: !_ST [6] (maybe <- 0x800160) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_267:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1132: !_PREFETCH [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 23
loop_exit_1_267:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_267
nop

P1133: !_PREFETCH [4] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_268:
prefetch [%i1 + 4], 23
loop_exit_1_268:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_268
nop

P1134: !_CASX [10] (maybe <- 0x800161) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_269:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1134
nop
RET1134:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_269:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_269
nop

P1135: !_ST [23] (maybe <- 0x800163) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_270:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1136: !_CASX [14] (maybe <- 0x800164) (Int) (Loop exit) (Branch target of P947)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_270:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_270
nop
ba P1137
nop

TARGET947:
ba RET947
nop


P1137: !_CASX [6] (maybe <- 0x800165) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_271:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1138: !_REPLACEMENT [1] (Int) (Loop exit) (Branch target of P723)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_271:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_271
nop
ba P1139
nop

TARGET723:
ba RET723
nop


P1139: !_CASX [1] (maybe <- 0x800167) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_272:
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
ldxa [%i0] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov %o5, %l3
mov  %l7, %o5
casxa [%i0] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_272:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_272
nop

P1140: !_PREFETCH [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_273:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 1

P1141: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1142: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_273:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_273
nop

P1143: !_CASX [8] (maybe <- 0x800169) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_274:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1144: !_CASX [14] (maybe <- 0x80016a) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l7
mov %l4, %o3
casx [%o5], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_274:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_274
nop

P1145: !_LD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_275:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1146: !_CASX [8] (maybe <- 0x80016b) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov  %l3, %l6
mov %l4, %l3
casx [%l7], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P1147: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_275:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_275
nop

P1148: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_276:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1149: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_276:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_276
nop

P1150: !_CASX [21] (maybe <- 0x80016c) (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_277:
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
sllx %l6, 32, %o5
or %l6, %o5, %l6 
and %l7, %l6, %o5
srlx %o5, 8, %o5
sllx %l7, 8, %l7
and %l7, %l6, %l7
or %l7, %o5, %l7 
sethi %hi(0xffff0000), %l6
srlx %l7, 16, %o5
andn %o5, %l6, %o5
andn %l7, %l6, %l7
sllx %l7, 16, %l7
or %l7, %o5, %l7 
srlx %l7, 32, %o5
sllx %l7, 32, %l7
or %l7, %o5, %o5 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldxa [%i3] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
mov %l3, %l6
mov  %o5, %l3
casxa [%i3] %asi, %l6, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
add  %l4, 1, %l4

P1151: !_PREFETCH [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_277:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_277
nop

P1152: !_CAS [8] (maybe <- 0x80016e) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_278:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1153: !_LD [20] (Int) (Branch target of P976)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
ba P1154
nop

TARGET976:
ba RET976
nop


P1154: !_LD [15] (Int) (Loop exit) (Branch target of P1301)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_278:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_278
nop
ba P1155
nop

TARGET1301:
ba RET1301
nop


P1155: !_ST [1] (maybe <- 0x80016f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_279:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1156: !_LD [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1157: !_LD [14] (Int) (Loop exit)
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_279:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_279
nop

P1158: !_LD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_280:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1159: !_LD [12] (Int) (Loop exit)
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_280:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_280
nop

P1160: !_PREFETCH [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_281:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 22

P1161: !_ST [16] (maybe <- 0x800170) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_1_281:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_281
nop

P1162: !_CASX [21] (maybe <- 0x800171) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_282:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_282:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_282
nop

P1163: !_CASX [22] (maybe <- 0x800173) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_283:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_283:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_283
nop

P1164: !_CAS [11] (maybe <- 0x800175) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_284:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1164
nop
RET1164:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1165: !_CASX [23] (maybe <- 0x800176) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %o5
mov %l4, %o2
casx [%l3], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_284:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_284
nop

P1166: !_CAS [8] (maybe <- 0x800177) (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_285:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l6
lduwa [%l6] %asi, %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l7, %o5
casa [%l6] %asi, %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1167: !_CASX [19] (maybe <- 0x800178) (Int) (Loop exit)
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_285:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_285
nop

P1168: !_CASX [18] (maybe <- 0x80017a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_286:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1169: !_ST [0] (maybe <- 0x40000007) (FP) (Loop exit) (Branch target of P1293)
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_286:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_286
nop
ba P1170
nop

TARGET1293:
ba RET1293
nop


P1170: !_CAS [9] (maybe <- 0x80017c) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_287:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1170
nop
RET1170:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_287:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_287
nop

P1171: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_288:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1172: !_CASX [10] (maybe <- 0x80017d) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P1173: !_LD [2] (Int) (Loop exit) (CBR)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1173
nop
RET1173:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_288:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_288
nop

P1174: !_ST [20] (maybe <- 0x80017f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_289:
sethi %hi(REGION6_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_1_289:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_289
nop

P1175: !_CASX [6] (maybe <- 0x800180) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_290:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1176: !_CASX [8] (maybe <- 0x800182) (Int) (Loop exit)
add %i2, 8, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l6
mov %l4, %o3
casx [%l7], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_290:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_290
nop

P1177: !_CASX [16] (maybe <- 0x800183) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_291:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1178: !_PREFETCH [9] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 16
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_291:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_291
nop

P1179: !_CAS [18] (maybe <- 0x800185) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_292:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3] %asi, %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l7, %o5
casa [%i3] %asi, %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_292:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_292
nop

P1180: !_PREFETCH [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_293:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 22

P1181: !_CASX [10] (maybe <- 0x800186) (Int) (Loop exit) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1181
nop
RET1181:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_293:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_293
nop

P1182: !_CASX [4] (maybe <- 0x800188) (Int) (Loop entry) (Loop exit) (Branch target of P977)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_294:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_294:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_294
nop
ba P1183
nop

TARGET977:
ba RET977
nop


P1183: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_295:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1184: !_LD [16] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1184
nop
RET1184:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_295:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_295
nop

P1185: !_ST [9] (maybe <- 0x80018a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_296:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
loop_exit_1_296:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_296
nop

P1186: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_297:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1187: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_297:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_297
nop

P1188: !_REPLACEMENT [21] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_298:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
loop_exit_1_298:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_298
nop

P1189: !_CASX [3] (maybe <- 0x80018b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_299:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_299:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_299
nop

P1190: !_PREFETCH [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_300:
prefetch [%i1 + 4], 1

P1191: !_CASX [17] (maybe <- 0x80018d) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_300:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_300
nop

P1192: !_LD [1] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_301:
wr %g0, 0x88, %asi
lduwa [%i0 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1193: !_CASX [9] (maybe <- 0x80018e) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i2], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P1194: !_LD [10] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_301:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_301
nop

P1195: !_FLUSHI [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_302:
flush %g0 

P1196: !_CASX [23] (maybe <- 0x800190) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_302:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_302
nop

P1197: !_CASX [8] (maybe <- 0x800191) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_303:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_303:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_303
nop

P1198: !_CASX [19] (maybe <- 0x800192) (Int) (Loop entry) (Loop exit) (Branch target of P874)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_304:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_304:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_304
nop
ba P1199
nop

TARGET874:
ba RET874
nop


P1199: !_CASX [15] (maybe <- 0x800194) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_305:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_305:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_305
nop

P1200: !_CAS [13] (maybe <- 0x800196) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_306:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1201: !_CASX [18] (maybe <- 0x800197) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l7
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i2], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_306:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_306
nop

P1202: !_PREFETCH [16] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_307:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 1
loop_exit_1_307:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_307
nop

P1203: !_CASX [1] (maybe <- 0x800199) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_308:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_308:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_308
nop

P1204: !_LD [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_309:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1205: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_309:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_309
nop

P1206: !_CASX [13] (maybe <- 0x80019b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_310:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1207: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1208: !_LD [16] (Int) (Loop exit)
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_310:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_310
nop

P1209: !_REPLACEMENT [17] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_311:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+12], %l6
st %l6, [%i2+12]
add %i2, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
loop_exit_1_311:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_311
nop

P1210: !_CASX [12] (maybe <- 0x80019d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_312:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1211: !_CASX [11] (maybe <- 0x80019f) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_312:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_312
nop

P1212: !_CASX [19] (maybe <- 0x8001a0) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_313:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_313:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_313
nop

P1213: !_CASX [20] (maybe <- 0x8001a2) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_314:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1214: !_LD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1215: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_314:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_314
nop

P1216: !_LD [20] (Int) (Loop entry) (Branch target of P980)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_315:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1217
nop

TARGET980:
ba RET980
nop


P1217: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_315:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_315
nop

P1218: !_CASX [2] (maybe <- 0x8001a3) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_316:
add %i0, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1219: !_CASX [15] (maybe <- 0x8001a4) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_316:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_316
nop

P1220: !_CASX [16] (maybe <- 0x8001a6) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_317:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_317:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_317
nop

P1221: !_ST [19] (maybe <- 0x8001a8) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_318:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P1222: !_LD [7] (Int) (LE) (CBR)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1222
nop
RET1222:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1223: !_LD [19] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_318:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_318
nop

P1224: !_CASX [6] (maybe <- 0x8001a9) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_319:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1225: !_CASX [20] (maybe <- 0x8001ab) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l7
mov %l4, %o3
casx [%o5], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_319:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_319
nop

P1226: !_CAS [21] (maybe <- 0x8001ac) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_320:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i2], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1226
nop
RET1226:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1227: !_LD [11] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1228: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_320:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_320
nop

P1229: !_LD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_321:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1230: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_321:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_321
nop

P1231: !_ST [8] (maybe <- 0x40000008) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_322:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 12 ]

P1232: !_CAS [6] (maybe <- 0x8001ad) (Int) (Loop exit) (Branch target of P1126)
lduw [%i2], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i2], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_322:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_322
nop
ba P1233
nop

TARGET1126:
ba RET1126
nop


P1233: !_CASX [21] (maybe <- 0x8001ae) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_323:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1234: !_LD [4] (Int)
lduw [%i1 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1235: !_LD [21] (Int) (Loop exit) (CBR) (Branch target of P1291)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1235
nop
RET1235:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_323:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_323
nop
ba P1236
nop

TARGET1291:
ba RET1291
nop


P1236: !_CASX [0] (maybe <- 0x8001b0) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_324:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_324:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_324
nop

P1237: !_REPLACEMENT [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_325:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P1238: !_CASX [10] (maybe <- 0x8001b2) (Int) (Loop exit) (Branch target of P1222)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_325:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_325
nop
ba P1239
nop

TARGET1222:
ba RET1222
nop


P1239: !_CAS [0] (maybe <- 0x8001b4) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_326:
lduw [%i0], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i0], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1240: !_CASX [12] (maybe <- 0x8001b5) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i2], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_326:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_326
nop

P1241: !_REPLACEMENT [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_327:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P1242: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
loop_exit_1_327:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_327
nop

P1243: !_CASX [9] (maybe <- 0x8001b7) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_328:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_328:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_328
nop

P1244: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_329:
membar #StoreLoad

P1245: !_CASX [21] (maybe <- 0x8001b9) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_329:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_329
nop

P1246: !_ST [2] (maybe <- 0x8001bb) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_330:
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P1247: !_LD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1248: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_330:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_330
nop

P1249: !_ST [1] (maybe <- 0x8001bc) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_331:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4
loop_exit_1_331:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_331
nop

P1250: !_CASX [19] (maybe <- 0x8001bd) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_332:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1251: !_CASX [0] (maybe <- 0x8001bf) (Int) (Loop exit) (Branch target of P737)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_332:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_332
nop
ba P1252
nop

TARGET737:
ba RET737
nop


P1252: !_CASX [19] (maybe <- 0x8001c1) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_333:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_333:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_333
nop

P1253: !_CASX [8] (maybe <- 0x8001c3) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_334:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_334:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_334
nop

P1254: !_CASX [5] (maybe <- 0x8001c4) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_335:
add %i1, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1255: !_ST [9] (maybe <- 0x40000009) (FP) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1255
nop
RET1255:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_335:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_335
nop

P1256: !_ST [19] (maybe <- 0x8001c5) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_336:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_1_336:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_336
nop

P1257: !_CASX [1] (maybe <- 0x8001c6) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_337:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1258: !_CASX [10] (maybe <- 0x8001c8) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_337:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_337
nop

P1259: !_CASX [19] (maybe <- 0x8001ca) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_338:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1260: !_PREFETCH [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 0
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_338:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_338
nop

P1261: !_CAS [7] (maybe <- 0x8001cc) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_339:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P1262: !_CASX [13] (maybe <- 0x8001cd) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %o5
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_339:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_339
nop

P1263: !_ST [0] (maybe <- 0x8001cf) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_340:
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1264: !_CAS [12] (maybe <- 0x8001d0) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i2], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_340:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_340
nop

P1265: !_ST [18] (maybe <- 0x8001d1) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_341:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1266: !_LD [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1267: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_341:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_341
nop

P1268: !_LD [2] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_342:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1269: !_CASX [17] (maybe <- 0x8001d2) (Int) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
sllx %l3, 32, %l3
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldxa [%o5] %asi, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
! move %l6(upper) -> %o1(upper)
or %l6, %g0, %o1
mov  %l6, %l7
mov  %l3, %l6
casxa [%o5] %asi, %l7, %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srl %l6, 0, %l7
or %l7, %o1, %o1
! move %l6(upper) -> %o2(upper)
or %l6, %g0, %o2
add  %l4, 1, %l4

P1270: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_342:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_342
nop

P1271: !_CASX [5] (maybe <- 0x8001d3) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_343:
add %i1, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_343:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_343
nop

P1272: !_CAS [2] (maybe <- 0x8001d4) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_344:
add %i0, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1273: !_CASX [14] (maybe <- 0x8001d5) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l7
mov %l4, %o2
casx [%o5], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_344:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_344
nop

P1274: !_CAS [9] (maybe <- 0x8001d6) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_345:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_345:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_345
nop

P1275: !_CAS [18] (maybe <- 0x8001d7) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_346:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i2], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1276: !_LD [18] (Int)
lduw [%i2 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1277: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_346:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_346
nop

P1278: !_CASX [22] (maybe <- 0x8001d8) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_347:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1279: !_CASX [5] (maybe <- 0x8001da) (Int) (Loop exit)
add %i1, 8, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l6
mov %l4, %o3
casx [%l7], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_347:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_347
nop

P1280: !_REPLACEMENT [6] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_348:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
loop_exit_1_348:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_348
nop

P1281: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_349:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1282: !_REPLACEMENT [12] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]

P1283: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_349:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_349
nop

P1284: !_ST [1] (maybe <- 0x8001db) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_350:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1285: !_ST [21] (maybe <- 0x8001dc) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
loop_exit_1_350:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_350
nop

P1286: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_351:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1287: !_CAS [5] (maybe <- 0x8001dd) (Int)
add %i1, 12, %l3
lduw [%l3], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%l3], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1288: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_351:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_351
nop

P1289: !_CAS [13] (maybe <- 0x8001de) (Int) (Loop entry) (Loop exit) (Branch target of P864)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_352:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_352:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_352
nop
ba P1290
nop

TARGET864:
ba RET864
nop


P1290: !_CASX [1] (maybe <- 0x8001df) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_353:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_353:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_353
nop

P1291: !_CASX [1] (maybe <- 0x8001e1) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_354:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1291
nop
RET1291:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_354:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_354
nop

P1292: !_CASX [16] (maybe <- 0x8001e3) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_355:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_355:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_355
nop

P1293: !_CASX [5] (maybe <- 0x8001e5) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_356:
add %i1, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1293
nop
RET1293:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_356:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_356
nop

P1294: !_CASX [18] (maybe <- 0x8001e6) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_357:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1295: !_LD [7] (Int) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1296: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_1_357:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_357
nop

P1297: !_CASX [3] (maybe <- 0x8001e8) (Int) (Loop entry) (Loop exit) (Branch target of P783)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_358:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_358:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_358
nop
ba P1298
nop

TARGET783:
ba RET783
nop


P1298: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_359:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1299: !_REPLACEMENT [17] (Int) (Branch target of P922)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
ba P1300
nop

TARGET922:
ba RET922
nop


P1300: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_359:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_359
nop

P1301: !_LD [19] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_360:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1301
nop
RET1301:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1302: !_REPLACEMENT [16] (Int)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P1303: !_LD [19] (Int) (Loop exit)
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_360:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_360
nop

P1304: !_CASX [10] (maybe <- 0x8001ea) (Int) (Loop entry) (Branch target of P755)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_361:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P1305
nop

TARGET755:
ba RET755
nop


P1305: !_CASX [20] (maybe <- 0x8001ec) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l3
mov %l4, %o3
casx [%l6], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_1_361:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_361
nop

P1306: !_CASX [20] (maybe <- 0x8001ed) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_362:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1307: !_LD [5] (Int)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 5 

sethi %hi(0x200000), %l6
sub   %i1, %l6, %i1
lduw [%i1 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1308: !_LD [12] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 0] %asi, %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5

sethi %hi(0x200000), %l7
add   %i1, %l7, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_1_362:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_362
nop

P1309: !_ST [0] (maybe <- 0x8001ee) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_363:
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1310: !_LD [9] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1311: !_LD [7] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_363:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_363
nop

P1312: !_CASX [1] (maybe <- 0x8001ef) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_364:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_364:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_364
nop

P1313: !_CASX [7] (maybe <- 0x8001f1) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_365:
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldxa [%i3] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov %o5, %l3
mov  %l7, %o5
casxa [%i3] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4

P1314: !_REPLACEMENT [23] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_365:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_365
nop

P1315: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_366:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1316: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_366:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_366
nop

P1317: !_CASX [14] (maybe <- 0x8001f3) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_367:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_367:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_367
nop

P1318: !_CAS [4] (maybe <- 0x8001f4) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_368:
add %i1, 4, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_368:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_368
nop

P1319: !_CASX [9] (maybe <- 0x8001f5) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_369:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1320: !_REPLACEMENT [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+4], %l6
st %l6, [%i2+4]
add %i2, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_369:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_369
nop

P1321: !_CASX [17] (maybe <- 0x8001f7) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_370:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_370:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_370
nop

P1322: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_371:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1323: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_371:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_371
nop

P1324: !_ST [4] (maybe <- 0x8001f8) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_372:
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %l4, %l7, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l7, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
stwa   %l6, [%i1 + 4] %asi
add   %l4, 1, %l4
loop_exit_1_372:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_372
nop

P1325: !_PREFETCH [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_373:
prefetch [%i1 + 4], 21

P1326: !_REPLACEMENT [2] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
loop_exit_1_373:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_373
nop

P1327: !_CASX [15] (maybe <- 0x8001f9) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_374:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_1_374:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_374
nop

P1328: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_375:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1329: !_REPLACEMENT [18] (Int) (Branch target of P978)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
ba P1330
nop

TARGET978:
ba RET978
nop


P1330: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_375:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_375
nop

P1331: !_REPLACEMENT [9] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_1_376:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
loop_exit_1_376:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_376
nop

P1332: !_REPLACEMENT [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_377:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P1333: !_LD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1334: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_1_377:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_377
nop

P1335: !_MEMBAR (Int)
membar #StoreLoad

END_NODES1: ! Test instruction sequence for CPU 1 ends
sethi %hi(0xdead0e0f), %l7
or    %l7, %lo(0xdead0e0f), %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
sethi %hi(0xdead0e0f), %l7
or    %l7, %lo(0xdead0e0f), %l7
stw %l7, [%i5] 
ld [%i5], %f0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

restore
retl
nop
!-----------------

! register usage:
! %i0 %i1 : base registers for first 2 regions
! %i2 %i3 : cache registers for 8 regions
! %i4 fixed pointer to per-cpu results area
! %l1 moving pointer to per-cpu FP results area
! %o7 moving pointer to per-cpu integer results area
! %i5 pointer to per-cpu private area
! %l0 holds lfsr, used as source of random bits 
! %l2 loop count register
! %f16 running counter for unique fp store values
! %f17 holds increment value for fp counter
! %l4 running counter for unique integer store values (increment value is always 1)
! %l5 move-to register for load values (simulation only)
! %f30 move-to register for FP values (simulation only)
! %i4 holds the instructions count which is used for interrupt ordering
! %i4 holds the thread_id (OBP only) 
! %l5 holds the moving pointer for interrupt bonus data (OBP only). Conflicts with RTL/simulation usage
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func2:
! instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
andn %i0, 63, %i0

add %i1, 63, %i1
andn %i1, 63, %i1

add %i2, 63, %i2
andn %i2, 63, %i2

add %i3, 63, %i3
andn %i3, 63, %i3

add %i4, 63, %i4
andn %i4, 63, %i4

add %i5, 63, %i5
andn %i5, 63, %i5


! Initialize pointer to FP load results area
mov   %i4, %l1

! Initialize pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
add  %o7, %l1, %o7 

! Reinitialize i4 to 0. i4 will be used to keep the count of analyzable node info
mov 0x0, %i4

! Initialize %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l6
or    %l6, %lo(0xdeadbee0), %l6
stw   %l6, [%i5]
sethi %hi(0xdeadbee1), %l6
or    %l6, %lo(0xdeadbee1), %l6
stw   %l6, [%i5+4]
ldd [%i5], %f0
fmovd %f0, %f2
fmovd %f0, %f4
fmovd %f0, %f6
fmovd %f0, %f8
fmovd %f0, %f10
fmovd %f0, %f12
fmovd %f0, %f14
fmovd %f0, %f16
fmovd %f0, %f18
fmovd %f0, %f20
fmovd %f0, %f22
fmovd %f0, %f24
fmovd %f0, %f26
fmovd %f0, %f28
fmovd %f0, %f30
fmovd %f0, %f32
fmovd %f0, %f34
fmovd %f0, %f36
fmovd %f0, %f38
fmovd %f0, %f40
fmovd %f0, %f42
fmovd %f0, %f44
fmovd %f0, %f46
fmovd %f0, %f48
fmovd %f0, %f50
fmovd %f0, %f52
fmovd %f0, %f54
fmovd %f0, %f56
fmovd %f0, %f58
fmovd %f0, %f60
fmovd %f0, %f62

! Signature for extract_loads script to start extracting load values for this stream
sethi %hi(0x02deade1), %l6
or    %l6, %lo(0x02deade1), %l6
stw %l6, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x1000001), %l4
or    %l4, %lo(0x1000001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x40800001), %l6
or    %l6, %lo(0x40800001), %l6
stw %l6, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x35000000), %l6
or    %l6, %lo(0x35000000), %l6
stw %l6, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x3be9^4
sethi %hi(0x3be9), %l0
or    %l0, %lo(0x3be9), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES2: ! Test instruction sequence for ISTREAM 2 begins

P1336: !_CASX [22] (maybe <- 0x1000001) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_0:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_0
nop

P1337: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_1:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1338: !_CASX [16] (maybe <- 0x1000003) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P1339: !_LD [16] (Int) (Loop exit)
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_1
nop

P1340: !_CASX [9] (maybe <- 0x1000005) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_2:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_2
nop

P1341: !_ST [15] (maybe <- 0x1000007) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_3:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %l4, %l7, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l7, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
stwa   %l6, [%i2 + 0] %asi
add   %l4, 1, %l4
loop_exit_2_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_3
nop

P1342: !_CAS [5] (maybe <- 0x1000008) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_4:
add %i1, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1343: !_ST [2] (maybe <- 0x1000009) (Int) (Loop exit) (CBR)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1343
nop
RET1343:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_4
nop

P1344: !_REPLACEMENT [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_5:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
loop_exit_2_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_5
nop

P1345: !_CAS [19] (maybe <- 0x100000a) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_6:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %o5
lduwa [%o5] %asi, %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l3, %l6
casa [%o5] %asi, %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_6
nop

P1346: !_ST [10] (maybe <- 0x100000b) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_7:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1347: !_ST [13] (maybe <- 0x100000c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_2_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_7
nop

P1348: !_CASX [22] (maybe <- 0x100000d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_8:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_8
nop

P1349: !_LD [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_9:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1350: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_9
nop

P1351: !_ST [9] (maybe <- 0x100000f) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_10:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %l6, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
stwa   %l3, [%i2 + 0] %asi
add   %l4, 1, %l4
loop_exit_2_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_10
nop

P1352: !_CASX [10] (maybe <- 0x1000010) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_11:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_11
nop

P1353: !_PREFETCH [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_12:
prefetch [%i1 + 0], 21
loop_exit_2_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_12
nop

P1354: !_LD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_13:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1355: !_CASX [14] (maybe <- 0x1000012) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov  %o5, %l3
mov %l4, %o5
casx [%l6], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P1356: !_LD [12] (Int) (Loop exit)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_13
nop

P1357: !_CASX [11] (maybe <- 0x1000013) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_14:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_14
nop

P1358: !_CAS [5] (maybe <- 0x1000014) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_15:
add %i1, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_15
nop

P1359: !_CAS [3] (maybe <- 0x1000015) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_16:
lduw [%i1], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i1], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_16
nop

P1360: !_CASX [14] (maybe <- 0x1000016) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_17:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_17
nop

P1361: !_CAS [13] (maybe <- 0x1000017) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_18:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P1362: !_CASX [0] (maybe <- 0x1000018) (Int) (Loop exit)
ldx [%i0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %o5
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i0], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_18
nop

P1363: !_CAS [3] (maybe <- 0x100001a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_19:
lduw [%i1], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i1], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_19
nop

P1364: !_REPLACEMENT [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_20:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P1365: !_REPLACEMENT [4] (Int) (Loop exit)
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
loop_exit_2_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_20
nop

P1366: !_ST [22] (maybe <- 0x100001b) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_21:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1366
nop
RET1366:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_2_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_21
nop

P1367: !_ST [5] (maybe <- 0x100001c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_22:
stw   %l4, [%i1 + 12 ]
add   %l4, 1, %l4
loop_exit_2_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_22
nop

P1368: !_CASX [18] (maybe <- 0x100001d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_23:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_23
nop

P1369: !_LD [21] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_24:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1370: !_CASX [22] (maybe <- 0x100001f) (Int)
ldx [%i2], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P1371: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_24
nop

P1372: !_CASX [7] (maybe <- 0x1000021) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_25:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_25
nop

P1373: !_CASX [2] (maybe <- 0x1000023) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_26:
add %i0, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_26
nop

P1374: !_ST [16] (maybe <- 0x1000024) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_27:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P1375: !_PREFETCH [11] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 0
loop_exit_2_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_27
nop

P1376: !_CASX [21] (maybe <- 0x1000025) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_28:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_28
nop

P1377: !_LD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_29:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1378: !_LD [21] (Int) (Loop exit)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_29
nop

P1379: !_CASX [16] (maybe <- 0x1000027) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_30:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_30
nop

P1380: !_ST [1] (maybe <- 0x1000029) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_31:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1381: !_LD [20] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_31
nop

P1382: !_PREFETCH [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_32:
prefetch [%i1 + 12], 16
loop_exit_2_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_32
nop

P1383: !_CASX [16] (maybe <- 0x100002a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_33:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_33
nop

P1384: !_CASX [20] (maybe <- 0x100002c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_34:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_34
nop

P1385: !_CASX [19] (maybe <- 0x100002d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_35:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1386: !_CAS [9] (maybe <- 0x100002f) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%i3], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_35
nop

P1387: !_CASX [4] (maybe <- 0x1000030) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_36:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1388: !_LD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1389: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_36
nop

P1390: !_CASX [18] (maybe <- 0x1000032) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_37:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_37
nop

P1391: !_REPLACEMENT [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_38:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
loop_exit_2_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_38
nop

P1392: !_LD [4] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_39:
ld [%i1 + 4], %f0
! 1 addresses covered

P1393: !_CAS [0] (maybe <- 0x1000034) (Int) (Loop exit)
lduw [%i0], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i0], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_39
nop

P1394: !_CASX [10] (maybe <- 0x1000035) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_40:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_40
nop

P1395: !_ST [6] (maybe <- 0x1000037) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_41:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1396: !_REPLACEMENT [0] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
loop_exit_2_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_41
nop

P1397: !_CASX [3] (maybe <- 0x1000038) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_42:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1398: !_CASX [9] (maybe <- 0x100003a) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_42
nop

P1399: !_CASX [22] (maybe <- 0x100003c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_43:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_43
nop

P1400: !_CASX [17] (maybe <- 0x100003e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_44:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_44
nop

P1401: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_45:
membar #StoreLoad
loop_exit_2_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_45
nop

P1402: !_CAS [21] (maybe <- 0x100003f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_46:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i2], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_46
nop

P1403: !_CASX [0] (maybe <- 0x1000040) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_47:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1403
nop
RET1403:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P1404: !_PREFETCH [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 18
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_47
nop

P1405: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_48:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1406: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_48
nop

P1407: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_49:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1408: !_LD [1] (Int) (Loop exit)
lduw [%i0 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_49
nop

P1409: !_CASX [23] (maybe <- 0x1000042) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_50:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1410: !_REPLACEMENT [3] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_50
nop

P1411: !_CASX [20] (maybe <- 0x1000043) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_51:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1412: !_PREFETCH [18] (Int) (Loop exit)
prefetch [%i3 + 0], 2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_51
nop

P1413: !_ST [22] (maybe <- 0x1000044) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_52:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_2_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_52
nop

P1414: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_53:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1415: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_53
nop

P1416: !_FLUSHI [12] (Int) (Loop entry) (Branch target of P1425)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_54:
flush %g0 
ba P1417
nop

TARGET1425:
ba RET1425
nop


P1417: !_REPLACEMENT [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+12], %l6
st %l6, [%i2+12]
add %i2, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
loop_exit_2_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_54
nop

P1418: !_CAS [4] (maybe <- 0x1000045) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_55:
add %i1, 4, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P1419: !_CASX [8] (maybe <- 0x1000046) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %o5
mov %l4, %o2
casx [%l3], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_55
nop

P1420: !_ST [4] (maybe <- 0x1000047) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_56:
stw   %l4, [%i1 + 4 ]
add   %l4, 1, %l4
loop_exit_2_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_56
nop

P1421: !_ST [13] (maybe <- 0x1000048) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_57:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P1422: !_ST [13] (maybe <- 0x1000049) (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l3, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
stwa   %o5, [%i2 + 4] %asi
add   %l4, 1, %l4
loop_exit_2_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_57
nop

P1423: !_LD [3] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_58:
ld [%i1 + 0], %f0
! 1 addresses covered

P1424: !_ST [12] (maybe <- 0x100004a) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_58
nop

P1425: !_CAS [19] (maybe <- 0x100004b) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_59:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1425
nop
RET1425:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_59
nop

P1426: !_REPLACEMENT [21] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_60:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P1427: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1428: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_60
nop

P1429: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_61:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1430: !_CASX [4] (maybe <- 0x100004c) (Int)
ldx [%i1], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i1], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P1431: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_61
nop

P1432: !_CASX [7] (maybe <- 0x100004e) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_62:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1433: !_CASX [20] (maybe <- 0x1000050) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l7
mov %l4, %o3
casx [%o5], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_62
nop

P1434: !_CASX [11] (maybe <- 0x1000051) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_63:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_63
nop

P1435: !_LD [14] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_64:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1436: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_64
nop

P1437: !_CASX [9] (maybe <- 0x1000052) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_65:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1438: !_CASX [8] (maybe <- 0x1000054) (Int) (Loop exit) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %l4, %l7, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l7, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
sllx %o5, 32, %o5
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldxa [%l7] %asi, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
mov  %l3, %l6
mov  %o5, %l3
casxa [%l7] %asi, %l6, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_65
nop

P1439: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_66:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1440: !_ST [15] (maybe <- 0x1000055) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1441: !_LD [16] (Int) (Loop exit)
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_66
nop

P1442: !_CASX [20] (maybe <- 0x1000056) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_67:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1443: !_LD [13] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1444: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_67
nop

P1445: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_68:
membar #StoreLoad

P1446: !_CASX [17] (maybe <- 0x1000057) (Int) (Loop exit) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l3, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
sllx %l6, 32, %l6
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldxa [%l3] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
mov  %l7, %o5
mov  %l6, %l7
casxa [%l3] %asi, %o5, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_68
nop

P1447: !_LD [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_69:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1448: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_69
nop

P1449: !_LD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_70:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1450: !_CASX [20] (maybe <- 0x1000058) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P1451: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_70
nop

P1452: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_71:
membar #StoreLoad

P1453: !_PREFETCH [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 20
loop_exit_2_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_71
nop

P1454: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_72:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1455: !_CAS [23] (maybe <- 0x1000059) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l7
lduw [%l7], %l3
mov %l3, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l6, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1456: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_72
nop

P1457: !_CASX [9] (maybe <- 0x100005a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_73:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1458: !_LD [22] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1459: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_73
nop

P1460: !_PREFETCH [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_74:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 20

P1461: !_ST [20] (maybe <- 0x40800001) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]
loop_exit_2_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_74
nop

P1462: !_CAS [15] (maybe <- 0x100005c) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_75:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i2], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1463: !_CASX [1] (maybe <- 0x100005d) (Int) (Loop exit)
ldx [%i0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l7
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i0], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_75
nop

P1464: !_CASX [7] (maybe <- 0x100005f) (Int) (Loop entry) (Branch target of P1845)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_76:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P1465
nop

TARGET1845:
ba RET1845
nop


P1465: !_CASX [18] (maybe <- 0x1000061) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_76
nop

P1466: !_CASX [23] (maybe <- 0x1000063) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_77:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
sllx %l7, 32, %l7
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldxa [%l6] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov  %o5, %l3
mov  %l7, %o5
casxa [%l6] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_77
nop

P1467: !_FLUSHI [13] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_78:
flush %g0 
loop_exit_2_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_78
nop

P1468: !_REPLACEMENT [23] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_79:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
loop_exit_2_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_79
nop

P1469: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_80:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1470: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_80
nop

P1471: !_CASX [20] (maybe <- 0x1000064) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_81:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_81
nop

P1472: !_CASX [23] (maybe <- 0x1000065) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_82:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1473: !_CASX [19] (maybe <- 0x1000066) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_82
nop

P1474: !_CASX [16] (maybe <- 0x1000068) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_83:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1475: !_ST [0] (maybe <- 0x100006a) (Int) (Loop exit)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_83
nop

P1476: !_REPLACEMENT [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_84:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P1477: !_PREFETCH [4] (Int) (Loop exit)
prefetch [%i1 + 4], 22
loop_exit_2_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_84
nop

P1478: !_CASX [5] (maybe <- 0x100006b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_85:
add %i1, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1479: !_CASX [21] (maybe <- 0x100006c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_85
nop

P1480: !_LD [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_86:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1481: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_86
nop

P1482: !_CAS [0] (maybe <- 0x100006e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_87:
lduw [%i0], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i0], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_87
nop

P1483: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_88:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1484: !_CASX [14] (maybe <- 0x100006f) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov  %l6, %l7
mov %l4, %l6
casx [%o5], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4

P1485: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_88
nop

P1486: !_LD [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_89:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1487: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_89
nop

P1488: !_CAS [18] (maybe <- 0x1000070) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_90:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_90
nop

P1489: !_LD [14] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_91:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered

P1490: !_CASX [1] (maybe <- 0x1000071) (Int) (Loop exit)
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_91
nop

P1491: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_92:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1492: !_REPLACEMENT [7] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]

P1493: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_92
nop

P1494: !_LD [8] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_93:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1495: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_93
nop

P1496: !_REPLACEMENT [17] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_94:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
loop_exit_2_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_94
nop

P1497: !_ST [21] (maybe <- 0x1000073) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_95:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
loop_exit_2_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_95
nop

P1498: !_REPLACEMENT [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_96:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P1499: !_CASX [23] (maybe <- 0x1000074) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_96
nop

P1500: !_CASX [22] (maybe <- 0x1000075) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_97:
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
sllx %l6, 32, %o5
or %l6, %o5, %l6 
and %l7, %l6, %o5
srlx %o5, 8, %o5
sllx %l7, 8, %l7
and %l7, %l6, %l7
or %l7, %o5, %l7 
sethi %hi(0xffff0000), %l6
srlx %l7, 16, %o5
andn %o5, %l6, %o5
andn %l7, %l6, %l7
sllx %l7, 16, %l7
or %l7, %o5, %l7 
srlx %l7, 32, %o5
sllx %l7, 32, %l7
or %l7, %o5, %o5 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
mov %l3, %l6
mov  %o5, %l3
casxa [%i2] %asi, %l6, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_97
nop

P1501: !_CASX [2] (maybe <- 0x1000077) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_98:
add %i0, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1502: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_98
nop

P1503: !_CASX [21] (maybe <- 0x1000078) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_99:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_99
nop

P1504: !_CASX [17] (maybe <- 0x100007a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_100:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_100
nop

P1505: !_CASX [19] (maybe <- 0x100007b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_101:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_101
nop

P1506: !_REPLACEMENT [12] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_102:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
loop_exit_2_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_102
nop

P1507: !_LD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_103:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1508: !_LD [21] (Int) (Loop exit)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_103
nop

P1509: !_LD [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_104:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1510: !_LD [21] (Int) (Loop exit) (CBR)
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1510
nop
RET1510:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_104
nop

P1511: !_REPLACEMENT [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_105:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+4], %o5
st %o5, [%i3+4]
add %i3, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P1512: !_REPLACEMENT [22] (Int) (Loop exit)
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
loop_exit_2_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_105
nop

P1513: !_CAS [18] (maybe <- 0x100007d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_106:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i2], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_106
nop

P1514: !_LD [21] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_107:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1515: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_107
nop

P1516: !_CASX [21] (maybe <- 0x100007e) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_108:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1517: !_CAS [8] (maybe <- 0x1000080) (Int) (Loop exit) (Branch target of P1764)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %o5
lduw [%o5], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_108
nop
ba P1518
nop

TARGET1764:
ba RET1764
nop


P1518: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_109:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1519: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_109
nop

P1520: !_PREFETCH [15] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_110:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 30

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1520
nop
RET1520:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1521: !_REPLACEMENT [5] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
loop_exit_2_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_110
nop

P1522: !_ST [11] (maybe <- 0x40800002) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_111:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 12 ]
loop_exit_2_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_111
nop

P1523: !_CAS [23] (maybe <- 0x1000081) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_112:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1524: !_CASX [1] (maybe <- 0x1000082) (Int) (Loop exit)
ldx [%i0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l6
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i0], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_112
nop

P1525: !_CAS [23] (maybe <- 0x1000084) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_113:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_113
nop

P1526: !_FLUSHI [1] (Int) (Loop entry) (Branch target of P1545)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_114:
flush %g0 
ba P1527
nop

TARGET1545:
ba RET1545
nop


P1527: !_CAS [10] (maybe <- 0x1000085) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_114
nop

P1528: !_ST [12] (maybe <- 0x1000086) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_115:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
loop_exit_2_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_115
nop

P1529: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_116:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1530: !_MEMBAR (Int)
membar #StoreLoad

P1531: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_116
nop

P1532: !_REPLACEMENT [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_117:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P1533: !_LD [0] (Int)
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1534: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_117
nop

P1535: !_ST [4] (maybe <- 0x40800003) (FP) (Loop entry) (Branch target of P1690)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_118:
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 4 ]
ba P1536
nop

TARGET1690:
ba RET1690
nop


P1536: !_CAS [15] (maybe <- 0x1000087) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i2], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_118
nop

P1537: !_CASX [18] (maybe <- 0x1000088) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_119:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_119
nop

P1538: !_REPLACEMENT [5] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_120:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+12], %l6
st %l6, [%i2+12]
add %i2, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
loop_exit_2_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_120
nop

P1539: !_PREFETCH [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_121:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 21
loop_exit_2_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_121
nop

P1540: !_CASX [18] (maybe <- 0x100008a) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_122:
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov %o5, %l3
mov  %l7, %o5
casxa [%i2] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_122
nop

P1541: !_ST [20] (maybe <- 0x100008c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_123:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

P1542: !_LD [11] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1543: !_LD [18] (Int) (Loop exit)
lduw [%i3 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_123
nop

P1544: !_LD [7] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_124:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1545: !_LD [13] (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1545
nop
RET1545:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_124
nop

P1546: !_CASX [5] (maybe <- 0x100008d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_125:
add %i1, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1547: !_CASX [8] (maybe <- 0x100008e) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_125
nop

P1548: !_REPLACEMENT [16] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_126:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P1549: !_CASX [15] (maybe <- 0x100008f) (Int) (Loop exit) (LE)
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldxa [%i3] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
mov %l7, %o5
mov  %l6, %l7
casxa [%i3] %asi, %o5, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_126
nop

P1550: !_REPLACEMENT [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_127:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P1551: !_CAS [13] (maybe <- 0x1000091) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_127
nop

P1552: !_PREFETCH [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_128:
prefetch [%i0 + 4], 2

P1553: !_LD [1] (Int) (Branch target of P1794)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1554
nop

TARGET1794:
ba RET1794
nop


P1554: !_LD [17] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_128
nop

P1555: !_LD [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_129:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1556: !_LD [9] (Int) (Loop exit)
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_129
nop

P1557: !_CASX [11] (maybe <- 0x1000092) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_130:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_130
nop

P1558: !_REPLACEMENT [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_131:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+12], %l6
st %l6, [%i3+12]
add %i3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]

P1559: !_CAS [23] (maybe <- 0x1000093) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_131
nop

P1560: !_ST [23] (maybe <- 0x1000094) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_132:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_2_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_132
nop

P1561: !_CAS [21] (maybe <- 0x1000095) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_133:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i2], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1561
nop
RET1561:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1562: !_CAS [1] (maybe <- 0x1000096) (Int) (Loop exit)
add %i0, 4, %l6
lduw [%l6], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_133
nop

P1563: !_ST [22] (maybe <- 0x1000097) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_134:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1564: !_CASX [14] (maybe <- 0x1000098) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_134
nop

P1565: !_CASX [0] (maybe <- 0x1000099) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_135:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1566: !_ST [21] (maybe <- 0x100009b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_135
nop

P1567: !_LD [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_136:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1568: !_CASX [8] (maybe <- 0x100009c) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P1569: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_136
nop

P1570: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_137:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1571: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_137
nop

P1572: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_138:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1573: !_LD [12] (Int) (Loop exit)
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_138
nop

P1574: !_REPLACEMENT [14] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_139:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
loop_exit_2_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_139
nop

P1575: !_CASX [6] (maybe <- 0x100009d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_140:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_140:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_140
nop

P1576: !_LD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_141:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_141:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_141
nop

P1577: !_CASX [13] (maybe <- 0x100009f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_142:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1578: !_CASX [23] (maybe <- 0x10000a1) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l7
mov %l4, %o3
casx [%o5], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_142:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_142
nop

P1579: !_ST [5] (maybe <- 0x10000a2) (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_143:
wr %g0, 0x88, %asi
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l3, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
stwa   %o5, [%i1 + 12] %asi
add   %l4, 1, %l4

P1580: !_LD [12] (Int) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1580
nop
RET1580:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1581: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_143:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_143
nop

P1582: !_CAS [19] (maybe <- 0x10000a3) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_144:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1582
nop
RET1582:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_144:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_144
nop

P1583: !_PREFETCH [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_145:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 0

P1584: !_LD [20] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1585: !_LD [10] (Int) (Loop exit)
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_145:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_145
nop

P1586: !_LD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_146:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1587: !_LD [20] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_146:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_146
nop

P1588: !_CAS [12] (maybe <- 0x10000a4) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_147:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i2], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_147:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_147
nop

P1589: !_REPLACEMENT [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_148:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P1590: !_CASX [15] (maybe <- 0x10000a5) (Int) (Loop exit) (LE)
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov %o5, %l3
mov  %l7, %o5
casxa [%i2] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_148:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_148
nop

P1591: !_CASX [11] (maybe <- 0x10000a7) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_149:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1592: !_CAS [6] (maybe <- 0x10000a8) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_149:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_149
nop

P1593: !_PREFETCH [7] (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_150:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 3

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1593
nop
RET1593:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

loop_exit_2_150:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_150
nop

P1594: !_FLUSHI [20] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_151:
flush %g0 
loop_exit_2_151:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_151
nop

P1595: !_REPLACEMENT [9] (Int) (Loop entry) (Branch target of P1630)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_152:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
ba P1596
nop

TARGET1630:
ba RET1630
nop


P1596: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1597: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_152:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_152
nop

P1598: !_CASX [17] (maybe <- 0x10000a9) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_153:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_153:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_153
nop

P1599: !_CASX [5] (maybe <- 0x10000aa) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_154:
add %i1, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1600: !_CASX [7] (maybe <- 0x10000ab) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_154:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_154
nop

P1601: !_FLUSHI [22] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_155:
flush %g0 
loop_exit_2_155:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_155
nop

P1602: !_REPLACEMENT [2] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_156:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
loop_exit_2_156:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_156
nop

P1603: !_CASX [14] (maybe <- 0x10000ad) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_157:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1604: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1605: !_LD [8] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduwa [%i3 + 12] %asi, %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_157:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_157
nop

P1606: !_CASX [20] (maybe <- 0x10000ae) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_158:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_158:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_158
nop

P1607: !_CASX [17] (maybe <- 0x10000af) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_159:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_159:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_159
nop

P1608: !_PREFETCH [9] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_160:
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 2

P1609: !_LD [23] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1610: !_LD [22] (Int) (Loop exit)
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_160:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_160
nop

P1611: !_LD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_161:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1612: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_161:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_161
nop

P1613: !_REPLACEMENT [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_162:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P1614: !_CASX [16] (maybe <- 0x10000b0) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_162:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_162
nop

P1615: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_163:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1616: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_163:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_163
nop

P1617: !_LD [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_164:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1618: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_164:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_164
nop

P1619: !_CASX [16] (maybe <- 0x10000b2) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_165:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1620: !_CASX [0] (maybe <- 0x10000b4) (Int) (Loop exit)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_165:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_165
nop

P1621: !_CASX [17] (maybe <- 0x10000b6) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_166:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1622: !_CASX [23] (maybe <- 0x10000b7) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l6
mov %l4, %o3
casx [%l7], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_166:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_166
nop

P1623: !_CASX [12] (maybe <- 0x10000b8) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_167:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1624: !_LD [14] (Int)
lduw [%i2 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1625: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_167:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_167
nop

P1626: !_CASX [16] (maybe <- 0x10000ba) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_168:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1627: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1628: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_168:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_168
nop

P1629: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_169:
membar #StoreLoad

P1630: !_CASX [2] (maybe <- 0x10000bc) (Int) (Loop exit) (CBR)
add %i0, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1630
nop
RET1630:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_169:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_169
nop

P1631: !_ST [20] (maybe <- 0x10000bd) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_170:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4
loop_exit_2_170:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_170
nop

P1632: !_CASX [14] (maybe <- 0x10000be) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_171:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_171:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_171
nop

P1633: !_LD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_172:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1634: !_CASX [13] (maybe <- 0x10000bf) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i3], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P1635: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_172:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_172
nop

P1636: !_CASX [22] (maybe <- 0x10000c1) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_173:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1637: !_CASX [0] (maybe <- 0x10000c3) (Int) (Loop exit) (Branch target of P1582)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_173:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_173
nop
ba P1638
nop

TARGET1582:
ba RET1582
nop


P1638: !_CASX [12] (maybe <- 0x10000c5) (Int) (Loop entry) (Loop exit) (Branch target of P1719)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_174:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_174:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_174
nop
ba P1639
nop

TARGET1719:
ba RET1719
nop


P1639: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_175:
membar #StoreLoad
loop_exit_2_175:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_175
nop

P1640: !_CAS [14] (maybe <- 0x10000c7) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_176:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P1641: !_CASX [5] (maybe <- 0x10000c8) (Int) (Loop exit)
add %i1, 8, %l3
ldx [%l3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %o5
mov %l4, %o2
casx [%l3], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_176:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_176
nop

P1642: !_ST [15] (maybe <- 0x10000c9) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_177:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P1643: !_ST [11] (maybe <- 0x10000ca) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION3_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_2_177:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_177
nop

P1644: !_LD [8] (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_178:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

P1645: !_ST [14] (maybe <- 0x10000cb) (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1645
nop
RET1645:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_178:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_178
nop

P1646: !_LD [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_179:
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1647: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_179:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_179
nop

P1648: !_ST [22] (maybe <- 0x10000cc) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_180:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_2_180:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_180
nop

P1649: !_LD [16] (Int) (Loop entry) (Branch target of P1812)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_181:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1650
nop

TARGET1812:
ba RET1812
nop


P1650: !_CASX [22] (maybe <- 0x10000cd) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P1651: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_181:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_181
nop

P1652: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_182:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1653: !_LD [20] (Int) (Loop exit) (LE) (Branch target of P1510)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_182:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_182
nop
ba P1654
nop

TARGET1510:
ba RET1510
nop


P1654: !_CAS [5] (maybe <- 0x10000cf) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_183:
add %i1, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P1655: !_CASX [10] (maybe <- 0x10000d0) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_183:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_183
nop

P1656: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_184:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1657: !_CASX [18] (maybe <- 0x10000d2) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P1658: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_184:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_184
nop

P1659: !_REPLACEMENT [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_185:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]

P1660: !_CASX [4] (maybe <- 0x10000d4) (Int) (Loop exit)
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_185:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_185
nop

P1661: !_PREFETCH [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_186:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 4
loop_exit_2_186:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_186
nop

P1662: !_CASX [15] (maybe <- 0x10000d6) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_187:
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldxa [%i3] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
mov %l7, %o5
mov  %l6, %l7
casxa [%i3] %asi, %o5, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_187:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_187
nop

P1663: !_CASX [21] (maybe <- 0x10000d8) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_188:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_188:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_188
nop

P1664: !_LD [4] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_189:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1664
nop
RET1664:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P1665: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_189:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_189
nop

P1666: !_CASX [10] (maybe <- 0x10000da) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_190:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_190:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_190
nop

P1667: !_CAS [21] (maybe <- 0x10000dc) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_191:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_191:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_191
nop

P1668: !_CASX [9] (maybe <- 0x10000dd) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_192:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1669: !_ST [19] (maybe <- 0x40800004) (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_192:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_192
nop

P1670: !_CASX [22] (maybe <- 0x10000df) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_193:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1671: !_ST [21] (maybe <- 0x10000e1) (Int) (Loop exit)
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_193:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_193
nop

P1672: !_LD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_194:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1673: !_CASX [16] (maybe <- 0x10000e2) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i2], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P1674: !_LD [21] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_194:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_194
nop

P1675: !_CASX [14] (maybe <- 0x10000e4) (Int) (Loop entry) (Branch target of P1849)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_195:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P1676
nop

TARGET1849:
ba RET1849
nop


P1676: !_LD [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1677: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_195:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_195
nop

P1678: !_CASX [5] (maybe <- 0x10000e5) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_196:
add %i1, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_196:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_196
nop

P1679: !_CAS [0] (maybe <- 0x10000e6) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_197:
lduw [%i0], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i0], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1680: !_LD [15] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1681: !_LD [6] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_197:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_197
nop

P1682: !_CAS [14] (maybe <- 0x10000e7) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_198:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_198:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_198
nop

P1683: !_CAS [14] (maybe <- 0x10000e8) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_199:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1684: !_LD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1685: !_LD [14] (Int) (Loop exit)
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_199:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_199
nop

P1686: !_CASX [5] (maybe <- 0x10000e9) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_200:
add %i1, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_200:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_200
nop

P1687: !_LD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_201:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1688: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_201:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_201
nop

P1689: !_PREFETCH [21] (Int) (Loop entry) (Branch target of P1696)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_202:
sethi %hi(REGION0_ALIAS0_O-REGION7_ALIAS3_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 24
ba P1690
nop

TARGET1696:
ba RET1696
nop


P1690: !_CASX [18] (maybe <- 0x10000ea) (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1690
nop
RET1690:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_202:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_202
nop

P1691: !_CASX [17] (maybe <- 0x10000ec) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_203:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1692: !_CASX [8] (maybe <- 0x10000ed) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_203:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_203
nop

P1693: !_CAS [11] (maybe <- 0x10000ee) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_204:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1694: !_CAS [20] (maybe <- 0x10000ef) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_204:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_204
nop

P1695: !_CASX [16] (maybe <- 0x10000f0) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_205:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_205:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_205
nop

P1696: !_CASX [1] (maybe <- 0x10000f2) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_206:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1696
nop
RET1696:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_206:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_206
nop

P1697: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_207:
membar #StoreLoad

P1698: !_CASX [11] (maybe <- 0x10000f4) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_207:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_207
nop

P1699: !_REPLACEMENT [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_208:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
loop_exit_2_208:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_208
nop

P1700: !_MEMBAR (Int) (Loop entry) (Loop exit) (Branch target of P1580)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_209:
membar #StoreLoad
loop_exit_2_209:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_209
nop
ba P1701
nop

TARGET1580:
ba RET1580
nop


P1701: !_CAS [0] (maybe <- 0x10000f5) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_210:
lduw [%i0], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i0], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_210:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_210
nop

P1702: !_CASX [4] (maybe <- 0x10000f6) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_211:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_211:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_211
nop

P1703: !_CAS [18] (maybe <- 0x10000f8) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_212:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1704: !_CASX [19] (maybe <- 0x10000f9) (Int) (Loop exit)
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_212:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_212
nop

P1705: !_FLUSHI [10] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_213:
flush %g0 
loop_exit_2_213:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_213
nop

P1706: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_214:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1707: !_CASX [15] (maybe <- 0x10000fb) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P1708: !_LD [16] (Int) (Loop exit)
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_214:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_214
nop

P1709: !_REPLACEMENT [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_215:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+4], %l6
st %l6, [%i3+4]
add %i3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P1710: !_LD [4] (Int)
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1711: !_LD [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_215:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_215
nop

P1712: !_CASX [9] (maybe <- 0x10000fd) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_216:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1713: !_CAS [1] (maybe <- 0x10000ff) (Int) (Loop exit)
add %i0, 4, %l3
lduw [%l3], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_216:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_216
nop

P1714: !_CAS [3] (maybe <- 0x1000100) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_217:
lduw [%i1], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i1], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1715: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_217:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_217
nop

P1716: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_218:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1717: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_218:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_218
nop

P1718: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_219:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1719: !_LD [22] (Int) (Loop exit) (CBR)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1719
nop
RET1719:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_219:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_219
nop

P1720: !_ST [18] (maybe <- 0x1000101) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_220:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1721: !_ST [22] (maybe <- 0x1000102) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
loop_exit_2_220:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_220
nop

P1722: !_REPLACEMENT [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_221:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+4], %l7
st %l7, [%i3+4]
add %i3, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P1723: !_CASX [9] (maybe <- 0x1000103) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_221:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_221
nop

P1724: !_CASX [1] (maybe <- 0x1000105) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_222:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1725: !_ST [7] (maybe <- 0x40800005) (FP) (Loop exit) (Branch target of P1593)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 4 ]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_222:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_222
nop
ba P1726
nop

TARGET1593:
ba RET1593
nop


P1726: !_LD [13] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_223:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1727: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_223:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_223
nop

P1728: !_CASX [16] (maybe <- 0x1000107) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_224:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1729: !_CASX [13] (maybe <- 0x1000109) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_224:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_224
nop

P1730: !_CASX [17] (maybe <- 0x100010b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_225:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_225:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_225
nop

P1731: !_CASX [23] (maybe <- 0x100010c) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_226:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1732: !_LD [15] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_226:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_226
nop

P1733: !_CASX [16] (maybe <- 0x100010d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_227:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1734: !_CASX [3] (maybe <- 0x100010f) (Int) (Loop exit)
ldx [%i1], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i1], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_227:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_227
nop

P1735: !_ST [10] (maybe <- 0x1000111) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_228:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_2_228:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_228
nop

P1736: !_CASX [19] (maybe <- 0x1000112) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_229:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1737: !_ST [10] (maybe <- 0x1000114) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_229:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_229
nop

P1738: !_CASX [1] (maybe <- 0x1000115) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_230:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1739: !_CAS [5] (maybe <- 0x1000117) (Int) (Loop exit)
add %i1, 12, %l7
lduw [%l7], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_230:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_230
nop

P1740: !_LD [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_231:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1741: !_LD [22] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 4] %asi, %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_231:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_231
nop

P1742: !_REPLACEMENT [8] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_232:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+12], %l6
st %l6, [%i2+12]
add %i2, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
add %l3, %o5, %l3
ld [%l3+12], %l6
st %l6, [%l3+12]
loop_exit_2_232:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_232
nop

P1743: !_CASX [15] (maybe <- 0x1000118) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_233:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1744: !_CASX [9] (maybe <- 0x100011a) (Int) (Loop exit) (Branch target of P1664)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_233:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_233
nop
ba P1745
nop

TARGET1664:
ba RET1664
nop


P1745: !_CASX [3] (maybe <- 0x100011c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_234:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1746: !_PREFETCH [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 20
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_234:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_234
nop

P1747: !_MEMBAR (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_235:
membar #StoreLoad

P1748: !_CAS [0] (maybe <- 0x100011e) (Int) (Loop exit)
lduw [%i0], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i0], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_235:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_235
nop

P1749: !_CASX [20] (maybe <- 0x100011f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_236:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_236:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_236
nop

P1750: !_CASX [8] (maybe <- 0x1000120) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_237:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1751: !_CAS [14] (maybe <- 0x1000121) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l3
lduw [%l3], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_237:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_237
nop

P1752: !_CASX [3] (maybe <- 0x1000122) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_238:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1753: !_REPLACEMENT [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+12], %l7
st %l7, [%i3+12]
add %i3, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_238:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_238
nop

P1754: !_LD [15] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_239:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1755: !_ST [19] (maybe <- 0x1000124) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1756: !_LD [15] (Int) (Loop exit)
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_239:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_239
nop

P1757: !_CAS [4] (maybe <- 0x1000125) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_240:
add %i1, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1758: !_CASX [4] (maybe <- 0x1000126) (Int) (Loop exit)
ldx [%i1], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i1], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_240:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_240
nop

P1759: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_241:
membar #StoreLoad
loop_exit_2_241:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_241
nop

P1760: !_CAS [6] (maybe <- 0x1000128) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_242:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2] %asi, %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l3, %l6
casa [%i2] %asi, %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_242:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_242
nop

P1761: !_CASX [20] (maybe <- 0x1000129) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_243:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1762: !_CAS [6] (maybe <- 0x100012a) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%i2], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_243:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_243
nop

P1763: !_ST [14] (maybe <- 0x100012b) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_244:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %l6, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
stwa   %l3, [%i3 + 12] %asi
add   %l4, 1, %l4
loop_exit_2_244:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_244
nop

P1764: !_LD [21] (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_245:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1764
nop
RET1764:

! lfsr step begin
srlx %l0, 1, %l7
xnor %l7, %l0, %l7
sllx %l7, 63, %l7
or  %l7, %l0, %l0
srlx %l0, 1, %l0


P1765: !_REPLACEMENT [18] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P1766: !_LD [22] (Int) (Loop exit) (Branch target of P1520)
lduw [%i2 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_245:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_245
nop
ba P1767
nop

TARGET1520:
ba RET1520
nop


P1767: !_PREFETCH [4] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_246:
prefetch [%i1 + 4], 28

P1768: !_LD [3] (Int)
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1769: !_LD [2] (Int) (Loop exit) (Branch target of P1645)
lduw [%i0 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_246:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_246
nop
ba P1770
nop

TARGET1645:
ba RET1645
nop


P1770: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_247:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1771: !_CAS [9] (maybe <- 0x100012c) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %o5
mov %o5, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
mov %l4, %o1
cas [%i3], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1772: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_247:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_247
nop

P1773: !_ST [18] (maybe <- 0x40800006) (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_248:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P1774: !_PREFETCH [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 3
loop_exit_2_248:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_248
nop

P1775: !_LD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_249:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1776: !_REPLACEMENT [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P1777: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_249:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_249
nop

P1778: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_250:
membar #StoreLoad
loop_exit_2_250:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_250
nop

P1779: !_CASX [9] (maybe <- 0x100012d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_251:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1780: !_CASX [3] (maybe <- 0x100012f) (Int) (Loop exit)
ldx [%i1], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i1], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_251:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_251
nop

P1781: !_LD [23] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_252:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1782: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_252:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_252
nop

P1783: !_CASX [1] (maybe <- 0x1000131) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_253:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1784: !_PREFETCH [10] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 4], 21
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_253:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_253
nop

P1785: !_PREFETCH [7] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_254:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 16

P1786: !_CAS [11] (maybe <- 0x1000133) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_254:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_254
nop

P1787: !_LD [22] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_255:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1788: !_CASX [8] (maybe <- 0x1000134) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P1789: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_255:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_255
nop

P1790: !_CASX [5] (maybe <- 0x1000135) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_256:
add %i1, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1791: !_CASX [10] (maybe <- 0x1000136) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l7
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_256:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_256
nop

P1792: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_257:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1793: !_CASX [18] (maybe <- 0x1000138) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P1794: !_LD [19] (Int) (Loop exit) (CBR)
lduw [%i2 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1794
nop
RET1794:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_257:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_257
nop

P1795: !_ST [21] (maybe <- 0x100013a) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_258:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1796: !_CASX [19] (maybe <- 0x100013b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_258:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_258
nop

P1797: !_CAS [13] (maybe <- 0x100013d) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_259:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l7
or %l7, %lo(0xff00ff00), %l7
and %l4, %l7, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l7, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l7
lduwa [%l7] %asi, %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %o5, %l3
casa [%l7] %asi, %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P1798: !_LD [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1799: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_259:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_259
nop

P1800: !_LD [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_260:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1801: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_260:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_260
nop

P1802: !_CASX [7] (maybe <- 0x100013e) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_261:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1803: !_CASX [18] (maybe <- 0x1000140) (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1803
nop
RET1803:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_261:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_261
nop

P1804: !_LD [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_262:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1805: !_LD [11] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_262:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_262
nop

P1806: !_CAS [12] (maybe <- 0x1000142) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_263:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i3], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_263:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_263
nop

P1807: !_PREFETCH [5] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_264:
prefetch [%i1 + 12], 29

P1808: !_LD [21] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1809: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_264:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_264
nop

P1810: !_ST [10] (maybe <- 0x1000143) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_265:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P1811: !_CAS [22] (maybe <- 0x1000144) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_265:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_265
nop

P1812: !_CASX [1] (maybe <- 0x1000145) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_266:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1812
nop
RET1812:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1813: !_CASX [22] (maybe <- 0x1000147) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_266:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_266
nop

P1814: !_CASX [16] (maybe <- 0x1000149) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_267:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1815: !_ST [17] (maybe <- 0x100014b) (Int) (Loop exit) (Branch target of P1984)
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_267:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_267
nop
ba P1816
nop

TARGET1984:
ba RET1984
nop


P1816: !_LD [6] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_268:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1817: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_268:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_268
nop

P1818: !_CAS [7] (maybe <- 0x100014c) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_269:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P1819: !_CASX [12] (maybe <- 0x100014d) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %o5
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i3], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_269:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_269
nop

P1820: !_CASX [18] (maybe <- 0x100014f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_270:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_270:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_270
nop

P1821: !_LD [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_271:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1822: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_271:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_271
nop

P1823: !_CAS [17] (maybe <- 0x1000151) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_272:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_272:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_272
nop

P1824: !_CASX [7] (maybe <- 0x1000152) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_273:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_273:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_273
nop

P1825: !_CAS [3] (maybe <- 0x1000154) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_274:
lduw [%i1], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i1], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1826: !_ST [7] (maybe <- 0x1000155) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_274:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_274
nop

P1827: !_CASX [10] (maybe <- 0x1000156) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_275:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1828: !_CASX [1] (maybe <- 0x1000158) (Int) (Loop exit)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_275:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_275
nop

P1829: !_PREFETCH [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_276:
prefetch [%i0 + 4], 18

P1830: !_CAS [10] (maybe <- 0x100015a) (Int) (Loop exit) (Branch target of P1803)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_276:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_276
nop
ba P1831
nop

TARGET1803:
ba RET1803
nop


P1831: !_REPLACEMENT [21] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_277:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P1832: !_CASX [17] (maybe <- 0x100015b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_277:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_277
nop

P1833: !_LD [21] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_278:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1834: !_LD [21] (Int) (Loop exit)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_278:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_278
nop

P1835: !_LD [14] (Int) (Loop entry) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_279:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS3_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 12] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1836: !_REPLACEMENT [16] (Int)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+4], %o5
st %o5, [%i3+4]
add %i3, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P1837: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_279:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_279
nop

P1838: !_ST [1] (maybe <- 0x40800007) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_280:
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P1839: !_CASX [22] (maybe <- 0x100015c) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_280:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_280
nop

P1840: !_CASX [8] (maybe <- 0x100015e) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_281:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1841: !_CAS [19] (maybe <- 0x100015f) (Int) (Loop exit) (Branch target of P1366)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_281:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_281
nop
ba P1842
nop

TARGET1366:
ba RET1366
nop


P1842: !_PREFETCH [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_282:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 30

P1843: !_FLUSHI [0] (Int) (Loop exit)
flush %g0 
loop_exit_2_282:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_282
nop

P1844: !_CAS [9] (maybe <- 0x1000160) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_283:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_283:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_283
nop

P1845: !_LD [4] (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_284:
lduw [%i1 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1845
nop
RET1845:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1846: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_284:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_284
nop

P1847: !_ST [13] (maybe <- 0x1000161) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_285:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4

P1848: !_CASX [16] (maybe <- 0x1000162) (Int) (Loop exit) (LE)
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
sllx %l3, 32, %l7
or %l3, %l7, %l3 
and %l6, %l3, %l7
srlx %l7, 8, %l7
sllx %l6, 8, %l6
and %l6, %l3, %l6
or %l6, %l7, %l6 
sethi %hi(0xffff0000), %l3
srlx %l6, 16, %l7
andn %l7, %l3, %l7
andn %l6, %l3, %l6
sllx %l6, 16, %l6
or %l6, %l7, %l6 
srlx %l6, 32, %l7
sllx %l6, 32, %l6
or %l6, %l7, %l7 
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldxa [%i2] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov %o5, %l3
mov  %l7, %o5
casxa [%i2] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_285:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_285
nop

P1849: !_CASX [4] (maybe <- 0x1000164) (Int) (Loop entry) (Loop exit) (CBR) (Branch target of P1561)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_286:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1849
nop
RET1849:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_286:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_286
nop
ba P1850
nop

TARGET1561:
ba RET1561
nop


P1850: !_CASX [6] (maybe <- 0x1000166) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_287:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_287:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_287
nop

P1851: !_LD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_288:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1852: !_CASX [2] (maybe <- 0x1000168) (Int)
add %i0, 8, %o5
ldx [%o5], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov  %l6, %l7
mov %l4, %l6
casx [%o5], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4

P1853: !_LD [14] (Int) (Loop exit) (CBR)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1853
nop
RET1853:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_288:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_288
nop

P1854: !_ST [1] (maybe <- 0x1000169) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_289:
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4
loop_exit_2_289:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_289
nop

P1855: !_CAS [21] (maybe <- 0x100016a) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_290:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1856: !_CASX [0] (maybe <- 0x100016b) (Int) (Loop exit)
ldx [%i0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l7
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i0], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_290:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_290
nop

P1857: !_CASX [13] (maybe <- 0x100016d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_291:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1858: !_ST [9] (maybe <- 0x100016f) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_291:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_291
nop

P1859: !_CASX [5] (maybe <- 0x1000170) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_292:
add %i1, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1860: !_CASX [4] (maybe <- 0x1000171) (Int) (Loop exit)
ldx [%i1], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i1], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_292:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_292
nop

P1861: !_ST [2] (maybe <- 0x1000173) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_293:
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4
loop_exit_2_293:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_293
nop

P1862: !_CAS [7] (maybe <- 0x1000174) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_294:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_294:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_294
nop

P1863: !_CASX [16] (maybe <- 0x1000175) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_295:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_295:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_295
nop

P1864: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_296:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1865: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_296:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_296
nop

P1866: !_CASX [16] (maybe <- 0x1000177) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_297:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1867: !_CASX [1] (maybe <- 0x1000179) (Int) (Loop exit)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_297:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_297
nop

P1868: !_CASX [2] (maybe <- 0x100017b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_298:
add %i0, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1869: !_CAS [5] (maybe <- 0x100017c) (Int) (Loop exit) (Branch target of P1343)
add %i1, 12, %l6
lduw [%l6], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o2(lower)
srl %o5, 0, %l3
or %l3, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_298:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_298
nop
ba P1870
nop

TARGET1343:
ba RET1343
nop


P1870: !_CAS [20] (maybe <- 0x100017d) (Int) (Loop entry) (Branch target of P1907)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_299:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
ba P1871
nop

TARGET1907:
ba RET1907
nop


P1871: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1872: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_299:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_299
nop

P1873: !_CASX [13] (maybe <- 0x100017e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_300:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_300:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_300
nop

P1874: !_CASX [9] (maybe <- 0x1000180) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_301:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_301:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_301
nop

P1875: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_302:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1876: !_CASX [9] (maybe <- 0x1000182) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l7
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
casx [%i2], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4

P1877: !_LD [16] (Int) (Loop exit) (Branch target of P1853)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_302:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_302
nop
ba P1878
nop

TARGET1853:
ba RET1853
nop


P1878: !_CASX [16] (maybe <- 0x1000184) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_303:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_303:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_303
nop

P1879: !_CASX [3] (maybe <- 0x1000186) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_304:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1880: !_LD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1881: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_304:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_304
nop

P1882: !_CASX [16] (maybe <- 0x1000188) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_305:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1883: !_CASX [15] (maybe <- 0x100018a) (Int) (Loop exit)
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_305:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_305
nop

P1884: !_PREFETCH [17] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_306:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 12], 19

P1885: !_LD [6] (FP) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_306:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_306
nop

P1886: !_REPLACEMENT [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_307:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P1887: !_ST [11] (maybe <- 0x100018c) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_2_307:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_307
nop

P1888: !_LD [8] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_308:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1889: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_308:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_308
nop

P1890: !_CASX [22] (maybe <- 0x100018d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_309:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1891: !_ST [20] (maybe <- 0x100018f) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_309:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_309
nop

P1892: !_CASX [4] (maybe <- 0x1000190) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_310:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_310:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_310
nop

P1893: !_CASX [23] (maybe <- 0x1000192) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_311:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
and %l4, %o5, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %o5, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
sllx %l3, 32, %l3
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %o5
ldxa [%o5] %asi, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
mov  %l6, %l7
mov  %l3, %l6
casxa [%o5] %asi, %l7, %l6
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_311:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_311
nop

P1894: !_LD [0] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_312:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1895: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_312:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_312
nop

P1896: !_ST [8] (maybe <- 0x1000193) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_313:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
loop_exit_2_313:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_313
nop

P1897: !_CASX [17] (maybe <- 0x1000194) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_314:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
sllx %l7, 32, %l7
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l6
ldxa [%l6] %asi, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
mov  %o5, %l3
mov  %l7, %o5
casxa [%l6] %asi, %l3, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_314:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_314
nop

P1898: !_LD [19] (Int) (Loop entry) (Branch target of P1989)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_315:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P1899
nop

TARGET1989:
ba RET1989
nop


P1899: !_CASX [11] (maybe <- 0x1000195) (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov  %l7, %o5
mov %l4, %l7
casx [%l3], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P1900: !_LD [13] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_315:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_315
nop

P1901: !_CAS [12] (maybe <- 0x1000196) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_316:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1902: !_REPLACEMENT [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+4], %l3
st %l3, [%i3+4]
add %i3, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_316:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_316
nop

P1903: !_LD [18] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_317:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 0], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_317:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_317
nop

P1904: !_CAS [8] (maybe <- 0x1000197) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_318:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l3, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l3
lduwa [%l3] %asi, %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l6, %l7
casa [%l3] %asi, %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_318:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_318
nop

P1905: !_REPLACEMENT [14] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_319:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]

P1906: !_CAS [10] (maybe <- 0x1000198) (Int) (Loop exit) (LE)
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %o5
srl %o5, 8, %o5
sll %l4, 8, %l6
and %l6, %l3, %l6
or %l6, %o5, %l6
srl %l6, 16, %o5
sll %l6, 16, %l6
srl %l6, 0, %l6
or %l6, %o5, %l6
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %l3
lduwa [%l3] %asi, %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l6, %l7
casa [%l3] %asi, %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_319:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_319
nop

P1907: !_CAS [15] (maybe <- 0x1000199) (Int) (Loop entry) (Loop exit) (LE) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_320:
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l3
srl %l3, 8, %l3
sll %l4, 8, %l7
and %l7, %l6, %l7
or %l7, %l3, %l7
srl %l7, 16, %l3
sll %l7, 16, %l7
srl %l7, 0, %l7
or %l7, %l3, %l7
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduwa [%i2] %asi, %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l7, %o5
casa [%i2] %asi, %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1907
nop
RET1907:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_320:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_320
nop

P1908: !_LD [19] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_321:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1909: !_LD [9] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_321:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_321
nop

P1910: !_ST [12] (maybe <- 0x100019a) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_322:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1911: !_CASX [4] (maybe <- 0x100019b) (Int) (Loop exit)
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 4 

sethi %hi(0x200000), %l7
sub   %i1, %l7, %i1
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5

sethi %hi(0x200000), %o5
add   %i1, %o5, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_2_322:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_322
nop

P1912: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_323:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1913: !_LD [23] (Int) (Loop exit)
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_323:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_323
nop

P1914: !_PREFETCH [15] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_324:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 0], 22
loop_exit_2_324:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_324
nop

P1915: !_CASX [0] (maybe <- 0x100019d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_325:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1916: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_325:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_325
nop

P1917: !_LD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_326:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1918: !_CASX [18] (maybe <- 0x100019f) (Int)
ldx [%i2], %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l3, %l6
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
casx [%i2], %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
add  %l4, 1, %l4

P1919: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_326:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_326
nop

P1920: !_CAS [19] (maybe <- 0x10001a1) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_327:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P1921: !_LD [8] (Int) (Branch target of P1403)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
ba P1922
nop

TARGET1403:
ba RET1403
nop


P1922: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_327:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_327
nop

P1923: !_MEMBAR (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_328:
membar #StoreLoad
loop_exit_2_328:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_328
nop

P1924: !_CAS [22] (maybe <- 0x10001a2) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_329:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1925: !_CASX [20] (maybe <- 0x10001a3) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l7
mov %l4, %o2
casx [%o5], %l7, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_329:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_329
nop

P1926: !_REPLACEMENT [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_330:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+4], %l6
st %l6, [%i2+4]
add %i2, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]

P1927: !_PREFETCH [1] (Int) (Loop exit)
prefetch [%i0 + 4], 1
loop_exit_2_330:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_330
nop

P1928: !_CASX [18] (maybe <- 0x10001a4) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_331:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1929: !_CASX [22] (maybe <- 0x10001a6) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_331:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_331
nop

P1930: !_LD [12] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_332:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1931: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_332:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_332
nop

P1932: !_CASX [19] (maybe <- 0x10001a8) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_333:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1933: !_CASX [1] (maybe <- 0x10001aa) (Int) (Loop exit)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_333:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_333
nop

P1934: !_LD [16] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_334:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1935: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_334:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_334
nop

P1936: !_FLUSHI [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_335:
flush %g0 
loop_exit_2_335:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_335
nop

P1937: !_CASX [9] (maybe <- 0x10001ac) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_336:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_336:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_336
nop

P1938: !_CASX [8] (maybe <- 0x10001ae) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_337:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1939: !_CASX [19] (maybe <- 0x10001af) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i3], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_2_337:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_337
nop

P1940: !_CAS [12] (maybe <- 0x10001b1) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_338:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_338:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_338
nop

P1941: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_339:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1942: !_LD [19] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_339:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_339
nop

P1943: !_REPLACEMENT [11] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_340:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
loop_exit_2_340:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_340
nop

P1944: !_CASX [9] (maybe <- 0x10001b2) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_341:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_341:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_341
nop

P1945: !_LD [11] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_342:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1946: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_342:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_342
nop

P1947: !_CAS [19] (maybe <- 0x10001b4) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_343:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_343:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_343
nop

P1948: !_CAS [11] (maybe <- 0x10001b5) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_344:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P1949: !_LD [23] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1950: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_344:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_344
nop

P1951: !_CASX [7] (maybe <- 0x10001b6) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_345:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1952: !_LD [3] (FP) (Loop exit)
ld [%i1 + 0], %f0
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_345:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_345
nop

P1953: !_ST [3] (maybe <- 0x10001b8) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_346:
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4

P1954: !_REPLACEMENT [0] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
loop_exit_2_346:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_346
nop

P1955: !_LD [22] (FP) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_347:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P1956: !_CAS [1] (maybe <- 0x10001b9) (Int) (Loop exit)
add %i0, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_347:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_347
nop

P1957: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_348:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1958: !_LD [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_348:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_348
nop

P1959: !_ST [15] (maybe <- 0x10001ba) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_349:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
loop_exit_2_349:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_349
nop

P1960: !_REPLACEMENT [1] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_350:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
loop_exit_2_350:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_350
nop

P1961: !_LD [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_351:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1962: !_CASX [21] (maybe <- 0x10001bb) (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o5
! move %o5(upper) -> %o0(lower)
srlx %o5, 32, %l3
or %l3, %o0, %o0
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %o5, %l3
sllx %l4, 32, %o5
add  %l4, 1, %l4
or   %l4, %o5, %o5
casx [%i2], %l3, %o5
! move %o5(upper) -> %o1(lower)
srlx %o5, 32, %l3
or %l3, %o1, %o1
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
add  %l4, 1, %l4

P1963: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_351:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_351
nop

P1964: !_LD [18] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_352:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1965: !_ST [9] (maybe <- 0x10001bd) (Int) (CBR)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1965
nop
RET1965:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1966: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_352:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_352
nop

P1967: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_353:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_353:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_353
nop

P1968: !_CASX [10] (maybe <- 0x10001be) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_354:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1969: !_CAS [18] (maybe <- 0x10001c0) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o2
mov %o2, %l6
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l4, %l3
cas [%i3], %l6, %l3
! move %l3(lower) -> %o2(lower)
srl %l3, 0, %l6
or %l6, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_354:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_354
nop

P1970: !_CASX [19] (maybe <- 0x10001c1) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_355:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_355:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_355
nop

P1971: !_CASX [13] (maybe <- 0x10001c3) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_356:
sethi %hi(REGION4_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_356:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_356
nop

P1972: !_LD [9] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_357:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1973: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_357:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_357
nop

P1974: !_REPLACEMENT [17] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_358:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+12], %o5
st %o5, [%i3+12]
add %i3, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]

P1975: !_CAS [14] (maybe <- 0x10001c5) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_358:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_358
nop

P1976: !_CASX [21] (maybe <- 0x10001c6) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_359:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_359:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_359
nop

P1977: !_CASX [9] (maybe <- 0x10001c8) (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_360:
sllx %l4, 32, %l3
add  %l4, 1, %l4
or   %l4, %l3, %l3
! Change double-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %o5
or %o5, %lo(0xff00ff00), %o5
sllx %o5, 32, %l6
or %o5, %l6, %o5 
and %l3, %o5, %l6
srlx %l6, 8, %l6
sllx %l3, 8, %l3
and %l3, %o5, %l3
or %l3, %l6, %l3 
sethi %hi(0xffff0000), %o5
srlx %l3, 16, %l6
andn %l6, %o5, %l6
andn %l3, %o5, %l3
sllx %l3, 16, %l3
or %l3, %l6, %l3 
srlx %l3, 32, %l6
sllx %l3, 32, %l3
or %l3, %l6, %l6 
wr %g0, 0x88, %asi
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldxa [%i2] %asi, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
mov %l7, %o5
mov  %l6, %l7
casxa [%i2] %asi, %o5, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
add  %l4, 1, %l4

P1978: !_PREFETCH [21] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
prefetch [%i3 + 0], 3
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_360:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_360
nop

P1979: !_LD [13] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_361:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_361:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_361
nop

P1980: !_LD [20] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_362:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1981: !_CASX [4] (maybe <- 0x10001ca) (Int)
ldx [%i1], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i1], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P1982: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_2_362:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_362
nop

P1983: !_LD [23] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_363:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1984: !_CAS [4] (maybe <- 0x10001cc) (Int) (CBR)
add %i1, 4, %l6
lduw [%l6], %o5
mov %o5, %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
mov %l4, %o1
cas [%l6], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET1984
nop
RET1984:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P1985: !_LD [0] (Int) (Loop exit)
lduw [%i0 + 0], %l7
! move %l7(lower) -> %o1(lower)
or %l7, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_363:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_363
nop

P1986: !_LD [11] (FP) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_364:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ld [%i3 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_364:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_364
nop

P1987: !_LD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_365:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1988: !_LD [7] (FP)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ld [%i3 + 4], %f0
! 1 addresses covered

P1989: !_LD [1] (Int) (Loop exit) (CBR)
lduw [%i0 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET1989
nop
RET1989:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_2_365:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_365
nop

P1990: !_PREFETCH [18] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_366:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 0], 1
loop_exit_2_366:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_366
nop

P1991: !_CASX [15] (maybe <- 0x10001cd) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_367:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P1992: !_ST [15] (maybe <- 0x10001cf) (Int) (Loop exit) (Branch target of P1965)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_367:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_367
nop
ba P1993
nop

TARGET1965:
ba RET1965
nop


P1993: !_REPLACEMENT [10] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_368:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P1994: !_CAS [6] (maybe <- 0x10001d0) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_368:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_368
nop

P1995: !_PREFETCH [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_369:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 22
loop_exit_2_369:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_369
nop

P1996: !_CASX [15] (maybe <- 0x10001d1) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_2_370:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_2_370:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_370
nop

P1997: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_2_371:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1998: !_LD [20] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_2_371:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_2_371
nop

P1999: !_MEMBAR (Int)
membar #StoreLoad

END_NODES2: ! Test instruction sequence for CPU 2 ends
sethi %hi(0xdead0e0f), %o5
or    %o5, %lo(0xdead0e0f), %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
sethi %hi(0xdead0e0f), %o5
or    %o5, %lo(0xdead0e0f), %o5
stw %o5, [%i5] 
ld [%i5], %f0
!---- flushing int results buffer----
mov %o0, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--

restore
retl
nop
!-----------------

! register usage:
! %i0 %i1 : base registers for first 2 regions
! %i2 %i3 : cache registers for 8 regions
! %i4 fixed pointer to per-cpu results area
! %l1 moving pointer to per-cpu FP results area
! %o7 moving pointer to per-cpu integer results area
! %i5 pointer to per-cpu private area
! %l0 holds lfsr, used as source of random bits 
! %l2 loop count register
! %f16 running counter for unique fp store values
! %f17 holds increment value for fp counter
! %l4 running counter for unique integer store values (increment value is always 1)
! %l5 move-to register for load values (simulation only)
! %f30 move-to register for FP values (simulation only)
! %i4 holds the instructions count which is used for interrupt ordering
! %i4 holds the thread_id (OBP only) 
! %l5 holds the moving pointer for interrupt bonus data (OBP only). Conflicts with RTL/simulation usage
! %l3 %l6 %l7 %o5 : 4 temporary registers
! %o0 %o1 %o2 %o3 %o4 : 5 integer results buffer registers
! %f0-f15 FP results buffer registers
! %f32-f47 FP block load/store registers

func3:
! instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
andn %i0, 63, %i0

add %i1, 63, %i1
andn %i1, 63, %i1

add %i2, 63, %i2
andn %i2, 63, %i2

add %i3, 63, %i3
andn %i3, 63, %i3

add %i4, 63, %i4
andn %i4, 63, %i4

add %i5, 63, %i5
andn %i5, 63, %i5


! Initialize pointer to FP load results area
mov   %i4, %l1

! Initialize pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
add  %o7, %l1, %o7 

! Reinitialize i4 to 0. i4 will be used to keep the count of analyzable node info
mov 0x0, %i4

! Initialize %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l7
or    %l7, %lo(0xdeadbee0), %l7
stw   %l7, [%i5]
sethi %hi(0xdeadbee1), %l7
or    %l7, %lo(0xdeadbee1), %l7
stw   %l7, [%i5+4]
ldd [%i5], %f0
fmovd %f0, %f2
fmovd %f0, %f4
fmovd %f0, %f6
fmovd %f0, %f8
fmovd %f0, %f10
fmovd %f0, %f12
fmovd %f0, %f14
fmovd %f0, %f16
fmovd %f0, %f18
fmovd %f0, %f20
fmovd %f0, %f22
fmovd %f0, %f24
fmovd %f0, %f26
fmovd %f0, %f28
fmovd %f0, %f30
fmovd %f0, %f32
fmovd %f0, %f34
fmovd %f0, %f36
fmovd %f0, %f38
fmovd %f0, %f40
fmovd %f0, %f42
fmovd %f0, %f44
fmovd %f0, %f46
fmovd %f0, %f48
fmovd %f0, %f50
fmovd %f0, %f52
fmovd %f0, %f54
fmovd %f0, %f56
fmovd %f0, %f58
fmovd %f0, %f60
fmovd %f0, %f62

! Signature for extract_loads script to start extracting load values for this stream
sethi %hi(0x03deade1), %l7
or    %l7, %lo(0x03deade1), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize running integer counter in register %l4
sethi %hi(0x1800001), %l4
or    %l4, %lo(0x1800001), %l4

! Initialize running FP counter in register %f16
sethi %hi(0x41000001), %l7
or    %l7, %lo(0x41000001), %l7
stw %l7, [%i5] 
ld [%i5], %f16

! Initialize FP counter increment value in register %f17 (constant)
sethi %hi(0x35800000), %l7
or    %l7, %lo(0x35800000), %l7
stw %l7, [%i5] 
ld [%i5], %f17 

! Initialize LFSR to 0x52a^4
sethi %hi(0x52a), %l0
or    %l0, %lo(0x52a), %l0
mulx  %l0, %l0, %l0
mulx  %l0, %l0, %l0

BEGIN_NODES3: ! Test instruction sequence for ISTREAM 3 begins

P2000: !_CASX [11] (maybe <- 0x1800001) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_0:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2001: !_CASX [13] (maybe <- 0x1800002) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %o5
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_3_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_0
nop

P2002: !_CASX [22] (maybe <- 0x1800004) (Int) (Loop entry) (Branch target of P2410)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_1:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
ba P2003
nop

TARGET2410:
ba RET2410
nop


P2003: !_REPLACEMENT [16] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_1:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_1
nop

P2004: !_CASX [14] (maybe <- 0x1800006) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_2:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_2:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_2
nop

P2005: !_REPLACEMENT [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_3:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P2006: !_CASX [12] (maybe <- 0x1800007) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_3:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_3
nop

P2007: !_CASX [0] (maybe <- 0x1800009) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_4:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_4:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_4
nop

P2008: !_REPLACEMENT [17] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_5:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+12], %l3
st %l3, [%i2+12]
add %i2, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
loop_exit_3_5:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_5
nop

P2009: !_CASX [19] (maybe <- 0x180000b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_6:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_6:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_6
nop

P2010: !_CASX [5] (maybe <- 0x180000d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_7:
add %i1, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_7:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_7
nop

P2011: !_CASX [7] (maybe <- 0x180000e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_8:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_8:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_8
nop

P2012: !_CASX [15] (maybe <- 0x1800010) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_9:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_9:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_9
nop

P2013: !_CASX [6] (maybe <- 0x1800012) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_10:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_10:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_10
nop

P2014: !_REPLACEMENT [18] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_11:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+0], %l6
st %l6, [%i3+0]
add %i3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
loop_exit_3_11:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_11
nop

P2015: !_LD [22] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_12:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2016: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_12:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_12
nop

P2017: !_CAS [7] (maybe <- 0x1800014) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_13:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P2018: !_CAS [8] (maybe <- 0x1800015) (Int) (Loop exit)
add %i2, 12, %l6
lduw [%l6], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o1(lower)
srl %o5, 0, %l3
or %l3, %o1, %o1
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_13:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_13
nop

P2019: !_CASX [20] (maybe <- 0x1800016) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_14:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_14:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_14
nop

P2020: !_CASX [1] (maybe <- 0x1800017) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_15:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2021: !_PREFETCH [21] (Int) (Loop exit) (Branch target of P2279)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
prefetch [%i2 + 0], 22
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_15:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_15
nop
ba P2022
nop

TARGET2279:
ba RET2279
nop


P2022: !_ST [3] (maybe <- 0x1800019) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_16:
stw   %l4, [%i1 + 0 ]
add   %l4, 1, %l4
loop_exit_3_16:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_16
nop

P2023: !_CASX [13] (maybe <- 0x180001a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_17:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_17:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_17
nop

P2024: !_CASX [19] (maybe <- 0x180001c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_18:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_18:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_18
nop

P2025: !_LD [17] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_19:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2026: !_CASX [4] (maybe <- 0x180001e) (Int)
ldx [%i1], %l7
! move %l7(upper) -> %o0(lower)
srlx %l7, 32, %o5
or %o5, %o0, %o0
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l7, %o5
sllx %l4, 32, %l7
add  %l4, 1, %l4
or   %l4, %l7, %l7
casx [%i1], %o5, %l7
! move %l7(upper) -> %o1(lower)
srlx %l7, 32, %o5
or %o5, %o1, %o1
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
add  %l4, 1, %l4

P2027: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l3
! move %l3(lower) -> %o2(lower)
or %l3, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_19:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_19
nop

P2028: !_CASX [20] (maybe <- 0x1800020) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_20:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_20:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_20
nop

P2029: !_LD [3] (Int) (Loop entry) (Branch target of P2274)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_21:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
ba P2030
nop

TARGET2274:
ba RET2274
nop


P2030: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_21:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_21
nop

P2031: !_CASX [8] (maybe <- 0x1800021) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_22:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2032: !_CASX [23] (maybe <- 0x1800022) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l6
ldx [%l6], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l3
mov %l4, %o3
casx [%l6], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_3_22:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_22
nop

P2033: !_CASX [2] (maybe <- 0x1800023) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_23:
add %i0, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_23:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_23
nop

P2034: !_CASX [7] (maybe <- 0x1800024) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_24:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2035: !_CASX [5] (maybe <- 0x1800026) (Int) (Loop exit)
add %i1, 8, %o5
ldx [%o5], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l7
mov %l4, %o3
casx [%o5], %l7, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_3_24:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_24
nop

P2036: !_CASX [10] (maybe <- 0x1800027) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_25:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_25:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_25
nop

P2037: !_CAS [15] (maybe <- 0x1800029) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_26:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_26:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_26
nop

P2038: !_REPLACEMENT [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_27:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
loop_exit_3_27:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_27
nop

P2039: !_CAS [1] (maybe <- 0x180002a) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_28:
add %i0, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P2040: !_ST [12] (maybe <- 0x180002b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_28:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_28
nop

P2041: !_REPLACEMENT [1] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_29:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P2042: !_REPLACEMENT [17] (Int) (Loop exit)
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
loop_exit_3_29:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_29
nop

P2043: !_REPLACEMENT [23] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_30:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+12], %l7
st %l7, [%i3+12]
add %i3, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
loop_exit_3_30:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_30
nop

P2044: !_CASX [7] (maybe <- 0x180002c) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_31:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_31:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_31
nop

P2045: !_LD [17] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_32:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2046: !_LD [22] (Int) (Loop exit) (Branch target of P2099)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_32:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_32
nop
ba P2047
nop

TARGET2099:
ba RET2099
nop


P2047: !_REPLACEMENT [5] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_33:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+12], %l3
st %l3, [%i3+12]
add %i3, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]
add %o5, %l7, %o5
ld [%o5+12], %l3
st %l3, [%o5+12]

P2048: !_CAS [19] (maybe <- 0x180002e) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_33:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_33
nop

P2049: !_CASX [1] (maybe <- 0x180002f) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_34:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2050: !_FLUSHI [2] (Int) (Loop exit)
flush %g0 
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_34:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_34
nop

P2051: !_CASX [0] (maybe <- 0x1800031) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_35:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2052: !_ST [9] (maybe <- 0x1800033) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_35:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_35
nop

P2053: !_ST [2] (maybe <- 0x1800034) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_36:
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P2054: !_CASX [4] (maybe <- 0x1800035) (Int) (Loop exit)
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_36:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_36
nop

P2055: !_CASX [4] (maybe <- 0x1800037) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_37:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_37:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_37
nop

P2056: !_CASX [7] (maybe <- 0x1800039) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_38:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_38:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_38
nop

P2057: !_PREFETCH [18] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_39:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetcha [%i3 + 0] %asi, 16

P2058: !_REPLACEMENT [8] (Int) (Loop exit)
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
loop_exit_3_39:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_39
nop

P2059: !_CASX [2] (maybe <- 0x180003b) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_40:
add %i0, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2060: !_ST [8] (maybe <- 0x180003c) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_40:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_40
nop

P2061: !_CASX [2] (maybe <- 0x180003d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_41:
add %i0, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_41:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_41
nop

P2062: !_ST [23] (maybe <- 0x180003e) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_42:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P2063: !_CASX [13] (maybe <- 0x180003f) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_42:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_42
nop

P2064: !_LD [18] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_43:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2065: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l7
! move %l7(lower) -> %o0(lower)
or %l7, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_43:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_43
nop

P2066: !_CASX [3] (maybe <- 0x1800041) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_44:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2067: !_LD [22] (Int)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2068: !_LD [4] (Int) (Loop exit)
lduw [%i1 + 4], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_44:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_44
nop

P2069: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_45:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2070: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_45:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_45
nop

P2071: !_ST [15] (maybe <- 0x1800043) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_46:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
loop_exit_3_46:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_46
nop

P2072: !_LD [23] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_47:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_47:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_47
nop

P2073: !_CASX [15] (maybe <- 0x1800044) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_48:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_48:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_48
nop

P2074: !_CASX [10] (maybe <- 0x1800046) (Int) (Loop entry) (Loop exit) (Branch target of P2433)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_49:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_49:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_49
nop
ba P2075
nop

TARGET2433:
ba RET2433
nop


P2075: !_ST [22] (maybe <- 0x1800048) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_50:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_3_50:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_50
nop

P2076: !_LD [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_51:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2077: !_LD [14] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_51:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_51
nop

P2078: !_ST [11] (maybe <- 0x1800049) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_52:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P2079: !_LD [5] (Int)
lduw [%i1 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2080: !_LD [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_52:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_52
nop

P2081: !_CAS [4] (maybe <- 0x180004a) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_53:
add %i1, 4, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2082: !_CAS [12] (maybe <- 0x180004b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o1
mov %o1, %l7
! move %l7(lower) -> %o1(upper)
sllx %l7, 32, %o1
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o1(lower)
srl %l6, 0, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_53:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_53
nop

P2083: !_CASX [4] (maybe <- 0x180004c) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_54:
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2084: !_CAS [13] (maybe <- 0x180004e) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l3
lduw [%l3], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_54:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_54
nop

P2085: !_ST [12] (maybe <- 0x41000001) (FP) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_55:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]

P2086: !_CASX [7] (maybe <- 0x180004f) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_55:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_55
nop

P2087: !_PREFETCH [16] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_56:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
prefetch [%i2 + 4], 4
loop_exit_3_56:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_56
nop

P2088: !_CASX [10] (maybe <- 0x1800051) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_57:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2088
nop
RET2088:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_57:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_57
nop

P2089: !_CAS [12] (maybe <- 0x1800053) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_58:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i2], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P2090: !_CASX [3] (maybe <- 0x1800054) (Int) (Loop exit)
ldx [%i1], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %o5
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i1], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_58:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_58
nop

P2091: !_CASX [14] (maybe <- 0x1800056) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_59:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2092: !_CASX [1] (maybe <- 0x1800057) (Int) (Loop exit)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_3_59:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_59
nop

P2093: !_LD [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_60:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2094: !_LD [23] (Int) (Loop exit) (CBR)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2094
nop
RET2094:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_60:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_60
nop

P2095: !_CAS [17] (maybe <- 0x1800059) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_61:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_61:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_61
nop

P2096: !_CAS [9] (maybe <- 0x180005a) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_62:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P2097: !_CASX [12] (maybe <- 0x180005b) (Int) (Loop exit) (CBR)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
casx [%i2], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2097
nop
RET2097:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_62:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_62
nop

P2098: !_CASX [18] (maybe <- 0x180005d) (Int) (Loop entry) (Loop exit) (Branch target of P2211)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_63:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_63:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_63
nop
ba P2099
nop

TARGET2211:
ba RET2211
nop


P2099: !_CASX [22] (maybe <- 0x180005f) (Int) (Loop entry) (Loop exit) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_64:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2099
nop
RET2099:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0

!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_64:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_64
nop

P2100: !_PREFETCH [3] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_65:
prefetch [%i1 + 0], 20
loop_exit_3_65:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_65
nop

P2101: !_CASX [18] (maybe <- 0x1800061) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_66:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2102: !_LD [10] (Int)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2103: !_LD [19] (Int) (Loop exit)
lduw [%i3 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_66:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_66
nop

P2104: !_CASX [5] (maybe <- 0x1800063) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_67:
add %i1, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_67:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_67
nop

P2105: !_CASX [14] (maybe <- 0x1800064) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_68:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2106: !_CASX [1] (maybe <- 0x1800065) (Int) (Loop exit)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_3_68:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_68
nop

P2107: !_CASX [0] (maybe <- 0x1800067) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_69:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2108: !_FLUSHI [18] (Int) (Loop exit)
flush %g0 
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_69:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_69
nop

P2109: !_CASX [5] (maybe <- 0x1800069) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_70:
add %i1, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_70:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_70
nop

P2110: !_REPLACEMENT [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_71:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+0], %l6
st %l6, [%i2+0]
add %i2, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]
add %l3, %o5, %l3
ld [%l3+0], %l6
st %l6, [%l3+0]

P2111: !_CASX [10] (maybe <- 0x180006a) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_71:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_71
nop

P2112: !_CAS [7] (maybe <- 0x180006c) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_72:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P2113: !_REPLACEMENT [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %o5
ld [%i3+4], %l6
st %l6, [%i3+4]
add %i3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_72:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_72
nop

P2114: !_CASX [23] (maybe <- 0x180006d) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_73:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_73:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_73
nop

P2115: !_CAS [9] (maybe <- 0x180006e) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_74:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i3], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_74:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_74
nop

P2116: !_REPLACEMENT [20] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_75:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+12], %o5
st %o5, [%i2+12]
add %i2, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]
add %l7, %l6, %l7
ld [%l7+12], %o5
st %o5, [%l7+12]

P2117: !_ST [19] (maybe <- 0x180006f) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_3_75:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_75
nop

P2118: !_REPLACEMENT [10] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_76:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+4], %l7
st %l7, [%i2+4]
add %i2, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]
add %l6, %l3, %l6
ld [%l6+4], %l7
st %l7, [%l6+4]

P2119: !_CASX [5] (maybe <- 0x1800070) (Int) (Loop exit)
add %i1, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_76:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_76
nop

P2120: !_CAS [7] (maybe <- 0x1800071) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_77:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 4, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P2121: !_REPLACEMENT [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l3
ld [%i2+0], %l7
st %l7, [%i2+0]
add %i2, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_77:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_77
nop

P2122: !_CASX [18] (maybe <- 0x1800072) (Int) (Loop entry) (Loop exit) (Branch target of P2264)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_78:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_78:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_78
nop
ba P2123
nop

TARGET2264:
ba RET2264
nop


P2123: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_79:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2124: !_LD [23] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_79:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_79
nop

P2125: !_CASX [21] (maybe <- 0x1800074) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_80:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2126: !_CAS [6] (maybe <- 0x1800076) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%i2], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_80:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_80
nop

P2127: !_LD [3] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_81:
!-- Aliased access: Adjusting base register for region 1 (%i1) to use alias #1
!Logical addr: 3 

sethi %hi(0x200000), %o5
sub   %i1, %o5, %i1
wr %g0, 0x88, %asi
lduwa [%i1 + 0] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2128: !_LD [2] (Int) (Loop exit)
lduw [%i0 + 12], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5

sethi %hi(0x200000), %l3
add   %i1, %l3, %i1
!-- End Aliased access: base register for region 1 (%i1) restored
loop_exit_3_81:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_81
nop

P2129: !_LD [11] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_82:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2130: !_LD [5] (Int) (Loop exit)
lduw [%i1 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_82:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_82
nop

P2131: !_CASX [21] (maybe <- 0x1800077) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_83:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_83:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_83
nop

P2132: !_CASX [14] (maybe <- 0x1800079) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_84:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %l3
ldx [%l3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %o5
mov %l4, %o1
casx [%l3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_84:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_84
nop

P2133: !_LD [21] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_85:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2134: !_LD [10] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_85:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_85
nop

P2135: !_CASX [17] (maybe <- 0x180007a) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_86:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l6
mov %l4, %o1
casx [%l7], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_86:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_86
nop

P2136: !_CASX [0] (maybe <- 0x180007b) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_87:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_87:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_87
nop

P2137: !_CASX [6] (maybe <- 0x180007d) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_88:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2138: !_CASX [11] (maybe <- 0x180007f) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %o5
mov %l4, %o3
casx [%l3], %o5, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_3_88:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_88
nop

P2139: !_PREFETCH [17] (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_89:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 12], 2
loop_exit_3_89:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_89
nop

P2140: !_REPLACEMENT [12] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_90:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+0], %o5
st %o5, [%i2+0]
add %i2, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P2141: !_REPLACEMENT [2] (Int) (Loop exit)
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
loop_exit_3_90:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_90
nop

P2142: !_CASX [11] (maybe <- 0x1800080) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_91:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2143: !_CASX [6] (maybe <- 0x1800081) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i2], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_3_91:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_91
nop

P2144: !_CASX [13] (maybe <- 0x1800083) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_92:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_92:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_92
nop

P2145: !_REPLACEMENT [1] (Int) (Loop entry) (Branch target of P2467)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_93:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+4], %l3
st %l3, [%i2+4]
add %i2, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
add %o5, %l7, %o5
ld [%o5+4], %l3
st %l3, [%o5+4]
ba P2146
nop

TARGET2467:
ba RET2467
nop


P2146: !_CASX [7] (maybe <- 0x1800085) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_93:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_93
nop

P2147: !_FLUSHI [22] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_94:
flush %g0 
loop_exit_3_94:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_94
nop

P2148: !_REPLACEMENT [7] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_95:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %o5
ld [%i2+4], %l6
st %l6, [%i2+4]
add %i2, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
add %l3, %o5, %l3
ld [%l3+4], %l6
st %l6, [%l3+4]
loop_exit_3_95:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_95
nop

P2149: !_CASX [19] (maybe <- 0x1800087) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_96:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_96:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_96
nop

P2150: !_FLUSHI [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_97:
flush %g0 

P2151: !_ST [2] (maybe <- 0x1800089) (Int) (Loop exit)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4
loop_exit_3_97:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_97
nop

P2152: !_CAS [11] (maybe <- 0x180008a) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_98:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 12, %l6
lduw [%l6], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%l6], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4

P2153: !_LD [6] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2154: !_LD [8] (Int) (Loop exit)
lduw [%i3 + 12], %o5
! move %o5(lower) -> %o1(lower)
or %o5, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_98:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_98
nop

P2155: !_REPLACEMENT [13] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_99:
sethi %hi(REPLACEMENT0_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P2156: !_CASX [4] (maybe <- 0x180008b) (Int) (Loop exit)
ldx [%i1], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i1], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_99:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_99
nop

P2157: !_CAS [8] (maybe <- 0x180008d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_100:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 12, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P2158: !_CASX [11] (maybe <- 0x180008e) (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %l6
mov %l4, %o2
casx [%l7], %l6, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_100:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_100
nop

P2159: !_CASX [11] (maybe <- 0x180008f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_101:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l7
mov %l4, %o1
casx [%o5], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_101:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_101
nop

P2160: !_ST [14] (maybe <- 0x1800090) (Int) (Loop entry) (Loop exit) (LE)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_102:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l3
or %l3, %lo(0xff00ff00), %l3
and %l4, %l3, %l6
srl %l6, 8, %l6
sll %l4, 8, %o5
and %o5, %l3, %o5
or %o5, %l6, %o5
srl %o5, 16, %l6
sll %o5, 16, %o5
srl %o5, 0, %o5
or %o5, %l6, %o5
stwa   %o5, [%i2 + 12] %asi
add   %l4, 1, %l4
loop_exit_3_102:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_102
nop

P2161: !_CASX [13] (maybe <- 0x1800091) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_103:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2162: !_CAS [16] (maybe <- 0x1800093) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 4, %l3
lduw [%l3], %o2
mov %o2, %o5
! move %o5(lower) -> %o2(upper)
sllx %o5, 32, %o2
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o2(lower)
srl %l7, 0, %o5
or %o5, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_103:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_103
nop

P2163: !_CASX [13] (maybe <- 0x1800094) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_104:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_104:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_104
nop

P2164: !_ST [4] (maybe <- 0x1800096) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_105:
stw   %l4, [%i1 + 4 ]
add   %l4, 1, %l4
loop_exit_3_105:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_105
nop

P2165: !_REPLACEMENT [4] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_106:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l6
ld [%i2+4], %o5
st %o5, [%i2+4]
add %i2, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]
add %l7, %l6, %l7
ld [%l7+4], %o5
st %o5, [%l7+4]

P2166: !_REPLACEMENT [14] (Int) (Loop exit)
sethi %hi(0x20000), %l3
ld [%i2+12], %l7
st %l7, [%i2+12]
add %i2, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
add %l6, %l3, %l6
ld [%l6+12], %l7
st %l7, [%l6+12]
loop_exit_3_106:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_106
nop

P2167: !_ST [13] (maybe <- 0x1800097) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_107:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_3_107:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_107
nop

P2168: !_CAS [0] (maybe <- 0x1800098) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_108:
lduw [%i0], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %o5
cas [%i0], %l3, %o5
! move %o5(lower) -> %o0(lower)
srl %o5, 0, %l3
or %l3, %o0, %o0
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_108:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_108
nop

P2169: !_CASX [18] (maybe <- 0x1800099) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_109:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2170: !_ST [17] (maybe <- 0x180009b) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
stw   %l4, [%i3 + 12 ]
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_109:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_109
nop

P2171: !_LD [3] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_110:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2172: !_CAS [18] (maybe <- 0x180009c) (Int) (Branch target of P2509)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2], %l7
mov %l7, %o5
! move %o5(lower) -> %o0(lower)
or %o5, %o0, %o0
mov %l4, %o1
cas [%i2], %o5, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4
ba P2173
nop

TARGET2509:
ba RET2509
nop


P2173: !_LD [22] (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 4], %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_110:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_110
nop

P2174: !_ST [13] (maybe <- 0x180009d) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_111:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 4 ]
add   %l4, 1, %l4

P2175: !_LD [17] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2176: !_LD [8] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_111:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_111
nop

P2177: !_CAS [11] (maybe <- 0x180009e) (Int) (Loop entry) (Branch target of P2635)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_112:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 12, %o5
lduw [%o5], %o0
mov %o0, %l7
! move %l7(lower) -> %o0(upper)
sllx %l7, 32, %o0
mov %l4, %l6
cas [%o5], %l7, %l6
! move %l6(lower) -> %o0(lower)
srl %l6, 0, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4
ba P2178
nop

TARGET2635:
ba RET2635
nop


P2178: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_112:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_112
nop

P2179: !_LD [22] (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_113:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 4], %f0
! 1 addresses covered
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_113:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_113
nop

P2180: !_ST [10] (maybe <- 0x180009f) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_114:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 4 ]
add   %l4, 1, %l4
loop_exit_3_114:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_114
nop

P2181: !_CASX [10] (maybe <- 0x18000a0) (Int) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_115:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pn  %xcc, TARGET2181
nop
RET2181:

! lfsr step begin
srlx %l0, 1, %l3
xnor %l3, %l0, %l3
sllx %l3, 63, %l3
or  %l3, %l0, %l0
srlx %l0, 1, %l0


P2182: !_CASX [2] (maybe <- 0x18000a2) (Int) (Loop exit)
add %i0, 8, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov  %o2, %l6
mov %l4, %o3
casx [%l7], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_3_115:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_115
nop

P2183: !_PREFETCH [19] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_116:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 3

P2184: !_MEMBAR (Int) (Loop exit)
membar #StoreLoad
loop_exit_3_116:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_116
nop

P2185: !_CAS [14] (maybe <- 0x18000a3) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_117:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
add %i2, 12, %l3
lduw [%l3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P2186: !_CAS [1] (maybe <- 0x18000a4) (Int) (Loop exit)
add %i0, 4, %l3
lduw [%l3], %o1
mov %o1, %o5
! move %o5(lower) -> %o1(upper)
sllx %o5, 32, %o1
mov %l4, %l7
cas [%l3], %o5, %l7
! move %l7(lower) -> %o1(lower)
srl %l7, 0, %o5
or %o5, %o1, %o1
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_117:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_117
nop

P2187: !_CASX [19] (maybe <- 0x18000a5) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_118:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_118:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_118
nop

P2188: !_ST [14] (maybe <- 0x18000a7) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_119:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4
loop_exit_3_119:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_119
nop

P2189: !_REPLACEMENT [15] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_120:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]

P2190: !_ST [14] (maybe <- 0x18000a8) (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
! Change single-word-level endianess (big endian <-> little endian) 
sethi %hi(0xff00ff00), %l6
or %l6, %lo(0xff00ff00), %l6
and %l4, %l6, %l7
srl %l7, 8, %l7
sll %l4, 8, %l3
and %l3, %l6, %l3
or %l3, %l7, %l3
srl %l3, 16, %l7
sll %l3, 16, %l3
srl %l3, 0, %l3
or %l3, %l7, %l3
stwa   %l3, [%i2 + 12] %asi
add   %l4, 1, %l4
loop_exit_3_120:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_120
nop

P2191: !_REPLACEMENT [18] (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_121:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS1_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l6
ld [%i3+0], %o5
st %o5, [%i3+0]
add %i3, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
add %l7, %l6, %l7
ld [%l7+0], %o5
st %o5, [%l7+0]
loop_exit_3_121:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_121
nop

P2192: !_LD [19] (Int) (Loop entry) (LE)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_122:
wr %g0, 0x88, %asi
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduwa [%i2 + 4] %asi, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2193: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduw [%i3 + 12], %l3
! move %l3(lower) -> %o0(lower)
or %l3, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_122:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_122
nop

P2194: !_CASX [12] (maybe <- 0x18000a9) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_123:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l7
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l7, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_123:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_123
nop

P2195: !_CASX [0] (maybe <- 0x18000ab) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_124:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %o5
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %o5, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2196: !_LD [19] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2197: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l7
! move %l7(lower) -> %o2(lower)
or %l7, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_124:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_124
nop

P2198: !_CASX [5] (maybe <- 0x18000ad) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_125:
add %i1, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2199: !_REPLACEMENT [18] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS3_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l3
ld [%i3+0], %l7
st %l7, [%i3+0]
add %i3, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
add %l6, %l3, %l6
ld [%l6+0], %l7
st %l7, [%l6+0]
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_125:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_125
nop

P2200: !_ST [6] (maybe <- 0x41000002) (FP) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_126:
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
! preparing store val #0, next val will be in f20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 0 ]
loop_exit_3_126:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_126
nop

P2201: !_CASX [22] (maybe <- 0x18000ae) (Int) (Loop entry) (Loop exit)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_127:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i3], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_127:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_127
nop

P2202: !_CASX [15] (maybe <- 0x18000b0) (Int) (Loop entry) (CBR)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_128:
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i2
sub %i0, %i2, %i2
ldx [%i2], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i2], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2202
nop
RET2202:

! lfsr step begin
srlx %l0, 1, %l6
xnor %l6, %l0, %l6
sllx %l6, 63, %l6
or  %l6, %l0, %l0
srlx %l0, 1, %l0


P2203: !_CAS [18] (maybe <- 0x18000b2) (Int) (Loop exit) (Branch target of P2382)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o2
mov %o2, %l7
! move %l7(lower) -> %o2(upper)
sllx %l7, 32, %o2
mov %l4, %l6
cas [%i3], %l7, %l6
! move %l6(lower) -> %o2(lower)
srl %l6, 0, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_128:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_128
nop
ba P2204
nop

TARGET2382:
ba RET2382
nop


P2204: !_ST [20] (maybe <- 0x18000b3) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_129:
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 12 ]
add   %l4, 1, %l4

P2205: !_PREFETCH [7] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
prefetch [%i3 + 4], 2
loop_exit_3_129:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_129
nop

P2206: !_ST [21] (maybe <- 0x18000b4) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_130:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P2207: !_REPLACEMENT [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i3
sub %i0, %i3, %i3
sethi %hi(0x20000), %l7
ld [%i3+0], %l3
st %l3, [%i3+0]
add %i3, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
loop_exit_3_130:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_130
nop

P2208: !_LD [2] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_131:
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2209: !_LD [12] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_131:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_131
nop

P2210: !_ST [9] (maybe <- 0x18000b5) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_132:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
loop_exit_3_132:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_132
nop

P2211: !_LD [23] (FP) (Loop entry) (CBR)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_133:
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
ld [%i2 + 12], %f0
! 1 addresses covered

! cbranch
andcc %l0, 1, %g0
be,pt  %xcc, TARGET2211
nop
RET2211:

! lfsr step begin
srlx %l0, 1, %o5
xnor %o5, %l0, %o5
sllx %o5, 63, %o5
or  %o5, %l0, %l0
srlx %l0, 1, %l0


P2212: !_CASX [2] (maybe <- 0x18000b6) (Int) (Loop exit)
add %i0, 8, %l6
ldx [%l6], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov  %o0, %l3
mov %l4, %o1
casx [%l6], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
!---- flushing fp results buffer to %f30 ----
fmovs %f0, %f30
!--
loop_exit_3_133:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_133
nop

P2213: !_CASX [1] (maybe <- 0x18000b7) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_134:
ldx [%i0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
casx [%i0], %l6, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
add  %l4, 1, %l4

P2214: !_CASX [0] (maybe <- 0x18000b9) (Int) (Loop exit)
ldx [%i0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l6
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
casx [%i0], %l6, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
mov %o3, %l5
loop_exit_3_134:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_134
nop

P2215: !_LD [3] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_135:
lduw [%i1 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2216: !_LD [15] (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION5_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_135:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_135
nop

P2217: !_LD [0] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_136:
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2218: !_ST [6] (maybe <- 0x18000bb) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
stw   %l4, [%i2 + 0 ]
add   %l4, 1, %l4

P2219: !_LD [3] (Int) (Loop exit)
lduw [%i1 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0
!---- flushing int results buffer----
mov %o0, %l5
loop_exit_3_136:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_136
nop

P2220: !_CAS [12] (maybe <- 0x18000bc) (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_137:
sethi %hi(REGION0_ALIAS0_O-REGION4_ALIAS2_O), %i3
sub %i0, %i3, %i3
lduw [%i3], %o0
mov %o0, %o5
! move %o5(lower) -> %o0(upper)
sllx %o5, 32, %o0
mov %l4, %l7
cas [%i3], %o5, %l7
! move %l7(lower) -> %o0(lower)
srl %l7, 0, %o5
or %o5, %o0, %o0
add   %l4, 1, %l4

P2221: !_CASX [23] (maybe <- 0x18000bd) (Int) (Loop exit)
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
add %i2, 8, %l3
ldx [%l3], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov  %o1, %o5
mov %l4, %o2
casx [%l3], %o5, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
add  %l4, 1, %l4
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_137:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_137
nop

P2222: !_LD [1] (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_138:
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2223: !_CASX [20] (maybe <- 0x18000be) (Int)
sethi %hi(REGION0_ALIAS0_O-REGION6_ALIAS1_O), %i3
sub %i0, %i3, %i3
add %i3, 8, %o5
ldx [%o5], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov  %l6, %l7
mov %l4, %l6
casx [%o5], %l7, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
add  %l4, 1, %l4

P2224: !_LD [11] (Int) (Loop exit)
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i2
add %i0, %i2, %i2
lduw [%i2 + 12], %o5
! move %o5(lower) -> %o2(lower)
or %o5, %o2, %o2
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
mov %o2, %l5
loop_exit_3_138:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_138
nop

P2225: !_CAS [10] (maybe <- 0x18000bf) (Int) (Loop entry)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_3_139:
sethi %hi(REGION3_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
add %i3, 4, %l7
lduw [%l7], %o0
mov %o0, %l6
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l4, %l3
cas [%l7], %l6, %l3
! move %l3(lower) -> %o0(lower)
srl %l3, 0, %l6
or %l6, %o0, %o0
add   %l4, 1, %l4

P2226: !_LD [8] (Int)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i2
sub %i0, %i2, %i2
lduw [%i2 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2227: !_LD [21] (Int) (Loop exit) (LE)
wr %g0, 0x88, %asi
sethi %hi(REGION7_ALIAS0_O-REGION0_ALIAS0_O), %i3
add %i0, %i3, %i3
lduwa [%i3 + 0] %asi, %l3
! move %l3(lower) -> %o1(lower)
or %l3, %o1, %o1
!---- flushing int results buffer----
mov %o0, %l5
mov %o1, %l5
loop_exit_3_139:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_3_139
nop

P2228: !_REPLACEMENT [6] (Int) (Loop entry)
sethi %hi(0x2), %l2
or %l2, %lo(0x2),  %l2
loop_entry_3_140:
sethi %hi(REGION0_ALIAS0_O-REPLACEMENT0_ALIAS2_O), %i2
sub %i0, %i2, %i2
sethi %hi(0x20000), %l7
ld [%i2+0], %l3
st %l3, [%i2+0]
add %i2, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]
add %o5, %l7, %o5
ld [%o5+0], %l3
st %l3, [%o5+0]

P2229: !_CASX [7] (maybe <- 0x18000c0) (Int) (Loop exit)
sethi %hi(REGION0_ALIAS0_O-REGION2_ALIAS1_O), %i3
sub %i0, %i3, %i3
ldx [%i3], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l6
sllx %l4, 32, %o1
add  %l4, 1, %l4
cmp %l2, 0