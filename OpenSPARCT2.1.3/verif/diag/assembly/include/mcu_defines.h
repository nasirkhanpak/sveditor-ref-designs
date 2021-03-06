/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T2 Processor File: mcu_defines.h
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
#define DRAM_REG_COUNT                  4
#define DRAM_REG_STEP                   4096
#define	DRAM_CAS_ADDR_WIDTH_REG		0x8400000000
#define	DRAM_RAS_ADDR_WIDTH_REG		0x8400000008
#define	DRAM_CAS_LAT_REG		0x8400000010
#define	DRAM_SCRUB_FREQ_REG		0x8400000018
#define	DRAM_REFRESH_FREQ_REG		0x8400000020
#define	DRAM_OPEN_BANK_MAX_REG		0x8400000028
#define	DRAM_REFRESH_COUNTER_REG	0x8400000038
#define	DRAM_SCRUB_ENABLE_REG		0x8400000040
#define	DRAM_PROG_TIME_CNTR_REG		0x8400000048
#define	DRAM_TRRD_REG			0x8400000080
#define	DRAM_TRC_REG			0x8400000088
#define	DRAM_TRCD_REG			0x8400000090
#define	DRAM_TWTR_REG			0x8400000098
#define	DRAM_TRTW_REG			0x84000000a0
#define	DRAM_TRTP_REG			0x84000000a8
#define	DRAM_TRAS_REG			0x84000000b0
#define	DRAM_TRP_REG			0x84000000b8
#define	DRAM_TWR_REG			0x84000000c0
#define	DRAM_TRFC_REG			0x84000000c8
#define	DRAM_TMRD_REG			0x84000000d0
#define	DRAM_TIWTR_REG			0x84000000e0
#define	DRAM_PRECHARGE_WAIT_REG		0x84000000e8
#define	DRAM_DIMM_STACK_REG		0x8400000108
#define	DRAM_EXT_WR_MODE2_REG		0x8400000110
#define	DRAM_EXT_WR_MODE1_REG		0x8400000118
#define	DRAM_EXT_WR_MODE3_REG		0x8400000120
#define	DRAM_8_BANK_MODE_REG		0x8400000128
#define	DRAM_CHANNEL_DISABLED_REG	0x8400000138
#define	DRAM_SEL_LO_ADDR_BITS_REG	0x8400000140
#define	DRAM_SNG_CHANNEL_MODE_REG	0x8400000148
#define	DRAM_DIMM_INIT_REG		0x84000001a0
#define DRAM_MODE_WRITE_STATUS_REG	0x8400000208
#define DRAM_INIT_STATUS_REG		0x8400000210
#define	DRAM_DIMM_PRESENT_REG		0x8400000218
#define	DRAM_FAILOVER_STATUS_REG	0x8400000220
#define	DRAM_FAILOVER_MASK_REG		0x8400000228
#define	DRAM_DEBUG_TRIG_ENABLE_REG	0x8400000230
#define DRAM_POWER_DOWN_MODE_REG	0x8400000238
#define DRAM_ERROR_STATUS_REG		0x8400000280
#define	DRAM_ERROR_ADDR_REG		0x8400000288
#define	DRAM_ERROR_INJECT_REG		0x8400000290
#define	DRAM_ERROR_COUNTER_REG		0x8400000298
#define	DRAM_ERROR_LOCATION_REG		0x84000002a0
#define	DRAM_PERF_CTL_REG		0x8400000400
#define	DRAM_PERF_COUNT_REG		0x8400000408 
#define FBD_CHANNEL_STATE_REG		0x8400000800
#define FAST_RESET_FLAG_REG		0x8400000808
#define CHANNEL_RESET_REG		0x8400000810
#define TS1_SB_NB_MAPPING_REG		0x8400000818
#define TS1_TEST_PARAMETER_REG		0x8400000820
#define TS3_FAILOVER_CONFIG_REG		0x8400000828
#define ELECTRICAL_IDLE_DETECTED_REG	0x8400000830
#define DISABLE_STATE_PERIOD_REG	0x8400000838
#define DISABLE_STATE_PERIOD_DONE_REG	0x8400000840
#define CALIBRATE_STATE_PERIOD_REG	0x8400000848
#define CALIBRATE_STATE_PERIOD_DONE_REG	0x8400000850
#define TRAINING_STATE_MIN_TIME_REG	0x8400000858
#define TRAINING_STATE_DONE_REG		0x8400000860
#define TRAINING_STATE_TIMEOUT_REG	0x8400000868
#define TESTING_STATE_DONE_REG		0x8400000870
#define TESTING_STATE_TIMEOUT_REG	0x8400000878
#define POLLING_STATE_DONE_REG		0x8400000880
#define POLLING_STATE_TIMEOUT_REG	0x8400000888
#define CONFIG_STATE_DONE_REG		0x8400000890
#define CONFIG_STATE_TIMEOUT_PERIOD_REG	0x8400000898
#define DRAM_PER_RANK_CKE_REG		0x84000008A0
#define LOS_DURATION_REG		0x84000008A8
#define SYNC_FRAME_FREQ_REG		0x84000008B0
#define CHANNEL_READ_LATENCY_REG	0x84000008B8
#define CHANNEL_CAPABILITY_REG		0x84000008C0
#define LOOPBACK_MODE_CTRL_REG		0x84000008C8
#define SERDES_CONFIG_BUS_REG		0x84000008D0
#define SERDES_XMT_RCV_DIFF_INV_REG	0x84000008D8
#define CONFIG_REG_ACCESS_ADDRESS_REG	0x8400000900
#define CONFIG_REG_ACCESS_DATA_REG	0x8400000908
#define MCU_SYNDROME_REG		0x8400000C00
#define INJ_ERR_SOURCE_REG		0x8400000C08
#define MCU_FBR_COUNT_REG		0x8400000C10

