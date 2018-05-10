--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PS2_RX_SCH_translate.vhd
-- /___/   /\     Timestamp: Fri Apr 13 12:23:39 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm PS2_RX_SCH -w -dir netgen/translate -ofmt vhdl -sim PS2_RX_SCH.ngd PS2_RX_SCH_translate.vhd 
-- Device	: 3s100etq144-4
-- Input file	: PS2_RX_SCH.ngd
-- Output file	: C:\Users\lab\Desktop\learner\learner\learner\netgen\translate\PS2_RX_SCH_translate.vhd
-- # of Entities	: 1
-- Design Name	: PS2_RX_SCH
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity PS2_RX_SCH is
  port (
    PS2_Clk : in STD_LOGIC := 'X'; 
    PS2_Data : in STD_LOGIC := 'X'; 
    RS232_RxD : in STD_LOGIC := 'X'; 
    RS232_TxD : out STD_LOGIC; 
    BTN_SOUTH : in STD_LOGIC := 'X'; 
    Clk_50MHz : in STD_LOGIC := 'X' 
  );
end PS2_RX_SCH;

architecture Structure of PS2_RX_SCH is
  signal NlwRenamedSig_IO_BTN_SOUTH : STD_LOGIC; 
  signal BTN_SOUTH_IBUF_195 : STD_LOGIC; 
  signal Clk_50MHz_BUFGP : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal PS2_Clk_IBUF_201 : STD_LOGIC; 
  signal PS2_Data_IBUF_203 : STD_LOGIC; 
  signal RS232_RxD_IBUF_205 : STD_LOGIC; 
  signal RS232_TxD_OBUF_207 : STD_LOGIC; 
  signal XLXI_2_Mxor_validate_parity_xor0000_xo_0_4_208 : STD_LOGIC; 
  signal XLXI_2_Mxor_validate_parity_xor0000_xo_0_9_209 : STD_LOGIC; 
  signal XLXI_2_mod11_counter_and0000 : STD_LOGIC; 
  signal XLXI_2_state_FSM_FFd1_232 : STD_LOGIC; 
  signal XLXI_2_state_FSM_FFd1_In1_233 : STD_LOGIC; 
  signal XLXI_2_state_FSM_FFd2_234 : STD_LOGIC; 
  signal XLXI_2_state_FSM_FFd2_In1_235 : STD_LOGIC; 
  signal XLXI_2_state_FSM_FFd2_In_SW0_O : STD_LOGIC; 
  signal XLXI_2_Mxor_validate_parity_xor0000_xo_0_4_O : STD_LOGIC; 
  signal Clk_50MHz_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal XLXI_1_cntTx_or00001_SW0_O : STD_LOGIC; 
  signal XLXI_1_RxBitNo_cmp_eq0000_SW0_SW0_O : STD_LOGIC; 
  signal XLXI_1_iRxBusy_or0000_SW0_SW0_O : STD_LOGIC; 
  signal XLXI_1_iTxBusy_or0000_SW0_O : STD_LOGIC; 
  signal XLXI_1_N20 : STD_LOGIC; 
  signal XLXI_1_N23 : STD_LOGIC; 
  signal XLXI_1_N18 : STD_LOGIC; 
  signal XLXI_1_N12 : STD_LOGIC; 
  signal XLXI_1_N21 : STD_LOGIC; 
  signal XLXI_1_N10 : STD_LOGIC; 
  signal XLXI_1_N8 : STD_LOGIC; 
  signal XLXI_1_TxBitNo_cmp_eq000016_182 : STD_LOGIC; 
  signal XLXI_1_TxBitNo_cmp_eq00008_181 : STD_LOGIC; 
  signal XLXI_1_N24 : STD_LOGIC; 
  signal XLXI_1_iRxRdy_cmp_eq0001 : STD_LOGIC; 
  signal XLXI_1_iRxRdy_cmp_eq0000_178 : STD_LOGIC; 
  signal XLXI_1_N22 : STD_LOGIC; 
  signal XLXI_1_N0 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntTx_xor_8_rt_175 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntTx_cy_7_rt_173 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntTx_cy_6_rt_171 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntTx_cy_5_rt_169 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntTx_cy_4_rt_167 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntTx_cy_3_rt_165 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntTx_cy_2_rt_163 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntTx_cy_1_rt_161 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntRx_xor_8_rt_158 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntRx_cy_7_rt_156 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntRx_cy_6_rt_154 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntRx_cy_5_rt_152 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntRx_cy_4_rt_150 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntRx_cy_3_rt_148 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntRx_cy_2_rt_146 : STD_LOGIC; 
  signal XLXI_1_Mcount_cntRx_cy_1_rt_144 : STD_LOGIC; 
  signal XLXI_1_Result_3_3 : STD_LOGIC; 
  signal XLXI_1_Result_2_3 : STD_LOGIC; 
  signal XLXI_1_Result_1_3 : STD_LOGIC; 
  signal XLXI_1_iRxBusy_inv : STD_LOGIC; 
  signal XLXI_1_Result_0_3 : STD_LOGIC; 
  signal XLXI_1_RxBitNo_cmp_eq0000_132 : STD_LOGIC; 
  signal XLXI_1_Result_3_2 : STD_LOGIC; 
  signal XLXI_1_Result_2_2 : STD_LOGIC; 
  signal XLXI_1_Result_1_2 : STD_LOGIC; 
  signal XLXI_1_iTxBusy_inv : STD_LOGIC; 
  signal XLXI_1_Result_0_2 : STD_LOGIC; 
  signal XLXI_1_TxBitNo_cmp_eq0000 : STD_LOGIC; 
  signal XLXI_1_Result_8_1 : STD_LOGIC; 
  signal XLXI_1_Result_7_1 : STD_LOGIC; 
  signal XLXI_1_Result_6_1 : STD_LOGIC; 
  signal XLXI_1_Result_5_1 : STD_LOGIC; 
  signal XLXI_1_Result_4_1 : STD_LOGIC; 
  signal XLXI_1_Result_3_1 : STD_LOGIC; 
  signal XLXI_1_Result_2_1 : STD_LOGIC; 
  signal XLXI_1_Result_1_1 : STD_LOGIC; 
  signal XLXI_1_cntTx_or0000 : STD_LOGIC; 
  signal XLXI_1_Result_0_1 : STD_LOGIC; 
  signal XLXI_1_cntRx_or0000 : STD_LOGIC; 
  signal XLXI_1_ResTxBusy_BusyExt_and0000 : STD_LOGIC; 
  signal XLXI_1_ResTxBusy_qBusyInt_82 : STD_LOGIC; 
  signal XLXI_1_ResTxBusy_prevBusyExt_81 : STD_LOGIC; 
  signal XLXI_1_ResTxBusy_qBusyExt_80 : STD_LOGIC; 
  signal XLXI_1_ResTxStart_DInToggle_not0001 : STD_LOGIC; 
  signal XLXI_1_ResTxStart_DInToggle_78 : STD_LOGIC; 
  signal XLXI_1_ResTxStart_prevDIn_77 : STD_LOGIC; 
  signal XLXI_1_ResTxStart_qDIn_76 : STD_LOGIC; 
  signal XLXI_1_ResRxRdy_DInToggle_not0001 : STD_LOGIC; 
  signal XLXI_1_ResRxRdy_DInToggle_74 : STD_LOGIC; 
  signal XLXI_1_ResRxRdy_prevDIn_73 : STD_LOGIC; 
  signal XLXI_1_ResRxRdy_qDIn_72 : STD_LOGIC; 
  signal XLXI_1_N2 : STD_LOGIC; 
  signal XLXI_1_iRxRdy : STD_LOGIC; 
  signal XLXI_1_srRx_and0000 : STD_LOGIC; 
  signal XLXI_1_iTxBusy_60 : STD_LOGIC; 
  signal XLXI_1_iTxBusy_or0000_59 : STD_LOGIC; 
  signal XLXI_1_iTxBusy_and0000 : STD_LOGIC; 
  signal XLXI_1_iRxBusy_57 : STD_LOGIC; 
  signal XLXI_1_iRxBusy_or0000_56 : STD_LOGIC; 
  signal XLXI_1_iRxBusy_not0001_inv : STD_LOGIC; 
  signal XLXI_1_inTxDI_and0000 : STD_LOGIC; 
  signal XLXI_1_srTx_not0001 : STD_LOGIC; 
  signal XLXI_1_N1 : STD_LOGIC; 
  signal XLXI_1_TxBusy : STD_LOGIC; 
  signal XLXI_1_RxRdy : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal XLXI_2_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_2_allow_new_data_bit : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal XLXI_2_mod11_counter : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_2_shift_register_data : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal XLXI_1_Mcount_cntTx_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_1_Mcount_cntTx_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_1_Mcount_cntRx_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_1_Mcount_cntRx_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_1_RxBitNo : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_1_TxBitNo : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_1_cntTx : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal XLXI_1_cntRx : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal XLXI_1_Result : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal XLXI_1_srRx : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_1_inTxDI : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_1_srTx : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal XLXI_1_srTx_mux0000 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal XLXI_1_RxDO : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  NlwRenamedSig_IO_BTN_SOUTH <= BTN_SOUTH;
  XLXI_2_mod11_counter_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_Result(3),
      SRST => XLXI_2_state_FSM_FFd1_232,
      O => XLXI_2_mod11_counter(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_2_mod11_counter_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_Result(2),
      SRST => XLXI_2_state_FSM_FFd1_232,
      O => XLXI_2_mod11_counter(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_2_mod11_counter_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_Result(1),
      SRST => XLXI_2_state_FSM_FFd1_232,
      O => XLXI_2_mod11_counter(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_2_mod11_counter_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_Result(0),
      SRST => XLXI_2_state_FSM_FFd1_232,
      O => XLXI_2_mod11_counter(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_2_shift_register_data_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_shift_register_data(1),
      O => XLXI_2_shift_register_data(0),
      SET => GND,
      RST => GND
    );
  XLXI_2_shift_register_data_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_shift_register_data(2),
      O => XLXI_2_shift_register_data(1),
      SET => GND,
      RST => GND
    );
  XLXI_2_shift_register_data_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_shift_register_data(3),
      O => XLXI_2_shift_register_data(2),
      SET => GND,
      RST => GND
    );
  XLXI_2_shift_register_data_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_shift_register_data(4),
      O => XLXI_2_shift_register_data(3),
      SET => GND,
      RST => GND
    );
  XLXI_2_shift_register_data_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_shift_register_data(5),
      O => XLXI_2_shift_register_data(4),
      SET => GND,
      RST => GND
    );
  XLXI_2_shift_register_data_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_shift_register_data(6),
      O => XLXI_2_shift_register_data(5),
      SET => GND,
      RST => GND
    );
  XLXI_2_shift_register_data_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_shift_register_data(7),
      O => XLXI_2_shift_register_data(6),
      SET => GND,
      RST => GND
    );
  XLXI_2_shift_register_data_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_shift_register_data(8),
      O => XLXI_2_shift_register_data(7),
      SET => GND,
      RST => GND
    );
  XLXI_2_shift_register_data_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_shift_register_data(9),
      O => XLXI_2_shift_register_data(8),
      SET => GND,
      RST => GND
    );
  XLXI_2_shift_register_data_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => XLXI_2_shift_register_data(10),
      O => XLXI_2_shift_register_data(9),
      SET => GND,
      RST => GND
    );
  XLXI_2_allow_new_data_bit_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_2_allow_new_data_bit(1),
      O => XLXI_2_allow_new_data_bit(0),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_2_shift_register_data_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_mod11_counter_and0000,
      I => PS2_Data_IBUF_203,
      O => XLXI_2_shift_register_data(10),
      SET => GND,
      RST => GND
    );
  XLXI_2_allow_new_data_bit_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => PS2_Clk_IBUF_201,
      O => XLXI_2_allow_new_data_bit(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_2_Mcount_mod11_counter_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => XLXI_2_mod11_counter(1),
      ADR1 => XLXI_2_mod11_counter(0),
      O => XLXI_2_Result(1)
    );
  XLXI_2_Mcount_mod11_counter_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => XLXI_2_mod11_counter(2),
      ADR1 => XLXI_2_mod11_counter(1),
      ADR2 => XLXI_2_mod11_counter(0),
      O => XLXI_2_Result(2)
    );
  XLXI_2_Mcount_mod11_counter_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => XLXI_2_mod11_counter(3),
      ADR1 => XLXI_2_mod11_counter(1),
      ADR2 => XLXI_2_mod11_counter(0),
      ADR3 => XLXI_2_mod11_counter(2),
      O => XLXI_2_Result(3)
    );
  XLXI_2_mod11_counter_and00001 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_2_allow_new_data_bit(1),
      ADR1 => XLXI_2_allow_new_data_bit(0),
      O => XLXI_2_mod11_counter_and0000
    );
  XLXI_2_state_FSM_FFd1_In_SW0 : X_LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      ADR0 => XLXI_2_shift_register_data(0),
      ADR1 => XLXI_2_shift_register_data(10),
      O => N4
    );
  XLXI_2_Mxor_validate_parity_xor0000_xo_0_9 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => XLXI_2_shift_register_data(5),
      ADR1 => XLXI_2_shift_register_data(6),
      ADR2 => XLXI_2_shift_register_data(7),
      ADR3 => XLXI_2_shift_register_data(8),
      O => XLXI_2_Mxor_validate_parity_xor0000_xo_0_9_209
    );
  PS2_Clk_IBUF : X_BUF
    port map (
      I => PS2_Clk,
      O => PS2_Clk_IBUF_201
    );
  PS2_Data_IBUF : X_BUF
    port map (
      I => PS2_Data,
      O => PS2_Data_IBUF_203
    );
  RS232_RxD_IBUF : X_BUF
    port map (
      I => RS232_RxD,
      O => RS232_RxD_IBUF_205
    );
  BTN_SOUTH_IBUF : X_BUF
    port map (
      I => NlwRenamedSig_IO_BTN_SOUTH,
      O => BTN_SOUTH_IBUF_195
    );
  XLXI_2_state_FSM_FFd2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_2_state_FSM_FFd2_In1_235,
      SRST => XLXI_2_state_FSM_FFd2_234,
      O => XLXI_2_state_FSM_FFd2_234,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_2_state_FSM_FFd2_In1 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => XLXI_2_mod11_counter(3),
      ADR1 => XLXI_2_mod11_counter(2),
      ADR2 => N2,
      O => XLXI_2_state_FSM_FFd2_In1_235
    );
  XLXI_2_state_FSM_FFd1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_2_state_FSM_FFd1_In1_233,
      SRST => N4,
      O => XLXI_2_state_FSM_FFd1_232,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_2_state_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"9600"
    )
    port map (
      ADR0 => XLXI_2_Mxor_validate_parity_xor0000_xo_0_4_208,
      ADR1 => XLXI_2_Mxor_validate_parity_xor0000_xo_0_9_209,
      ADR2 => XLXI_2_shift_register_data(9),
      ADR3 => XLXI_2_state_FSM_FFd2_234,
      O => XLXI_2_state_FSM_FFd1_In1_233
    );
  XLXI_2_Mcount_mod11_counter_xor_0_11_INV_0 : X_INV
    port map (
      I => XLXI_2_mod11_counter(0),
      O => XLXI_2_Result(0)
    );
  XLXI_2_state_FSM_FFd2_In_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => XLXI_2_state_FSM_FFd2_In_SW0_O,
      O => N2
    );
  XLXI_2_state_FSM_FFd2_In_SW0 : X_LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      ADR0 => XLXI_2_mod11_counter(1),
      ADR1 => XLXI_2_state_FSM_FFd1_232,
      ADR2 => XLXI_2_mod11_counter(0),
      O => XLXI_2_state_FSM_FFd2_In_SW0_O
    );
  XLXI_2_Mxor_validate_parity_xor0000_xo_0_4_LUT4_L_BUF : X_BUF
    port map (
      I => XLXI_2_Mxor_validate_parity_xor0000_xo_0_4_O,
      O => XLXI_2_Mxor_validate_parity_xor0000_xo_0_4_208
    );
  XLXI_2_Mxor_validate_parity_xor0000_xo_0_4 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => XLXI_2_shift_register_data(1),
      ADR1 => XLXI_2_shift_register_data(2),
      ADR2 => XLXI_2_shift_register_data(3),
      ADR3 => XLXI_2_shift_register_data(4),
      O => XLXI_2_Mxor_validate_parity_xor0000_xo_0_4_O
    );
  BTN_SOUTH_PULLDOWN : X_PD
    port map (
      O => NlwRenamedSig_IO_BTN_SOUTH
    );
  Clk_50MHz_BUFGP_BUFG : X_CKBUF
    port map (
      I => Clk_50MHz_BUFGP_IBUFG_2,
      O => Clk_50MHz_BUFGP
    );
  Clk_50MHz_BUFGP_IBUFG : X_CKBUF
    port map (
      I => Clk_50MHz,
      O => Clk_50MHz_BUFGP_IBUFG_2
    );
  XLXI_1_cntTx_or00001_SW0 : X_LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      ADR0 => XLXI_1_cntTx(5),
      ADR1 => XLXI_1_cntTx(4),
      ADR2 => XLXI_1_cntTx(7),
      ADR3 => XLXI_1_cntTx(1),
      O => XLXI_1_cntTx_or00001_SW0_O
    );
  XLXI_1_cntTx_or00001_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => XLXI_1_cntTx_or00001_SW0_O,
      O => XLXI_1_N20
    );
  XLXI_1_RxBitNo_cmp_eq0000_SW0_SW0 : X_LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      ADR0 => XLXI_1_cntRx(5),
      ADR1 => XLXI_1_cntRx(0),
      ADR2 => XLXI_1_cntRx(3),
      O => XLXI_1_RxBitNo_cmp_eq0000_SW0_SW0_O
    );
  XLXI_1_RxBitNo_cmp_eq0000_SW0_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => XLXI_1_RxBitNo_cmp_eq0000_SW0_SW0_O,
      O => XLXI_1_N12
    );
  XLXI_1_iRxRdy_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      ADR0 => XLXI_1_cntRx(3),
      ADR1 => XLXI_1_cntRx(0),
      ADR2 => XLXI_1_N21,
      ADR3 => XLXI_1_N10,
      O => XLXI_1_iRxRdy_cmp_eq0000_178
    );
  XLXI_1_iRxRdy_cmp_eq0000_LUT4_D_BUF : X_BUF
    port map (
      I => XLXI_1_iRxRdy_cmp_eq0000_178,
      O => XLXI_1_N24
    );
  XLXI_1_iRxBusy_or0000_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"0908"
    )
    port map (
      ADR0 => XLXI_1_RxBitNo(3),
      ADR1 => XLXI_1_RxBitNo(0),
      ADR2 => XLXI_1_RxBitNo(1),
      ADR3 => RS232_RxD_IBUF_205,
      O => XLXI_1_iRxBusy_or0000_SW0_SW0_O
    );
  XLXI_1_iRxBusy_or0000_SW0_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => XLXI_1_iRxBusy_or0000_SW0_SW0_O,
      O => XLXI_1_N8
    );
  XLXI_1_RxBitNo_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => XLXI_1_cntRx(7),
      ADR1 => XLXI_1_cntRx(2),
      ADR2 => XLXI_1_cntRx(1),
      ADR3 => XLXI_1_cntRx(4),
      O => XLXI_1_N21
    );
  XLXI_1_RxBitNo_cmp_eq000011_LUT4_D_BUF : X_BUF
    port map (
      I => XLXI_1_N21,
      O => XLXI_1_N23
    );
  XLXI_1_iRxRdy_cmp_eq00011 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => XLXI_1_RxBitNo(3),
      ADR1 => XLXI_1_RxBitNo(2),
      ADR2 => XLXI_1_RxBitNo(1),
      ADR3 => XLXI_1_RxBitNo(0),
      O => XLXI_1_iRxRdy_cmp_eq0001
    );
  XLXI_1_iRxRdy_cmp_eq00011_LUT4_D_BUF : X_BUF
    port map (
      I => XLXI_1_iRxRdy_cmp_eq0001,
      O => XLXI_1_N22
    );
  XLXI_1_iTxBusy_or0000_SW0 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_1_TxBitNo(2),
      ADR1 => XLXI_1_TxBitNo(1),
      O => XLXI_1_iTxBusy_or0000_SW0_O
    );
  XLXI_1_iTxBusy_or0000_SW0_LUT2_L_BUF : X_BUF
    port map (
      I => XLXI_1_iTxBusy_or0000_SW0_O,
      O => XLXI_1_N0
    );
  XLXI_1_iRxBusy_inv1_INV_0 : X_INV
    port map (
      I => XLXI_1_iRxBusy_57,
      O => XLXI_1_iRxBusy_inv
    );
  XLXI_1_iTxBusy_inv1_INV_0 : X_INV
    port map (
      I => XLXI_1_iTxBusy_60,
      O => XLXI_1_iTxBusy_inv
    );
  XLXI_1_Mcount_RxBitNo_xor_0_11_INV_0 : X_INV
    port map (
      I => XLXI_1_RxBitNo(0),
      O => XLXI_1_Result_0_3
    );
  XLXI_1_Mcount_TxBitNo_xor_0_11_INV_0 : X_INV
    port map (
      I => XLXI_1_TxBitNo(0),
      O => XLXI_1_Result_0_2
    );
  XLXI_1_ResRxRdy_DInToggle_not00011_INV_0 : X_INV
    port map (
      I => XLXI_1_ResRxRdy_DInToggle_74,
      O => XLXI_1_ResRxRdy_DInToggle_not0001
    );
  XLXI_1_ResTxStart_DInToggle_not00011_INV_0 : X_INV
    port map (
      I => XLXI_1_ResTxStart_DInToggle_78,
      O => XLXI_1_ResTxStart_DInToggle_not0001
    );
  XLXI_1_Mcount_cntTx_lut_0_INV_0 : X_INV
    port map (
      I => XLXI_1_cntTx(0),
      O => XLXI_1_Mcount_cntTx_lut(0)
    );
  XLXI_1_Mcount_cntRx_lut_0_INV_0 : X_INV
    port map (
      I => XLXI_1_cntRx(0),
      O => XLXI_1_Mcount_cntRx_lut(0)
    );
  XLXI_1_cntTx_or00001 : X_LUT4
    generic map(
      INIT => X"3373"
    )
    port map (
      ADR0 => XLXI_1_cntTx(6),
      ADR1 => XLXI_1_iTxBusy_60,
      ADR2 => XLXI_1_TxBitNo_cmp_eq00008_181,
      ADR3 => XLXI_1_N20,
      O => XLXI_1_cntTx_or0000
    );
  XLXI_1_cntRx_or00001 : X_LUT4
    generic map(
      INIT => X"55D5"
    )
    port map (
      ADR0 => XLXI_1_iRxBusy_57,
      ADR1 => XLXI_1_cntRx(8),
      ADR2 => XLXI_1_N23,
      ADR3 => XLXI_1_N18,
      O => XLXI_1_cntRx_or0000
    );
  XLXI_1_cntRx_or00001_SW0 : X_LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      ADR0 => XLXI_1_cntRx(6),
      ADR1 => XLXI_1_cntRx(5),
      ADR2 => XLXI_1_cntRx(0),
      ADR3 => XLXI_1_cntRx(3),
      O => XLXI_1_N18
    );
  XLXI_1_srTx_mux0000_0_1 : X_LUT4
    generic map(
      INIT => X"F090"
    )
    port map (
      ADR0 => XLXI_1_ResTxStart_prevDIn_77,
      ADR1 => XLXI_1_ResTxStart_qDIn_76,
      ADR2 => XLXI_1_srTx(1),
      ADR3 => XLXI_1_iTxBusy_60,
      O => XLXI_1_srTx_mux0000(0)
    );
  XLXI_1_srTx_mux0000_8_1 : X_LUT4
    generic map(
      INIT => X"FFF9"
    )
    port map (
      ADR0 => XLXI_1_ResTxStart_prevDIn_77,
      ADR1 => XLXI_1_ResTxStart_qDIn_76,
      ADR2 => XLXI_1_iTxBusy_60,
      ADR3 => XLXI_1_inTxDI(7),
      O => XLXI_1_srTx_mux0000(8)
    );
  XLXI_1_srTx_not00011 : X_LUT4
    generic map(
      INIT => X"FF14"
    )
    port map (
      ADR0 => XLXI_1_iTxBusy_60,
      ADR1 => XLXI_1_ResTxStart_prevDIn_77,
      ADR2 => XLXI_1_ResTxStart_qDIn_76,
      ADR3 => XLXI_1_TxBitNo_cmp_eq0000,
      O => XLXI_1_srTx_not0001
    );
  XLXI_1_TxBitNo_cmp_eq000024 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => XLXI_1_cntTx(1),
      ADR1 => XLXI_1_cntTx(7),
      ADR2 => XLXI_1_TxBitNo_cmp_eq00008_181,
      ADR3 => XLXI_1_TxBitNo_cmp_eq000016_182,
      O => XLXI_1_TxBitNo_cmp_eq0000
    );
  XLXI_1_RxBitNo_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => XLXI_1_N21,
      ADR1 => XLXI_1_cntRx(6),
      ADR2 => XLXI_1_N12,
      ADR3 => XLXI_1_cntRx(8),
      O => XLXI_1_RxBitNo_cmp_eq0000_132
    );
  XLXI_1_iRxRdy_cmp_eq0000_SW0_SW0 : X_LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      ADR0 => XLXI_1_cntRx(8),
      ADR1 => XLXI_1_cntRx(6),
      ADR2 => XLXI_1_cntRx(5),
      O => XLXI_1_N10
    );
  XLXI_1_iRxBusy_or0000 : X_LUT4
    generic map(
      INIT => X"BAAA"
    )
    port map (
      ADR0 => BTN_SOUTH_IBUF_195,
      ADR1 => XLXI_1_RxBitNo(2),
      ADR2 => XLXI_1_N8,
      ADR3 => XLXI_1_iRxRdy_cmp_eq0000_178,
      O => XLXI_1_iRxBusy_or0000_56
    );
  XLXI_1_Mcount_cntTx_xor_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntTx(8),
      O => XLXI_1_Mcount_cntTx_xor_8_rt_175,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntRx_xor_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntRx(8),
      O => XLXI_1_Mcount_cntRx_xor_8_rt_158,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntTx_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntTx(7),
      O => XLXI_1_Mcount_cntTx_cy_7_rt_173,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntTx_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntTx(6),
      O => XLXI_1_Mcount_cntTx_cy_6_rt_171,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntTx_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntTx(5),
      O => XLXI_1_Mcount_cntTx_cy_5_rt_169,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntTx_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntTx(4),
      O => XLXI_1_Mcount_cntTx_cy_4_rt_167,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntTx_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntTx(3),
      O => XLXI_1_Mcount_cntTx_cy_3_rt_165,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntTx_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntTx(2),
      O => XLXI_1_Mcount_cntTx_cy_2_rt_163,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntTx_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntTx(1),
      O => XLXI_1_Mcount_cntTx_cy_1_rt_161,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntRx_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntRx(7),
      O => XLXI_1_Mcount_cntRx_cy_7_rt_156,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntRx_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntRx(6),
      O => XLXI_1_Mcount_cntRx_cy_6_rt_154,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntRx_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntRx(5),
      O => XLXI_1_Mcount_cntRx_cy_5_rt_152,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntRx_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntRx(4),
      O => XLXI_1_Mcount_cntRx_cy_4_rt_150,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntRx_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntRx(3),
      O => XLXI_1_Mcount_cntRx_cy_3_rt_148,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntRx_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntRx(2),
      O => XLXI_1_Mcount_cntRx_cy_2_rt_146,
      ADR1 => GND
    );
  XLXI_1_Mcount_cntRx_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => XLXI_1_cntRx(1),
      O => XLXI_1_Mcount_cntRx_cy_1_rt_144,
      ADR1 => GND
    );
  XLXI_1_TxBitNo_cmp_eq000016 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => XLXI_1_cntTx(4),
      ADR1 => XLXI_1_cntTx(5),
      ADR2 => XLXI_1_cntTx(6),
      O => XLXI_1_TxBitNo_cmp_eq000016_182
    );
  XLXI_1_TxBitNo_cmp_eq00008 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => XLXI_1_cntTx(0),
      ADR1 => XLXI_1_cntTx(2),
      ADR2 => XLXI_1_cntTx(3),
      ADR3 => XLXI_1_cntTx(8),
      O => XLXI_1_TxBitNo_cmp_eq00008_181
    );
  XLXI_1_iRxRdy_and00001 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => XLXI_1_iRxRdy_cmp_eq0001,
      ADR1 => XLXI_1_N24,
      O => XLXI_1_iRxRdy
    );
  XLXI_1_srRx_and00001 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_1_N22,
      ADR1 => XLXI_1_iRxRdy_cmp_eq0000_178,
      O => XLXI_1_srRx_and0000
    );
  XLXI_1_iTxBusy_and00001 : X_LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      ADR0 => XLXI_1_iTxBusy_60,
      ADR1 => XLXI_1_ResTxStart_prevDIn_77,
      ADR2 => XLXI_1_ResTxStart_qDIn_76,
      O => XLXI_1_iTxBusy_and0000
    );
  XLXI_1_iTxBusy_or0000 : X_LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      ADR0 => XLXI_1_TxBitNo(0),
      ADR1 => XLXI_1_TxBitNo(3),
      ADR2 => XLXI_1_N0,
      ADR3 => BTN_SOUTH_IBUF_195,
      O => XLXI_1_iTxBusy_or0000_59
    );
  XLXI_1_srTx_mux0000_1_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_1_iTxBusy_and0000,
      ADR1 => XLXI_1_srTx(2),
      ADR2 => XLXI_1_inTxDI(0),
      O => XLXI_1_srTx_mux0000(1)
    );
  XLXI_1_srTx_mux0000_2_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_1_iTxBusy_and0000,
      ADR1 => XLXI_1_srTx(3),
      ADR2 => XLXI_1_inTxDI(1),
      O => XLXI_1_srTx_mux0000(2)
    );
  XLXI_1_srTx_mux0000_3_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_1_iTxBusy_and0000,
      ADR1 => XLXI_1_srTx(4),
      ADR2 => XLXI_1_inTxDI(2),
      O => XLXI_1_srTx_mux0000(3)
    );
  XLXI_1_srTx_mux0000_4_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_1_iTxBusy_and0000,
      ADR1 => XLXI_1_srTx(5),
      ADR2 => XLXI_1_inTxDI(3),
      O => XLXI_1_srTx_mux0000(4)
    );
  XLXI_1_srTx_mux0000_5_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_1_iTxBusy_and0000,
      ADR1 => XLXI_1_srTx(6),
      ADR2 => XLXI_1_inTxDI(4),
      O => XLXI_1_srTx_mux0000(5)
    );
  XLXI_1_srTx_mux0000_6_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_1_iTxBusy_and0000,
      ADR1 => XLXI_1_srTx(7),
      ADR2 => XLXI_1_inTxDI(5),
      O => XLXI_1_srTx_mux0000(6)
    );
  XLXI_1_srTx_mux0000_7_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => XLXI_1_iTxBusy_and0000,
      ADR1 => XLXI_1_srTx(8),
      ADR2 => XLXI_1_inTxDI(6),
      O => XLXI_1_srTx_mux0000(7)
    );
  XLXI_1_ResTxBusy_BusyExt_and00001 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_1_ResTxBusy_qBusyExt_80,
      ADR1 => XLXI_1_ResTxBusy_prevBusyExt_81,
      O => XLXI_1_ResTxBusy_BusyExt_and0000
    );
  XLXI_1_iRxBusy_and00011 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => XLXI_1_iRxBusy_57,
      ADR1 => RS232_RxD_IBUF_205,
      O => XLXI_1_iRxBusy_not0001_inv
    );
  XLXI_1_Mcount_RxBitNo_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      ADR0 => XLXI_1_RxBitNo(2),
      ADR1 => XLXI_1_RxBitNo(3),
      ADR2 => XLXI_1_RxBitNo(1),
      ADR3 => XLXI_1_RxBitNo(0),
      O => XLXI_1_Result_3_3
    );
  XLXI_1_Mcount_TxBitNo_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      ADR0 => XLXI_1_TxBitNo(2),
      ADR1 => XLXI_1_TxBitNo(3),
      ADR2 => XLXI_1_TxBitNo(1),
      ADR3 => XLXI_1_TxBitNo(0),
      O => XLXI_1_Result_3_2
    );
  XLXI_1_Mcount_RxBitNo_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => XLXI_1_RxBitNo(2),
      ADR1 => XLXI_1_RxBitNo(0),
      ADR2 => XLXI_1_RxBitNo(1),
      O => XLXI_1_Result_2_3
    );
  XLXI_1_Mcount_TxBitNo_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => XLXI_1_TxBitNo(2),
      ADR1 => XLXI_1_TxBitNo(0),
      ADR2 => XLXI_1_TxBitNo(1),
      O => XLXI_1_Result_2_2
    );
  XLXI_1_Mcount_RxBitNo_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => XLXI_1_RxBitNo(1),
      ADR1 => XLXI_1_RxBitNo(0),
      O => XLXI_1_Result_1_3
    );
  XLXI_1_Mcount_TxBitNo_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => XLXI_1_TxBitNo(1),
      ADR1 => XLXI_1_TxBitNo(0),
      O => XLXI_1_Result_1_2
    );
  XLXI_1_ResRxRdy_Mxor_DOut_Result1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => XLXI_1_ResRxRdy_prevDIn_73,
      ADR1 => XLXI_1_ResRxRdy_qDIn_72,
      O => XLXI_1_RxRdy
    );
  XLXI_1_inTxDI_and00001 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => XLXI_1_iTxBusy_60,
      ADR1 => XLXI_2_state_FSM_FFd1_232,
      O => XLXI_1_inTxDI_and0000
    );
  XLXI_1_Mcount_cntTx_xor_8_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntTx_cy(7),
      I1 => XLXI_1_Mcount_cntTx_xor_8_rt_175,
      O => XLXI_1_Result_8_1
    );
  XLXI_1_Mcount_cntTx_xor_7_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntTx_cy(6),
      I1 => XLXI_1_Mcount_cntTx_cy_7_rt_173,
      O => XLXI_1_Result_7_1
    );
  XLXI_1_Mcount_cntTx_cy_7_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntTx_cy(6),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntTx_cy_7_rt_173,
      O => XLXI_1_Mcount_cntTx_cy(7)
    );
  XLXI_1_Mcount_cntTx_xor_6_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntTx_cy(5),
      I1 => XLXI_1_Mcount_cntTx_cy_6_rt_171,
      O => XLXI_1_Result_6_1
    );
  XLXI_1_Mcount_cntTx_cy_6_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntTx_cy(5),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntTx_cy_6_rt_171,
      O => XLXI_1_Mcount_cntTx_cy(6)
    );
  XLXI_1_Mcount_cntTx_xor_5_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntTx_cy(4),
      I1 => XLXI_1_Mcount_cntTx_cy_5_rt_169,
      O => XLXI_1_Result_5_1
    );
  XLXI_1_Mcount_cntTx_cy_5_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntTx_cy(4),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntTx_cy_5_rt_169,
      O => XLXI_1_Mcount_cntTx_cy(5)
    );
  XLXI_1_Mcount_cntTx_xor_4_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntTx_cy(3),
      I1 => XLXI_1_Mcount_cntTx_cy_4_rt_167,
      O => XLXI_1_Result_4_1
    );
  XLXI_1_Mcount_cntTx_cy_4_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntTx_cy(3),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntTx_cy_4_rt_167,
      O => XLXI_1_Mcount_cntTx_cy(4)
    );
  XLXI_1_Mcount_cntTx_xor_3_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntTx_cy(2),
      I1 => XLXI_1_Mcount_cntTx_cy_3_rt_165,
      O => XLXI_1_Result_3_1
    );
  XLXI_1_Mcount_cntTx_cy_3_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntTx_cy(2),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntTx_cy_3_rt_165,
      O => XLXI_1_Mcount_cntTx_cy(3)
    );
  XLXI_1_Mcount_cntTx_xor_2_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntTx_cy(1),
      I1 => XLXI_1_Mcount_cntTx_cy_2_rt_163,
      O => XLXI_1_Result_2_1
    );
  XLXI_1_Mcount_cntTx_cy_2_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntTx_cy(1),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntTx_cy_2_rt_163,
      O => XLXI_1_Mcount_cntTx_cy(2)
    );
  XLXI_1_Mcount_cntTx_xor_1_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntTx_cy(0),
      I1 => XLXI_1_Mcount_cntTx_cy_1_rt_161,
      O => XLXI_1_Result_1_1
    );
  XLXI_1_Mcount_cntTx_cy_1_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntTx_cy(0),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntTx_cy_1_rt_161,
      O => XLXI_1_Mcount_cntTx_cy(1)
    );
  XLXI_1_Mcount_cntTx_xor_0_Q : X_XOR2
    port map (
      I0 => XLXI_1_N2,
      I1 => XLXI_1_Mcount_cntTx_lut(0),
      O => XLXI_1_Result_0_1
    );
  XLXI_1_Mcount_cntTx_cy_0_Q : X_MUX2
    port map (
      IB => XLXI_1_N2,
      IA => XLXI_1_N1,
      SEL => XLXI_1_Mcount_cntTx_lut(0),
      O => XLXI_1_Mcount_cntTx_cy(0)
    );
  XLXI_1_Mcount_cntRx_xor_8_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntRx_cy(7),
      I1 => XLXI_1_Mcount_cntRx_xor_8_rt_158,
      O => XLXI_1_Result(8)
    );
  XLXI_1_Mcount_cntRx_xor_7_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntRx_cy(6),
      I1 => XLXI_1_Mcount_cntRx_cy_7_rt_156,
      O => XLXI_1_Result(7)
    );
  XLXI_1_Mcount_cntRx_cy_7_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntRx_cy(6),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntRx_cy_7_rt_156,
      O => XLXI_1_Mcount_cntRx_cy(7)
    );
  XLXI_1_Mcount_cntRx_xor_6_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntRx_cy(5),
      I1 => XLXI_1_Mcount_cntRx_cy_6_rt_154,
      O => XLXI_1_Result(6)
    );
  XLXI_1_Mcount_cntRx_cy_6_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntRx_cy(5),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntRx_cy_6_rt_154,
      O => XLXI_1_Mcount_cntRx_cy(6)
    );
  XLXI_1_Mcount_cntRx_xor_5_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntRx_cy(4),
      I1 => XLXI_1_Mcount_cntRx_cy_5_rt_152,
      O => XLXI_1_Result(5)
    );
  XLXI_1_Mcount_cntRx_cy_5_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntRx_cy(4),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntRx_cy_5_rt_152,
      O => XLXI_1_Mcount_cntRx_cy(5)
    );
  XLXI_1_Mcount_cntRx_xor_4_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntRx_cy(3),
      I1 => XLXI_1_Mcount_cntRx_cy_4_rt_150,
      O => XLXI_1_Result(4)
    );
  XLXI_1_Mcount_cntRx_cy_4_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntRx_cy(3),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntRx_cy_4_rt_150,
      O => XLXI_1_Mcount_cntRx_cy(4)
    );
  XLXI_1_Mcount_cntRx_xor_3_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntRx_cy(2),
      I1 => XLXI_1_Mcount_cntRx_cy_3_rt_148,
      O => XLXI_1_Result(3)
    );
  XLXI_1_Mcount_cntRx_cy_3_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntRx_cy(2),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntRx_cy_3_rt_148,
      O => XLXI_1_Mcount_cntRx_cy(3)
    );
  XLXI_1_Mcount_cntRx_xor_2_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntRx_cy(1),
      I1 => XLXI_1_Mcount_cntRx_cy_2_rt_146,
      O => XLXI_1_Result(2)
    );
  XLXI_1_Mcount_cntRx_cy_2_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntRx_cy(1),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntRx_cy_2_rt_146,
      O => XLXI_1_Mcount_cntRx_cy(2)
    );
  XLXI_1_Mcount_cntRx_xor_1_Q : X_XOR2
    port map (
      I0 => XLXI_1_Mcount_cntRx_cy(0),
      I1 => XLXI_1_Mcount_cntRx_cy_1_rt_144,
      O => XLXI_1_Result(1)
    );
  XLXI_1_Mcount_cntRx_cy_1_Q : X_MUX2
    port map (
      IB => XLXI_1_Mcount_cntRx_cy(0),
      IA => XLXI_1_N2,
      SEL => XLXI_1_Mcount_cntRx_cy_1_rt_144,
      O => XLXI_1_Mcount_cntRx_cy(1)
    );
  XLXI_1_Mcount_cntRx_xor_0_Q : X_XOR2
    port map (
      I0 => XLXI_1_N2,
      I1 => XLXI_1_Mcount_cntRx_lut(0),
      O => XLXI_1_Result(0)
    );
  XLXI_1_Mcount_cntRx_cy_0_Q : X_MUX2
    port map (
      IB => XLXI_1_N2,
      IA => XLXI_1_N1,
      SEL => XLXI_1_Mcount_cntRx_lut(0),
      O => XLXI_1_Mcount_cntRx_cy(0)
    );
  XLXI_1_RxBitNo_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_RxBitNo_cmp_eq0000_132,
      I => XLXI_1_Result_3_3,
      SRST => XLXI_1_iRxBusy_inv,
      O => XLXI_1_RxBitNo(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_RxBitNo_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_RxBitNo_cmp_eq0000_132,
      I => XLXI_1_Result_2_3,
      SRST => XLXI_1_iRxBusy_inv,
      O => XLXI_1_RxBitNo(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_RxBitNo_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_RxBitNo_cmp_eq0000_132,
      I => XLXI_1_Result_1_3,
      SRST => XLXI_1_iRxBusy_inv,
      O => XLXI_1_RxBitNo(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_RxBitNo_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_RxBitNo_cmp_eq0000_132,
      I => XLXI_1_Result_0_3,
      SRST => XLXI_1_iRxBusy_inv,
      O => XLXI_1_RxBitNo(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_TxBitNo_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_TxBitNo_cmp_eq0000,
      I => XLXI_1_Result_3_2,
      SRST => XLXI_1_iTxBusy_inv,
      O => XLXI_1_TxBitNo(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_TxBitNo_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_TxBitNo_cmp_eq0000,
      I => XLXI_1_Result_2_2,
      SRST => XLXI_1_iTxBusy_inv,
      O => XLXI_1_TxBitNo(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_TxBitNo_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_TxBitNo_cmp_eq0000,
      I => XLXI_1_Result_1_2,
      SRST => XLXI_1_iTxBusy_inv,
      O => XLXI_1_TxBitNo(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_TxBitNo_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_TxBitNo_cmp_eq0000,
      I => XLXI_1_Result_0_2,
      SRST => XLXI_1_iTxBusy_inv,
      O => XLXI_1_TxBitNo(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntTx_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result_8_1,
      SRST => XLXI_1_cntTx_or0000,
      O => XLXI_1_cntTx(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntTx_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result_7_1,
      SRST => XLXI_1_cntTx_or0000,
      O => XLXI_1_cntTx(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntTx_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result_6_1,
      SRST => XLXI_1_cntTx_or0000,
      O => XLXI_1_cntTx(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntTx_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result_5_1,
      SRST => XLXI_1_cntTx_or0000,
      O => XLXI_1_cntTx(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntTx_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result_4_1,
      SRST => XLXI_1_cntTx_or0000,
      O => XLXI_1_cntTx(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntTx_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result_3_1,
      SRST => XLXI_1_cntTx_or0000,
      O => XLXI_1_cntTx(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntTx_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result_2_1,
      SRST => XLXI_1_cntTx_or0000,
      O => XLXI_1_cntTx(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntTx_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result_1_1,
      SRST => XLXI_1_cntTx_or0000,
      O => XLXI_1_cntTx(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntTx_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result_0_1,
      SRST => XLXI_1_cntTx_or0000,
      O => XLXI_1_cntTx(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntRx_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result(8),
      SRST => XLXI_1_cntRx_or0000,
      O => XLXI_1_cntRx(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntRx_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result(7),
      SRST => XLXI_1_cntRx_or0000,
      O => XLXI_1_cntRx(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntRx_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result(6),
      SRST => XLXI_1_cntRx_or0000,
      O => XLXI_1_cntRx(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntRx_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result(5),
      SRST => XLXI_1_cntRx_or0000,
      O => XLXI_1_cntRx(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntRx_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result(4),
      SRST => XLXI_1_cntRx_or0000,
      O => XLXI_1_cntRx(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntRx_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result(3),
      SRST => XLXI_1_cntRx_or0000,
      O => XLXI_1_cntRx(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntRx_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result(2),
      SRST => XLXI_1_cntRx_or0000,
      O => XLXI_1_cntRx(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntRx_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result(1),
      SRST => XLXI_1_cntRx_or0000,
      O => XLXI_1_cntRx(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_cntRx_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_Result(0),
      SRST => XLXI_1_cntRx_or0000,
      O => XLXI_1_cntRx(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_ResTxBusy_BusyExt : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_ResTxBusy_BusyExt_and0000,
      I => XLXI_1_N2,
      SRST => BTN_SOUTH_IBUF_195,
      SSET => XLXI_2_state_FSM_FFd1_232,
      O => XLXI_1_TxBusy,
      SET => GND,
      RST => GND
    );
  XLXI_1_ResTxBusy_qBusyInt : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_iTxBusy_60,
      O => XLXI_1_ResTxBusy_qBusyInt_82,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_1_ResTxBusy_qBusyExt : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_ResTxBusy_qBusyInt_82,
      O => XLXI_1_ResTxBusy_qBusyExt_80,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_1_ResTxBusy_prevBusyExt : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_ResTxBusy_qBusyExt_80,
      O => XLXI_1_ResTxBusy_prevBusyExt_81,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_1_ResTxStart_DInToggle : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_2_state_FSM_FFd1_232,
      I => XLXI_1_ResTxStart_DInToggle_not0001,
      O => XLXI_1_ResTxStart_DInToggle_78,
      SET => GND,
      RST => GND
    );
  XLXI_1_ResTxStart_qDIn : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_ResTxStart_DInToggle_78,
      O => XLXI_1_ResTxStart_qDIn_76,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_1_ResTxStart_prevDIn : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_ResTxStart_qDIn_76,
      O => XLXI_1_ResTxStart_prevDIn_77,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_1_ResRxRdy_DInToggle : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_iRxRdy,
      I => XLXI_1_ResRxRdy_DInToggle_not0001,
      O => XLXI_1_ResRxRdy_DInToggle_74,
      SET => GND,
      RST => GND
    );
  XLXI_1_ResRxRdy_qDIn : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_ResRxRdy_DInToggle_74,
      O => XLXI_1_ResRxRdy_qDIn_72,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_1_ResRxRdy_prevDIn : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      I => XLXI_1_ResRxRdy_qDIn_72,
      O => XLXI_1_ResRxRdy_prevDIn_73,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  XLXI_1_XST_GND : X_ZERO
    port map (
      O => XLXI_1_N2
    );
  XLXI_1_RxDO_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_iRxRdy,
      I => XLXI_1_srRx(7),
      O => XLXI_1_RxDO(7),
      SET => GND,
      RST => GND
    );
  XLXI_1_RxDO_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_iRxRdy,
      I => XLXI_1_srRx(6),
      O => XLXI_1_RxDO(6),
      SET => GND,
      RST => GND
    );
  XLXI_1_RxDO_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_iRxRdy,
      I => XLXI_1_srRx(5),
      O => XLXI_1_RxDO(5),
      SET => GND,
      RST => GND
    );
  XLXI_1_RxDO_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_iRxRdy,
      I => XLXI_1_srRx(4),
      O => XLXI_1_RxDO(4),
      SET => GND,
      RST => GND
    );
  XLXI_1_RxDO_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_iRxRdy,
      I => XLXI_1_srRx(3),
      O => XLXI_1_RxDO(3),
      SET => GND,
      RST => GND
    );
  XLXI_1_RxDO_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_iRxRdy,
      I => XLXI_1_srRx(2),
      O => XLXI_1_RxDO(2),
      SET => GND,
      RST => GND
    );
  XLXI_1_RxDO_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_iRxRdy,
      I => XLXI_1_srRx(1),
      O => XLXI_1_RxDO(1),
      SET => GND,
      RST => GND
    );
  XLXI_1_RxDO_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_iRxRdy,
      I => XLXI_1_srRx(0),
      O => XLXI_1_RxDO(0),
      SET => GND,
      RST => GND
    );
  XLXI_1_srRx_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srRx_and0000,
      I => RS232_RxD_IBUF_205,
      O => XLXI_1_srRx(7),
      SET => GND,
      RST => GND
    );
  XLXI_1_srRx_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srRx_and0000,
      I => XLXI_1_srRx(7),
      O => XLXI_1_srRx(6),
      SET => GND,
      RST => GND
    );
  XLXI_1_srRx_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srRx_and0000,
      I => XLXI_1_srRx(6),
      O => XLXI_1_srRx(5),
      SET => GND,
      RST => GND
    );
  XLXI_1_srRx_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srRx_and0000,
      I => XLXI_1_srRx(5),
      O => XLXI_1_srRx(4),
      SET => GND,
      RST => GND
    );
  XLXI_1_srRx_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srRx_and0000,
      I => XLXI_1_srRx(4),
      O => XLXI_1_srRx(3),
      SET => GND,
      RST => GND
    );
  XLXI_1_srRx_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srRx_and0000,
      I => XLXI_1_srRx(3),
      O => XLXI_1_srRx(2),
      SET => GND,
      RST => GND
    );
  XLXI_1_srRx_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srRx_and0000,
      I => XLXI_1_srRx(2),
      O => XLXI_1_srRx(1),
      SET => GND,
      RST => GND
    );
  XLXI_1_srRx_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srRx_and0000,
      I => XLXI_1_srRx(1),
      O => XLXI_1_srRx(0),
      SET => GND,
      RST => GND
    );
  XLXI_1_iTxBusy : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_iTxBusy_and0000,
      I => XLXI_1_N1,
      SRST => XLXI_1_iTxBusy_or0000_59,
      O => XLXI_1_iTxBusy_60,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_iRxBusy : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_iRxBusy_not0001_inv,
      I => XLXI_1_N1,
      SRST => XLXI_1_iRxBusy_or0000_56,
      O => XLXI_1_iRxBusy_57,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  XLXI_1_inTxDI_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_inTxDI_and0000,
      I => XLXI_2_shift_register_data(8),
      O => XLXI_1_inTxDI(7),
      SET => GND,
      RST => GND
    );
  XLXI_1_inTxDI_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_inTxDI_and0000,
      I => XLXI_2_shift_register_data(7),
      O => XLXI_1_inTxDI(6),
      SET => GND,
      RST => GND
    );
  XLXI_1_inTxDI_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_inTxDI_and0000,
      I => XLXI_2_shift_register_data(6),
      O => XLXI_1_inTxDI(5),
      SET => GND,
      RST => GND
    );
  XLXI_1_inTxDI_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_inTxDI_and0000,
      I => XLXI_2_shift_register_data(5),
      O => XLXI_1_inTxDI(4),
      SET => GND,
      RST => GND
    );
  XLXI_1_inTxDI_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_inTxDI_and0000,
      I => XLXI_2_shift_register_data(4),
      O => XLXI_1_inTxDI(3),
      SET => GND,
      RST => GND
    );
  XLXI_1_inTxDI_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_inTxDI_and0000,
      I => XLXI_2_shift_register_data(3),
      O => XLXI_1_inTxDI(2),
      SET => GND,
      RST => GND
    );
  XLXI_1_inTxDI_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_inTxDI_and0000,
      I => XLXI_2_shift_register_data(2),
      O => XLXI_1_inTxDI(1),
      SET => GND,
      RST => GND
    );
  XLXI_1_inTxDI_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_inTxDI_and0000,
      I => XLXI_2_shift_register_data(1),
      O => XLXI_1_inTxDI(0),
      SET => GND,
      RST => GND
    );
  XLXI_1_srTx_8 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srTx_not0001,
      I => XLXI_1_srTx_mux0000(8),
      O => XLXI_1_srTx(8),
      SET => GND,
      RST => GND
    );
  XLXI_1_srTx_7 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srTx_not0001,
      I => XLXI_1_srTx_mux0000(7),
      O => XLXI_1_srTx(7),
      SET => GND,
      RST => GND
    );
  XLXI_1_srTx_6 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srTx_not0001,
      I => XLXI_1_srTx_mux0000(6),
      O => XLXI_1_srTx(6),
      SET => GND,
      RST => GND
    );
  XLXI_1_srTx_5 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srTx_not0001,
      I => XLXI_1_srTx_mux0000(5),
      O => XLXI_1_srTx(5),
      SET => GND,
      RST => GND
    );
  XLXI_1_srTx_4 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srTx_not0001,
      I => XLXI_1_srTx_mux0000(4),
      O => XLXI_1_srTx(4),
      SET => GND,
      RST => GND
    );
  XLXI_1_srTx_3 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srTx_not0001,
      I => XLXI_1_srTx_mux0000(3),
      O => XLXI_1_srTx(3),
      SET => GND,
      RST => GND
    );
  XLXI_1_srTx_2 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srTx_not0001,
      I => XLXI_1_srTx_mux0000(2),
      O => XLXI_1_srTx(2),
      SET => GND,
      RST => GND
    );
  XLXI_1_srTx_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srTx_not0001,
      I => XLXI_1_srTx_mux0000(1),
      O => XLXI_1_srTx(1),
      SET => GND,
      RST => GND
    );
  XLXI_1_srTx_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      CE => XLXI_1_srTx_not0001,
      I => XLXI_1_srTx_mux0000(0),
      O => RS232_TxD_OBUF_207,
      SET => GND,
      RST => GND
    );
  XLXI_1_XST_VCC : X_ONE
    port map (
      O => XLXI_1_N1
    );
  RS232_TxD_OBUF : X_OBUF
    port map (
      I => RS232_TxD_OBUF_207,
      O => RS232_TxD
    );
  NlwBlock_PS2_RX_SCH_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_PS2_RX_SCH_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

