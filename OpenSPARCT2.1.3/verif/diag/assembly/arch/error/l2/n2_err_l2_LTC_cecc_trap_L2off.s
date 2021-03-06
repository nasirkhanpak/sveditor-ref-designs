/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: n2_err_l2_LTC_cecc_trap_L2off.s
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
#define MAIN_PAGE_HV_ALSO


#define  L2_ENTRY_PA        0xa400000000
#define  TEST_DATA1         0x5555555555555555
#define	 L2_ENTRY_PA0       0x2020000008
#define L2_ES_W1C_VALUE     0xc03ffff800000000

#include "hboot.s"
#include "asi_s.h"
#include "err_defines.h"

.text
.global	 main
.global  My_Corrected_ECC_error_trap


main:

  ! Boot code does not provide TLB translation for IO address space
  ta    T_CHANGE_HPRIV

disable_l1_DCache:
  ldxa  [%g0] ASI_LSU_CONTROL, %l0
  ! Remove bit 2
  andn  %l0, 0x2, %l0
  stxa  %l0, [%g0] ASI_LSU_CONTROL

enable_err_reporting:
  setx L2EE_PA0, %l0, %l1
  ldx  [%l1], %l2
  mov  0x3, %l0
  or   %l2, %l0, %l2
  stx  %l2, [%l1]


clear_l2_ESR:
  setx  L2_ES_W1C_VALUE, %l0, %l1
  setx  L2ES_PA0, %l6, %g1
  stx   %l1, [%g1]


set_L2_off:
  setx  L2CS_PA0, %l6, %g1      ! Bit 1 in L2 Control Status Register
  mov   0x1, %l0
  stx   %l0, [%g1]

store_to_L2:
  setx  TEST_DATA1, %l0, %g5

store_to_L2_way0:
  setx	0x202000aa00, %l0, %g2  ! bits [21:18] select way
  stx %g5, [%g2] 
  stx %g5, [%g2+8]
  membar #Sync

L2_diag_load:
  setx  0x3ffff8, %l0, %l2      ! Mask for extracting [21:3]
  setx	L2_ENTRY_PA, %l0, %g4
  and   %g2, %l2, %g5           !g2 has L2 PA, 
  or	%g5, %g4, %g5           !g5 now has Diagnostic Data Array address 
  ldx	[%g5], %g6
  membar #Sync

! Flip one bits to inject error
  xor	 %g6, 0x200, %g6
  stx	%g6, [%g5]
  membar #Sync

!This should cause LTC
reading_back_0:                 !Load to L2 again to get the LTC logged in ESR
  setx  0x202000aa00, %l0, %g2
  ldx   [%g2], %l6
  membar #Sync  

reading_back_1:                 !Load miss to L2 again to get the error trap
  setx  0x202000ba00, %l0, %g2
  ldx   [%g2], %l6
  membar #Sync

/*
  ! Check if a Corrected ECC Trap happened
check_error_trap:
  setx  EXECUTED, %l1, %l0
  cmp   %o0, %l0
 ! bne   test_fail
  nop
  mov   TT_Corrected_ECC, %l0
  cmp   %o1, %l0
  !bne   test_fail
  nop
*/

enable_l1_DCache:
  ldxa  [%g0] ASI_LSU_CONTROL, %l0
  or    %l0, 0x2, %l0
  stxa  %l0, [%g0] ASI_LSU_CONTROL

compute_error:
  mov   0x1, %l1
  sllx  %l1, L2ES_LTC, %l7
  sllx  %l1, L2ES_VEC, %l3
  or    %l7, %l3, %l7


check_l2_ESR:
  setx  L2ES_PA0, %l6, %g1
  ldx   [%g1], %l4
  membar #Sync

  cmp   %g0,  %l4 		
  bne   test_fail
  nop


/*

  clr %g2
loop:
  inc %g2
  cmp %g2, 0xff
  bne loop
  nop
*/
  

check_error_trap:
  cmp   %o0, %g0
  bne   test_fail
  nop

  ba    test_pass
  nop

! Disrupting  hw_corrected_error trap handler
My_Corrected_ECC_error_trap:
  ba 	test_fail
  nop


/*******************************************************
 * Exit code
 *******************************************************/

test_pass:
ta  T_GOOD_TRAP

test_fail:
ta  T_BAD_TRAP
