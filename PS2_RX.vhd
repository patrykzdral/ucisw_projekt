LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE ieee.std_logic_signed.ALL;

ENTITY PS2_RX IS
	PORT (
		PS2_CLK  : IN STD_LOGIC;
		PS2_DATA : IN STD_LOGIC;
		CLK      : IN STD_LOGIC;
		DO_RDY   : OUT STD_LOGIC;
		DO       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END PS2_RX;

ARCHITECTURE Behavioral OF PS2_RX IS
	SIGNAL shift_register_data : STD_LOGIC_VECTOR(10 DOWNTO 0) := "00000000000";
	SIGNAL mod11_counter       : STD_LOGIC_VECTOR(3 DOWNTO 0)  := "0000";
	SIGNAL allow_new_data_bit  : STD_LOGIC_VECTOR(1 DOWNTO 0)  := "11";
	SIGNAL validate_parity     : STD_LOGIC                     := '0';
	TYPE state_type IS (idle, validate_message, message_received);
    SIGNAL state, next_state : state_type;
    
BEGIN
	PROCESS (CLK)
	BEGIN
		IF rising_edge(CLK) THEN
			allow_new_data_bit(1) <= PS2_CLK;
			allow_new_data_bit(0) <= allow_new_data_bit(1);
		END IF;
    END PROCESS;
    
	PROCESS (CLK, state)
	BEGIN
		IF (rising_edge(CLK)) THEN
			IF (state = message_received) THEN
				mod11_counter <= "0000";
			ELSIF (allow_new_data_bit(1) = '0' AND allow_new_data_bit(0) = '1') THEN
				mod11_counter <= mod11_counter + 1;
			END IF;
		END IF;
    END PROCESS;
    
	PROCESS (CLK)
	BEGIN
		IF (rising_edge(CLK)) THEN
			IF (allow_new_data_bit(1) = '0' AND allow_new_data_bit(0) = '1') THEN
				shift_register_data(9 DOWNTO 0) <= shift_register_data(10 DOWNTO 1);
				shift_register_data(10)         <= PS2_DATA;
			END IF;
		END IF;
    END PROCESS;
    
	validate_parity <= NOT(shift_register_data(8) XOR shift_register_data(7) XOR shift_register_data(6)
		XOR shift_register_data(5) XOR shift_register_data(4) XOR shift_register_data(3)
        XOR shift_register_data(2) XOR shift_register_data(1));
        
	SHIFT_STATE : PROCESS (CLK)
	BEGIN
		IF (rising_edge(CLK)) THEN
			state <= next_state;
		END IF;
    END PROCESS SHIFT_STATE;
    
	STATE_MACHINE : PROCESS (state, mod11_counter, shift_register_data, validate_parity)
	BEGIN
		next_state <= state;
		CASE state IS
			WHEN idle =>
				IF (mod11_counter = "1011") THEN
					next_state <= validate_message;
				END IF;
			WHEN validate_message =>
				IF (shift_register_data(0) = '0' AND shift_register_data(9) = validate_parity AND shift_register_data(10) = '1') THEN
					next_state <= message_received;
				ELSE
					next_state <= idle;
				END IF;
			WHEN message_received =>
				next_state <= idle;
		END CASE;
    END PROCESS STATE_MACHINE;
    
	DO_RDY <= '1' WHEN state = message_received
		ELSE '0';
	DO <= shift_register_data(8 DOWNTO 1);
END Behavioral;