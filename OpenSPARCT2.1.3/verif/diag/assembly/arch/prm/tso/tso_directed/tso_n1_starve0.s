/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: tso_n1_starve0.s
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
#define data0_addr	  		%o0
#define data1_addr	  		%o1
#define my_id_reg	  		%o3

#define ITERATIONS			4

#include "hboot.s"

.global main

main:


	add	%g0, ITERATIONS, %i0
	add	%g0, ITERATIONS, %i1
        add     %i1, 16, %i1
	add	%g0, ITERATIONS, %i2
        add     %i2, 16, %i2
	add	%g0, ITERATIONS, %i3
        add     %i2, 16, %i2

th_fork(th_main,%l0)

th_main_0:
	setx 	data1, %l0, data1_addr
	add	data1_addr, 0x50, data1_addr
	ld	[data1_addr], %l0

loop0:
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]
	st	%l0, [data1_addr]

	dec	%i0
	brnz	%i0, loop0
	nop

good_end:
        ta      T_GOOD_TRAP


th_main_1:
!        ba      good_end
!        nop

	setx 	data0, %l0, data0_addr

loop123:
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	!ba	loop123
	!ld	[data0_addr], %l7
	dec	%i1
	brnz	%i1, loop123
	ld	[data0_addr], %l7


!bad_end:
!        ta      T_BAD_TRAP

good_end11:
        ta      T_GOOD_TRAP

th_main_2:
!        ba      good_end
!        nop

	setx 	data0, %l0, data0_addr

loop124:
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	!ba	loop123
	!ld	[data0_addr], %l7
	dec	%i2
	brnz	%i2, loop124
	ld	[data0_addr], %l7


!bad_end1:
!        ta      T_BAD_TRAP
good_end1:
        ta      T_GOOD_TRAP

th_main_3:
!        ba      good_end
!        nop

	setx 	data0, %l0, data0_addr

loop125:
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l0
	ld	[data0_addr], %l1
	ld	[data0_addr], %l2
	ld	[data0_addr], %l3
	ld	[data0_addr], %l4
	ld	[data0_addr], %l5
	ld	[data0_addr], %l6
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	ld	[data0_addr], %l7
	!ba	loop123
	!ld	[data0_addr], %l7
	dec	%i3
	brnz	%i3, loop125
	ld	[data0_addr], %l7


!bad_end2:
!        ta      T_BAD_TRAP
good_end2:
        ta      T_GOOD_TRAP

!==========================

	.data
.global data0
.global data1
data0:
	.skip 0x1000
data1:
	.skip 0x1000
	
.end