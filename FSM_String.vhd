library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FSM_String is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           LCD_Busy : in  STD_LOGIC;
           LCD_WE : out  STD_LOGIC;
           LCD_DnI : out  STD_LOGIC;
           LCD_DI : out  STD_LOGIC_VECTOR (7 downto 0);
           PS2_Input : in STD_LOGIC_VECTOR (7 downto 0);
           PS2_DoRdy : in STD_LOGIC;
           New_Line : out STD_LOGIC
           );


end FSM_String;

architecture RTL of FSM_String is

  -- FSM
  type state_type is (
    sReset,
    sBusyWait,
    sWE,
    sLoop,
    sLine,
    sWE2,
    sPrint,
    sBusyWait2
    );
  signal State, nextState : state_type; 

  -- String to print
  type STRINGZ is array ( NATURAL range <> ) of CHARACTER;
  constant nStrSize : POSITIVE := 12;
  signal romStr : STRINGZ( 0 to nStrSize - 1 ) := "hello world" & NUL;
  signal ascii : STD_LOGIC_VECTOR ( 7 downto 0 ) := ( others => '0' );

  -- Character index
  signal cntIdx : std_logic_vector( 3 downto 0 ) := ( others => '0' );

begin

  -- Character index
  process ( Clk )
  begin
    if rising_edge( Clk ) then
      if State = sReset then
        cntIdx <= ( others => '0' );
      elsif State = sLine then
        cntIdx <= ( others => '0' );
      elsif State = sBusyWait2 then
         cntIdx <= cntIdx + 1; --sBusyWait2, poniewaz kiedy sWE2 zapetla sie do siebie - index bylby wciaz inkrementowany
      elsif State = sWE then
        cntIdx <= cntIdx + 1;
      end if;
    end if;
  end process;

  -- FSM
	process ( Clk )
  begin
    if rising_edge( Clk ) then
      if Reset = '1' then
        State <= sReset;
      else
        State <= nextState;
      end if;
    end if;
  end process;
	process( State, LCD_Busy, cntIdx, romStr, ascii )
  begin
    nextState <= State;   -- default is to stay in current State
    
    case State is

      when sReset =>
        nextState <= sBusyWait;

      when sBusyWait =>
        if LCD_Busy = '0' then
          nextState <= sWE;
        end if;

      when sWE =>   -- WE pulse
        nextState <= sLoop;

      when sLoop =>
        if romStr( conv_integer( cntIdx ) ) /= NUL then
            nextState <= sBusyWait;
        else
            nextState <= sLine;
        end if;
            
      when sLine =>   -- WE pulse
        nextState <= sWE2;

      when sWE2 =>
         if romStr( conv_integer( cntIdx ) ) /= NUL and ( ascii = ('0' & CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr( conv_integer( cntIdx ) ) ), 7 ) ) ) then
            nextState <= sBusyWait2;          
         else
            nextState <= sWE2;
         end if;
         
      when sBusyWait2 =>
         if LCD_Busy = '0' then
            nextState <= sPrint;
         end if;
         
      when sPrint =>
         nextState <= sWE2;         
        
    end case;
  end process;
  
  -- Outputs
  LCD_WE  <= '1' when State = sWE else '0';
  LCD_DnI <= '1';
  --LCD_DI <= '0' & 
    --CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr( conv_integer( cntIdx ) ) ), 7 );
  New_Line <= '1' when State = sLine else '0';
  LCD_DI <= '0' & CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr( conv_integer( cntIdx ) ) ), 7 ) when ((State = sLoop) or ( State = sPrint ));
 
  process( PS2_Input ) 
  begin
   if PS2_DoRdy = '1' and rising_edge( Clk) then
   CASE PS2_Input IS
      WHEN x"1C" => ascii <= x"61"; --a
      WHEN x"32" => ascii <= x"62"; --b
      WHEN x"21" => ascii <= x"63"; --c
      WHEN x"23" => ascii <= x"64"; --d
      WHEN x"24" => ascii <= x"65"; --e
      WHEN x"2B" => ascii <= x"66"; --f
      WHEN x"34" => ascii <= x"67"; --g
      WHEN x"33" => ascii <= x"68"; --h
      WHEN x"43" => ascii <= x"69"; --i
      WHEN x"3B" => ascii <= x"6A"; --j
      WHEN x"42" => ascii <= x"6B"; --k
      WHEN x"4B" => ascii <= x"6C"; --l
      WHEN x"3A" => ascii <= x"6D"; --m
      WHEN x"31" => ascii <= x"6E"; --n
      WHEN x"44" => ascii <= x"6F"; --o
      WHEN x"4D" => ascii <= x"70"; --p
      WHEN x"15" => ascii <= x"71"; --q
      WHEN x"2D" => ascii <= x"72"; --r
      WHEN x"1B" => ascii <= x"73"; --s
      WHEN x"2C" => ascii <= x"74"; --t
      WHEN x"3C" => ascii <= x"75"; --u
      WHEN x"2A" => ascii <= x"76"; --v
      WHEN x"1D" => ascii <= x"77"; --w
      WHEN x"22" => ascii <= x"78"; --x
      WHEN x"35" => ascii <= x"79"; --y
      WHEN x"1A" => ascii <= x"7A"; --z
      WHEN x"29" => ascii <= x"20"; --space
      WHEN OTHERS => ascii <= x"00"; --error code
    END CASE;
    end if;
  end process;

end RTL;

