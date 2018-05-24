--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:02:49 05/24/2018
-- Design Name:   
-- Module Name:   C:/Users/Patryk Zdral/Downloads/ucisw_projekt-16.05.2018_refactoring/VGA_Colour_Changer_TB.vhd
-- Project Name:  learner
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGA_Colour_Changer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY VGA_Colour_Changer_TB IS
END VGA_Colour_Changer_TB;
 
ARCHITECTURE behavior OF VGA_Colour_Changer_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGA_Colour_Changer
    PORT(
         CLK : IN  std_logic;
         IS_ERROR : IN  std_logic;
         VGA_RGB : IN  std_logic;
         VGA_R : OUT  std_logic;
         VGA_G : OUT  std_logic;
         VGA_B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal IS_ERROR : std_logic := '0';
   signal VGA_RGB : std_logic := '1';

 	--Outputs
   signal VGA_R : std_logic;
   signal VGA_G : std_logic;
   signal VGA_B : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 50 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGA_Colour_Changer PORT MAP (
          CLK => CLK,
          IS_ERROR => IS_ERROR,
          VGA_RGB => VGA_RGB,
          VGA_R => VGA_R,
          VGA_G => VGA_G,
          VGA_B => VGA_B
        );

 

   stim_proc: PROCESS
		procedure Change is
		begin
		  for i in 0 to 10 loop
		   IS_ERROR <= '0', '1' after 30 us;
			wait for 5 us;
			CLK <= '0', '1' after 20 us;
			wait for 95 us;
		  end loop;
		end procedure;
	BEGIN
		wait for 15 us;
		Change;
	END PROCESS;

END;
