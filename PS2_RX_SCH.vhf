--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : PS2_RX_SCH.vhf
-- /___/   /\     Timestamp : 04/13/2018 12:12:01
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/learner/learner/learner/PS2_RX_SCH.vhf -w C:/Users/lab/Desktop/learner/learner/learner/PS2_RX_SCH.sch
--Design Name: PS2_RX_SCH
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity PS2_RX_SCH is
   port ( BTN_SOUTH : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          RS232_RxD : in    std_logic; 
          RS232_TxD : out   std_logic);
end PS2_RX_SCH;

architecture BEHAVIORAL of PS2_RX_SCH is
   signal XLXN_4    : std_logic;
   signal XLXN_5    : std_logic_vector (7 downto 0);
   component RS232
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             RS232_RxD : in    std_logic; 
             TxStart   : in    std_logic; 
             TxDI      : in    std_logic_vector (7 downto 0); 
             TxBusy    : out   std_logic; 
             RxRdy     : out   std_logic; 
             RS232_TxD : out   std_logic; 
             RxDO      : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component PS2_RX
      port ( PS2_CLK  : in    std_logic; 
             PS2_DATA : in    std_logic; 
             CLK      : in    std_logic; 
             DO_RDY   : out   std_logic; 
             DO       : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : RS232
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                Reset=>BTN_SOUTH,
                RS232_RxD=>RS232_RxD,
                TxDI(7 downto 0)=>XLXN_5(7 downto 0),
                TxStart=>XLXN_4,
                RS232_TxD=>RS232_TxD,
                RxDO=>open,
                RxRdy=>open,
                TxBusy=>open);
   
   XLXI_2 : PS2_RX
      port map (CLK=>Clk_50MHz,
                PS2_CLK=>PS2_Clk,
                PS2_DATA=>PS2_Data,
                DO(7 downto 0)=>XLXN_5(7 downto 0),
                DO_RDY=>XLXN_4);
   
end BEHAVIORAL;


