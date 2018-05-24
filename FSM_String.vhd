LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY FSM_String IS
	PORT (
		CLK             : IN STD_LOGIC;
		RESET           : IN STD_LOGIC;
		VGA_WE          : OUT STD_LOGIC;
		VGA_COLOUR_MODE : OUT STD_LOGIC;
		VGA_DI          : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		VGA_NEW_LINE    : OUT STD_LOGIC;
		PS2_INPUT       : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		PS2_RDY         : IN STD_LOGIC
	);
END FSM_String;

ARCHITECTURE RTL OF FSM_String IS
	TYPE state_type IS (s_reset, s_loop_writing_pattern_chars, s_write_pattern_char, s_new_line, s_end, s_before_write_typed_char, s_write_typed_char, s_error);
	SIGNAL state, next_state : state_type;
	TYPE STRINGZ IS ARRAY (NATURAL RANGE <>) OF CHARACTER;
	CONSTANT SENTENCE_SIZE_1 : POSITIVE                          := 30;
	CONSTANT SENTENCE_SIZE_2 : POSITIVE                          := 23;
	CONSTANT SENTENCE_SIZE_3 : POSITIVE                          := 29;
	SIGNAL sentence_str_1    : STRINGZ(0 TO SENTENCE_SIZE_1 - 1) := "witamy na laboratorium uciswu" & NUL;
	SIGNAL sentence_str_2    : STRINGZ(0 TO SENTENCE_SIZE_2 - 1) := "kurs szybkiego pisania" & NUL;
	SIGNAL sentence_str_3    : STRINGZ(0 TO SENTENCE_SIZE_3 - 1) := "skoordynowane gospodarowanie" & NUL;
	SIGNAL which_str         : std_logic_vector(1 DOWNTO 0)      := (OTHERS => '0');
	SIGNAL scn_code_to_ascii : STD_LOGIC_VECTOR (7 DOWNTO 0)     := (OTHERS => '0');
   SIGNAL current_str_idx   : std_logic_vector(5 DOWNTO 0)      := (OTHERS => '0');
    
