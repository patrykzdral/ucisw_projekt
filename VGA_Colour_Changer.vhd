----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:31:48 05/16/2018 
-- Design Name: 
-- Module Name:    VGA_Colour_Changer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGA_Colour_Changer is
    Port ( CLK : in  STD_LOGIC;
		   IS_ERROR : in  STD_LOGIC;
		   VGA_RGB : in  STD_LOGIC;
           VGA_R : out  STD_LOGIC;
           VGA_G : out  STD_LOGIC;
           VGA_B : out  STD_LOGIC);
end VGA_Colour_Changer;

architecture Behavioral of VGA_Colour_Changer is

begin
  process ( Clk, IS_ERROR )
  begin
    if rising_edge( Clk) then
      if IS_ERROR = '0' then
		VGA_R  <= VGA_RGB;
		VGA_G  <= VGA_RGB;
		VGA_B  <= VGA_RGB;
      elsif IS_ERROR = '1' then
        VGA_R  <= VGA_RGB;
		VGA_G  <= '0';
		VGA_B  <= '0';
--		VGA_G  <= not VGA_RGB;
--		VGA_B  <= not VGA_RGB;
      end if;
    end if;
  end process;
 

end Behavioral;

