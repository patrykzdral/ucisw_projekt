--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : TYPE_LEARNER_SCH.vhf
-- /___/   /\     Timestamp : 05/16/2018 16:11:38
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/NEW/learner/TYPE_LEARNER_SCH.vhf -w C:/Users/lab/Desktop/NEW/learner/TYPE_LEARNER_SCH.sch
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
   signal XLXN_1                        : std_logic_vector (7 downto 0);
   signal XLXN_2                        : std_logic;
   signal XLXN_3                        : std_logic;
   signal XLXN_4                        : std_logic;
   signal XLXN_25                       : std_logic;
   signal XLXN_26                       : std_logic_vector (7 downto 0);
   signal XLXN_27                       : std_logic;
   signal XLXN_33                       : std_logic;
   signal XLXN_34                       : std_logic;
   signal XLXN_35                       : std_logic;
   signal XLXI_2_Goto00_openSignal      : std_logic;
   signal XLXI_2_ScrollClear_openSignal : std_logic;
   signal XLXI_2_ScrollEn_openSignal    : std_logic;
   component FSM_String
      port ( Clk       : in    std_logic; 
             Reset     : in    std_logic; 
             LCD_Busy  : in    std_logic; 
             PS2_DoRdy : in    std_logic; 
             PS2_Input : in    std_logic_vector (7 downto 0); 
             LCD_WE    : out   std_logic; 
             LCD_DnI   : out   std_logic; 
             New_Line  : out   std_logic; 
             LCD_DI    : out   std_logic_vector (7 downto 0));
   end component;
   
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
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
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
   
begin
   XLXI_1 : FSM_String
      port map (Clk=>Clk_50MHz,
                LCD_Busy=>XLXN_34,
                PS2_DoRdy=>XLXN_25,
                PS2_Input(7 downto 0)=>XLXN_26(7 downto 0),
                Reset=>BTN_SOUTH,
                LCD_DI(7 downto 0)=>XLXN_1(7 downto 0),
                LCD_DnI=>XLXN_33,
                LCD_WE=>XLXN_2,
                New_Line=>XLXN_27);
   
   XLXI_2 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_1(7 downto 0),
                Char_WE=>XLXN_2,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXN_3,
                Goto00=>XLXI_2_Goto00_openSignal,
                Home=>XLXN_4,
                NewLine=>XLXN_27,
                ScrollClear=>XLXI_2_ScrollClear_openSignal,
                ScrollEn=>XLXI_2_ScrollEn_openSignal,
                Busy=>XLXN_34,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_35,
                VGA_VS=>VGA_VS);
   
   XLXI_3 : VCC
      port map (P=>XLXN_3);
   
   XLXI_4 : GND
      port map (G=>XLXN_4);
   
   XLXI_8 : PS2_RX
      port map (CLK=>Clk_50MHz,
                PS2_CLK=>PS2_CLK,
                PS2_DATA=>PS2_DATA,
                DO(7 downto 0)=>XLXN_26(7 downto 0),
                DO_RDY=>XLXN_25);
   
   XLXI_9 : VGA_Colour_Changer
      port map (CLK=>Clk_50MHz,
                IS_ERROR=>XLXN_33,
                VGA_RGB=>XLXN_35,
                VGA_B=>VGA_B,
                VGA_G=>VGA_G,
                VGA_R=>VGA_R);
   
end BEHAVIORAL;


