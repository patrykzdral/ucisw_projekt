--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:18:51 03/26/2018
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/learner/learner/PS2_RX_TB.vhd
-- Project Name:  learner
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PS2_RX
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
 
ENTITY PS2_RX_TB2 IS
END PS2_RX_TB2;
 
ARCHITECTURE behavior OF PS2_RX_TB2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PS2_RX
    PORT(
         PS2_CLK : IN  std_logic;
         PS2_DATA : IN  std_logic;
         CLK : IN  std_logic;
         DO_RDY : OUT  std_logic;
         DO : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PS2_CLK : std_logic := '0';
   signal PS2_DATA : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal DO_RDY : std_logic;
   signal DO : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant PS2_CLK_period : time := 10 us;
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PS2_RX PORT MAP (
          PS2_CLK => PS2_CLK,
          PS2_DATA => PS2_DATA,
          CLK => CLK,
          DO_RDY => DO_RDY,
          DO => DO
        );


   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: PROCESS
		procedure TransmPS2( Byte : std_logic_vector( 7 downto 0 ) ) is
		  variable Frame : std_logic_vector( 10 downto 0 ) := "11" & Byte & '0';
		begin
		  -- Parity calculation
		  for i in 0 to 7 loop
			Frame( 9 ) := Frame( 9 ) xor Byte( i );
		  end loop;
		  -- Transmission of the frame; Fclk = 10kHz
		  for i in 0 to 10 loop
			PS2_DATA <= Frame( i );
			wait for 5 us;
			PS2_CLK <= '0', '1' after 50 us;
			wait for 95 us;
		  end loop;
		end procedure;
	BEGIN
		wait for 15 us;
		TransmPS2( X"1C" );
		wait for 200 us;
		TransmPS2( X"32" );
		wait for 100 us;
		TransmPS2( X"93" );
		wait for 100 us;
		TransmPS2( X"99" );
		wait; -- wilwait forever
	END PROCESS;

END;
