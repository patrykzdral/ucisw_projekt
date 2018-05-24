--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : TYPE_LEARNER_SCH.vhf
-- /___/   /\     Timestamp : 05/24/2018 02:44:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl D:/mrfarinq/Projects/Xilinx/projects/zaliczenie/uciswowe_gowno/TYPE_LEARNER_SCH.vhf -w D:/mrfarinq/Projects/Xilinx/projects/zaliczenie/uciswowe_gowno/TYPE_LEARNER_SCH.sch
--Design Name: TYPE_LEARNER_SCH
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

entity TYPE_LEARNER_SCH is
   port ( BTN_SOUTH : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          PS2_CLK   : in    std_logic; 
          PS2_DATA  : in    std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end TYPE_LEARNER_SCH;

architecture BEHAVIORAL of TYPE_LEARNER_SCH is
   attribute BOX_TYPE   : string ;
   signal XLXN_14                        : std_logic;
   signal XLXN_15                        : std_logic_vector (7 downto 0);
   signal XLXN_18                        : std_logic;
   signal XLXN_20                        : std_logic_vector (7 downto 0);
   signal XLXN_26                        : std_logic;
   signal XLXN_27                        : std_logic;
   signal XLXN_28                        : std_logic;
   signal XLXN_31                        : std_logic;
   signal XLXN_32                        : std_logic;
   signal XLXI_15_Goto00_openSignal      : std_logic;
   signal XLXI_15_ScrollClear_openSignal : std_logic;
   signal XLXI_15_ScrollEn_openSignal    : std_logic;
   component PS2_RX
      port ( PS2_CLK  : in    std_logic; 
             PS2_DATA : in    std_logic; 
             CLK      : in    std_logic; 
             DO_RDY   : out   std_logic; 
             DO       : out   std_logic_vector (7 downto 0));
   end component;
   
   component VGA_Colour_Changer
      port ( CLK      : in    std_logic; 
             IS_ERROR : in    std_logic; 
             VGA_RGB  : in    std_logic; 
             VGA_R    : out   std_logic; 
             VGA_G    : out   std_logic; 
             VGA_B    : out   std_logic);
   end component;
   
   component FSM_String
      port ( CLK             : in    std_logic; 
             RESET           : in    std_logic; 
             PS2_INPUT       : in    std_logic_vector (7 downto 0); 
             VGA_WE          : out   std_logic; 
             VGA_COLOUR_MODE : out   std_logic; 
             VGA_NEW_LINE    : out   std_logic; 
             VGA_DI          : out   std_logic_vector (7 downto 0); 
             PS2_RDY         : in    std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
begin
   XLXI_8 : PS2_RX
      port map (CLK=>PS2_CLK,
                PS2_CLK=>Clk_50MHz,
                PS2_DATA=>PS2_DATA,
                DO(7 downto 0)=>XLXN_15(7 downto 0),
                DO_RDY=>XLXN_14);
   
   XLXI_9 : VGA_Colour_Changer
      port map (CLK=>Clk_50MHz,
                IS_ERROR=>XLXN_26,
                VGA_RGB=>XLXN_31,
                VGA_B=>VGA_B,
                VGA_G=>VGA_G,
                VGA_R=>VGA_R);
   
   XLXI_10 : FSM_String
      port map (CLK=>Clk_50MHz,
                PS2_INPUT(7 downto 0)=>XLXN_15(7 downto 0),
                PS2_RDY=>XLXN_14,
                RESET=>BTN_SOUTH,
                VGA_COLOUR_MODE=>XLXN_26,
                VGA_DI(7 downto 0)=>XLXN_20(7 downto 0),
                VGA_NEW_LINE=>XLXN_32,
                VGA_WE=>XLXN_18);
   
   XLXI_12 : VCC
      port map (P=>XLXN_27);
   
   XLXI_14 : GND
      port map (G=>XLXN_28);
   
   XLXI_15 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_20(7 downto 0),
                Char_WE=>XLXN_18,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXN_27,
                Goto00=>XLXI_15_Goto00_openSignal,
                Home=>XLXN_28,
                NewLine=>XLXN_32,
                ScrollClear=>XLXI_15_ScrollClear_openSignal,
                ScrollEn=>XLXI_15_ScrollEn_openSignal,
                Busy=>open,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_31,
                VGA_VS=>VGA_VS);
   
end BEHAVIORAL;