BEGIN
	PROCESS (CLK)
	BEGIN
		IF rising_edge(CLK) THEN
			IF state = s_reset THEN
				current_str_idx <= (OTHERS => '0');
				VGA_COLOUR_MODE <= '0';
			ELSIF state = s_new_line THEN
				current_str_idx <= (OTHERS => '0');
				VGA_COLOUR_MODE <= '0';
			ELSIF state = s_write_typed_char THEN
				current_str_idx <= current_str_idx + 1;
				VGA_COLOUR_MODE <= '0';
			ELSIF state = s_write_pattern_char THEN
				current_str_idx <= current_str_idx + 1;
				VGA_COLOUR_MODE <= '0';
			ELSIF state = s_end THEN
				which_str       <= which_str + 1;
				VGA_COLOUR_MODE <= '0';
			ELSIF state = s_error THEN
				VGA_COLOUR_MODE <= '1';
			ELSIF state = s_before_write_typed_char THEN
				VGA_COLOUR_MODE <= '0';
			END IF;
		END IF;
    END PROCESS;
    
	PROCESS (CLK)
	BEGIN
		IF rising_edge(CLK) THEN
			IF RESET = '1' THEN
				state <= s_reset;
			ELSE
				state <= next_state;
			END IF;
		END IF;
    END PROCESS;
    
	PROCESS (state, current_str_idx, scn_code_to_ascii)
	BEGIN
		next_state <= state;
		CASE state IS
			WHEN s_reset =>
				next_state <= s_write_pattern_char;
			WHEN s_write_pattern_char =>
				next_state <= s_loop_writing_pattern_chars;
			WHEN s_loop_writing_pattern_chars =>
				IF ((which_str = 0 AND sentence_str_1(conv_integer(current_str_idx)) /= NUL)
					OR (which_str = 1 AND sentence_str_2(conv_integer(current_str_idx)) /= NUL)
					OR (which_str = 2 AND sentence_str_3(conv_integer(current_str_idx)) /= NUL)) THEN
					next_state <= s_write_pattern_char;
				ELSE
					next_state <= s_new_line;
				END IF;
			WHEN s_new_line =>
				next_state <= s_before_write_typed_char;
			WHEN s_before_write_typed_char =>
				IF ((which_str = 0 AND (sentence_str_1(conv_integer(current_str_idx)) /= NUL)
					AND (scn_code_to_ascii = ('0' & CONV_STD_LOGIC_VECTOR(CHARACTER'Pos(sentence_str_1(conv_integer(current_str_idx))), 7))))
					OR (which_str = 1 AND sentence_str_2(conv_integer(current_str_idx)) /= NUL
					AND (scn_code_to_ascii = ('0' & CONV_STD_LOGIC_VECTOR(CHARACTER'Pos(sentence_str_2(conv_integer(current_str_idx))), 7))))
					OR (which_str = 2 AND sentence_str_3(conv_integer(current_str_idx)) /= NUL
					AND (scn_code_to_ascii = ('0' & CONV_STD_LOGIC_VECTOR(CHARACTER'Pos(sentence_str_3(conv_integer(current_str_idx))), 7))))) THEN
					next_state <= s_write_typed_char;
				ELSIF ((which_str = 0 AND current_str_idx = SENTENCE_SIZE_1 - 1 AND scn_code_to_ascii = x"13")
					OR (which_str = 1 AND current_str_idx = SENTENCE_SIZE_2 - 1 AND scn_code_to_ascii = x"13")
					OR (which_str = 2 AND current_str_idx = SENTENCE_SIZE_3 - 1 AND scn_code_to_ascii = x"13")) THEN
					next_state <= s_end;
				ELSE
					next_state <= s_error;
				END IF;
			WHEN s_write_typed_char =>
				next_state <= s_before_write_typed_char;
			WHEN s_error =>
				next_state <= s_before_write_typed_char AFTER 1000 ns;
			WHEN s_end =>
				next_state <= s_reset;
		END CASE;
    END PROCESS;
    
	VGA_WE       <= '1' WHEN (state = s_write_pattern_char OR state = s_write_typed_char) ELSE '0';
    VGA_NEW_LINE <= '1' WHEN (state = s_new_line OR state = s_end) ELSE '0';
    
	PROCESS (which_str, state)
	BEGIN
		IF (which_str = 0 AND ((state = s_write_pattern_char) OR (state = s_write_typed_char))) THEN
			VGA_DI <= ('0' & CONV_STD_LOGIC_VECTOR(CHARACTER'Pos(sentence_str_1(conv_integer(current_str_idx))), 7));
		ELSIF (which_str = 1 AND ((state = s_write_pattern_char) OR (state = s_write_typed_char))) THEN
			VGA_DI <= ('0' & CONV_STD_LOGIC_VECTOR(CHARACTER'Pos(sentence_str_2(conv_integer(current_str_idx))), 7));
		ELSIF (which_str = 2 AND ((state = s_write_pattern_char) OR (state = s_write_typed_char))) THEN
			VGA_DI <= ('0' & CONV_STD_LOGIC_VECTOR(CHARACTER'Pos(sentence_str_3(conv_integer(current_str_idx))), 7));
		END IF;
    END PROCESS;
    
	PROCESS (PS2_INPUT)
	BEGIN
		IF PS2_RDY    = '1' AND rising_edge(CLK) THEN
			CASE PS2_INPUT IS
				WHEN x"1C"  => scn_code_to_ascii <= x"61";
				WHEN x"32"  => scn_code_to_ascii <= x"62";
				WHEN x"21" => scn_code_to_ascii <= x"63";
				WHEN x"23" => scn_code_to_ascii <= x"64";
				WHEN x"24" => scn_code_to_ascii <= x"65";
				WHEN x"2B" => scn_code_to_ascii <= x"66";
				WHEN x"34" => scn_code_to_ascii <= x"67";
				WHEN x"33" => scn_code_to_ascii <= x"68";
				WHEN x"43" => scn_code_to_ascii <= x"69";
				WHEN x"3B" => scn_code_to_ascii <= x"6A";
				WHEN x"42" => scn_code_to_ascii <= x"6B";
				WHEN x"4B" => scn_code_to_ascii <= x"6C";
				WHEN x"3A" => scn_code_to_ascii <= x"6D";
				WHEN x"31" => scn_code_to_ascii <= x"6E";
				WHEN x"44" => scn_code_to_ascii <= x"6F";
				WHEN x"4D" => scn_code_to_ascii <= x"70";
				WHEN x"15" => scn_code_to_ascii <= x"71";
				WHEN x"2D" => scn_code_to_ascii <= x"72";
				WHEN x"1B" => scn_code_to_ascii <= x"73";
				WHEN x"2C" => scn_code_to_ascii <= x"74";
				WHEN x"3C" => scn_code_to_ascii <= x"75";
				WHEN x"2A" => scn_code_to_ascii <= x"76";
				WHEN x"1D" => scn_code_to_ascii <= x"77";
				WHEN x"22" => scn_code_to_ascii <= x"78";
				WHEN x"35" => scn_code_to_ascii <= x"79";
				WHEN x"1A" => scn_code_to_ascii <= x"7A";
				WHEN x"29" => scn_code_to_ascii <= x"20";
				WHEN x"5A" => scn_code_to_ascii <= x"13";
				WHEN OTHERS      => scn_code_to_ascii <= x"00";
			END CASE;
		END IF;
	END PROCESS;
END RTL;