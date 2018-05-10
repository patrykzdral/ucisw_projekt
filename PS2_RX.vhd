----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:17:49 03/26/2018 
-- Design Name: 
-- Module Name:    PS2_RX - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PS2_RX is
    Port ( PS2_CLK : in  STD_LOGIC;
           PS2_DATA : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           DO_RDY : out  STD_LOGIC;
           DO : out  STD_LOGIC_VECTOR (7 downto 0));
end PS2_RX;

architecture Behavioral of PS2_RX is
   signal shift_register_data :STD_LOGIC_VECTOR(10 downto 0) := "00000000000";
   signal mod11_counter : STD_LOGIC_VECTOR(3 downto 0) := "0000";
   signal allow_new_data_bit : STD_LOGIC_VECTOR(1 downto 0) := "11";
	signal validate_parity : STD_LOGIC := '0';
   type state_type is (idle, check_valid, ps2_word_ok);
   signal state, next_state : state_type;
	
begin

process(CLK)
begin
   if rising_edge(CLK) then 
      allow_new_data_bit(1) <= PS2_CLK;
      allow_new_data_bit(0) <= allow_new_data_bit(1);          
   end if;
end process;

process(CLK, state)
begin
   if(rising_edge(CLK)) then
      if( state  = ps2_word_ok) then
         mod11_counter <= "0000";
      elsif(allow_new_data_bit(1) = '0' and allow_new_data_bit(0) = '1') then
         mod11_counter <= mod11_counter + 1;  
      end if;
    end if;
end process;

process(CLK)
begin
   if(rising_edge(CLK)) then
		if(allow_new_data_bit(1) = '0' and allow_new_data_bit(0) = '1') then
			shift_register_data(9 downto 0) <= shift_register_data(10 downto 1);
			shift_register_data(10) <= PS2_DATA;
		end if;
   end if;
end process;

validate_parity <= not(shift_register_data(8) xor shift_register_data(7) xor shift_register_data(6) 
                  xor shift_register_data(5) xor shift_register_data(4) xor shift_register_data(3) 
                    xor shift_register_data(2) xor shift_register_data(1));

SHIFT_STATE: process(CLK)
begin
   if(rising_edge(CLK)) then
      state <= next_state;
   end if;
end process SHIFT_STATE;

STATE_MACHINE : process(state, mod11_counter, shift_register_data, validate_parity)
begin
   next_state <= state;
   
   case state is
      when idle =>
         if(mod11_counter = "1011") then
            next_state <= check_valid;
         end if;
      when check_valid =>
         if(shift_register_data(0) = '0' and shift_register_data(9) = validate_parity and shift_register_data(10) = '1') then
            next_state <= ps2_word_ok;
         else
            next_state <=idle;
      end if;
         when ps2_word_ok =>
            next_state <= idle;
   end case;
   
end process STATE_MACHINE;

--In place of process
DO_RDY <= '1' when state = ps2_word_ok
   else '0';
DO <= shift_register_data(8 downto 1);

end Behavioral;

