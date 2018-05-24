LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY VGA_Colour_Changer IS
	PORT (
		CLK      : IN STD_LOGIC;
		IS_ERROR : IN STD_LOGIC;
		VGA_RGB  : IN STD_LOGIC;
		VGA_R    : OUT STD_LOGIC;
		VGA_G    : OUT STD_LOGIC;
		VGA_B    : OUT STD_LOGIC);
END VGA_Colour_Changer;

ARCHITECTURE Behavioral OF VGA_Colour_Changer IS
BEGIN
	PROCESS (IS_ERROR, CLK)
	BEGIN
      IF rising_edge(CLK) THEN
			IF IS_ERROR = '1' THEN
				VGA_R <= VGA_RGB;
				VGA_G <= VGA_RGB;
				VGA_B <= VGA_RGB;
			ELSIF IS_ERROR = '0' THEN
				VGA_R <= VGA_RGB;
				VGA_G <= '0';
				VGA_B <= '0';
			END IF;
         END IF;
	END PROCESS;
END Behavioral;