!  FBD_CHANNEL_STATE_REG		0x8400000800  ! new
!  FAST_RESET_FLAG_REG		0x8400000808  ! new
!  CHANNEL_RESET_REG		0x8400000810  ! new
!  TS1_SB_NB_MAPPING_REG		0x8400000818  ! new
!  TS1_TEST_PARAMETER_REG		0x8400000820  ! new
!  TS3_FAILOVER_CONFIG_REG		0x8400000828  ! new
!  ELECTRICAL_IDLE_DETECTED_REG	0x8400000830  ! new read only
!  DISABLE_STATE_PERIOD_REG	0x8400000838  ! new
!  DISABLE_STATE_PERIOD_DONE_REG	0x8400000840  ! new read only
!  CALIBRATE_STATE_PERIOD_REG	0x8400000848  ! new
!  CALIBRATE_STATE_PERIOD_DONE_REG	0x8400000850  ! new read only
!  TRAINING_STATE_MIN_TIME_REG	0x8400000858  ! new
!  TRAINING_STATE_DONE_REG		0x8400000860  ! new
!  TRAINING_STATE_TIMEOUT_REG	0x8400000868  ! new
!  TESTING_STATE_DONE_REG		0x8400000870  ! new
!  TESTING_STATE_TIMEOUT_REG	0x8400000878  ! new
!  POLLING_STATE_DONE_REG		0x8400000880  ! new
!  POLLING_STATE_TIMEOUT_REG	0x8400000888  ! new
!  CONFIG_STATE_DONE_REG		0x8400000890  ! new
!  CONFIG_STATE_TIMEOUT_PERIOD_REG	0x8400000898  ! new
!  DRAM_PER_RANK_CKE_REG		0x84000008A0  ! new
!  LOS_DURATION_REG		0x84000008A8  ! new
!  SYNC_FRAME_FREQ_REG		0x84000008B0  ! new
!  CHANNEL_READ_LATENCY_REG	0x84000008B8  ! new
!  CHANNEL_CAPABILITY_REG		0x84000008C0  ! new read only
!  LOOPBACK_MODE_CTRL_REG		0x84000008C8  ! new
!  SERDES_CONFIG_BUS_REG		0x84000008D0  ! new
!  SERDES_XMT_RCV_DIFF_INV_REG	0x84000008D8  ! new
!  CONFIG_REG_ACCESS_ADDRESS_REG	0x8400000900  ! new
!  CONFIG_REG_ACCESS_DATA_REG	0x8400000908  ! new
!  MCU_SYNDROME_REG		0x8400000C00  ! new
!  INJ_ERR_SOURCE_REG		0x8400000C08  ! new
!  MCU_FBR_COUNT_REG		0x8400000C10  ! new
