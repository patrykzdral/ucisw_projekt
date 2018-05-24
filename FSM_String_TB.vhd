--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:42:48 05/24/2018
-- Design Name:   
-- Module Name:   C:/Users/Patryk Zdral/Downloads/ucisw_projekt-16.05.2018_refactoring/FSM_String_TB.vhd
-- Project Name:  learner
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSM_String
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
 
ENTITY FSM_String_TB IS
END FSM_String_TB;
 
ARCHITECTURE behavior OF FSM_String_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM_String
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         VGA_WE : OUT  std_logic;
         VGA_COLOUR_MODE : OUT  std_logic;
         VGA_DI : OUT  std_logic_vector(7 downto 0);
         VGA_NEW_LINE : OUT  std_logic;
         PS2_INPUT : IN  std_logic_vector(7 downto 0);
         PS2_RDY : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal PS2_INPUT : std_logic_vector(7 downto 0) := (others => '0');
   signal PS2_RDY : std_logic := '1';

 	--Outputs
   signal VGA_WE : std_logic;
   signal VGA_COLOUR_MODE : std_logic;
   signal VGA_DI : std_logic_vector(7 downto 0);
   signal VGA_NEW_LINE : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM_String PORT MAP (
          CLK => CLK,
          RESET => RESET,
          VGA_WE => VGA_WE,
          VGA_COLOUR_MODE => VGA_COLOUR_MODE,
          VGA_DI => VGA_DI,
          VGA_NEW_LINE => VGA_NEW_LINE,
          PS2_INPUT => PS2_INPUT,
          PS2_RDY => PS2_RDY
        );


   -- Stimulus process
   stim_proc: PROCESS
		procedure TransmFSM( Byte : std_logic_vector( 7 downto 0 ) ) is
		  variable Frame : std_logic_vector( 10 downto 0 ) := "11" & Byte & '0';
		begin
		  -- Transmission of the frame; Fclk = 10kHz
		  for i in 0 to 10 loop
			PS2_INPUT <= Byte;
			wait for 5 us;
			CLK <= '0', '1' after 50 us;
			wait for 95 us;
		  end loop;
		end procedure;
	BEGIN
		wait for 15 us;
		TransmFSM( X"1D" );
		wait for 200 us;
		TransmFSM( X"43" );
		wait for 100 us;
		TransmFSM( X"74" );
		wait for 100 us;
		wait for 15 us;
		TransmFSM( X"1D" );
		wait for 200 us;
		TransmFSM( X"43" );
		wait for 100 us;
		TransmFSM( X"74" );
		wait for 15 us;
		TransmFSM( X"1D" );
		wait for 200 us;
		TransmFSM( X"43" );
		wait for 100 us;
		TransmFSM( X"74" );
		wait; -- wilwait forever
	END PROCESS;


END;
