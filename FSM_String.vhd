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
    sWE,
    sLoop,
    sLine,
	sLine2,
    sWE2,
    sPrint,
	sWEBefore,
	sError
    );
  signal State, nextState : state_type; 

  -- String to print
  type STRINGZ is array ( NATURAL range <> ) of CHARACTER;
  constant nStrSize : POSITIVE := 30;
  constant nStrSize2 : POSITIVE := 12;
  constant nStrSize3 : POSITIVE := 30;
  signal romStr : STRINGZ( 0 to nStrSize - 1 ) := "witamy na laboratorium uciswu" & NUL;
  signal romStr2 : STRINGZ( 0 to nStrSize2 - 1 ) := "welcome pwr" & NUL;
  signal romStr3 : STRINGZ( 0 to nStrSize3 - 1 ) := "hejkaa na laboratorium uciswu" & NUL;
  signal whichStr : std_logic_vector( 1 downto 0 ) := ( others => '0' );
  signal ascii : STD_LOGIC_VECTOR ( 7 downto 0 ) := ( others => '0' );
  -- Character index
  signal cntIdx : std_logic_vector( 5 downto 0 ) := ( others => '0' );
  

begin

  -- Character index
  process ( Clk )
  begin
    if rising_edge( Clk ) then
      if State = sReset then
        cntIdx <= ( others => '0' );
		LCD_DnI  <= '0';
      elsif State = sLine then
        cntIdx <= ( others => '0' );
		LCD_DnI  <= '0';
      elsif State = sWEBefore then
         cntIdx <= cntIdx + 1;
		 LCD_DnI  <= '0';
      elsif State = sWE then
        cntIdx <= cntIdx + 1;
		LCD_DnI  <= '0';
	  elsif State = sLine2 then
        whichStr <= whichStr + 1;
		LCD_DnI  <= '0';
	  elsif State = sError then
	     LCD_DnI  <= '1';
	  elsif State = sWe2 then
	     LCD_DnI  <= '0';
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
        nextState <= sWE;

      when sWE =>   -- WE pulse
        nextState <= sLoop;

      when sLoop =>
		if (whichStr = 0 and romStr( conv_integer( cntIdx ) ) /= NUL) then
            nextState <= sWE;
		elsif (whichStr = 1 and romStr2( conv_integer( cntIdx ) ) /= NUL) then
			nextState <= sWE;
		elsif (whichStr = 2 and romStr3( conv_integer( cntIdx ) ) /= NUL) then
			nextState <= sWE;	
        else
            nextState <= sLine;
        end if;
            
      when sLine =>   -- WE pulse
        nextState <= sWE2;

      when sWE2 =>
		if (whichStr = 0 and (romStr( conv_integer( cntIdx ) ) /= NUL) and ( ascii = ('0' & CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr( conv_integer( cntIdx ) ) ), 7 ) ) )) then
            nextState <= sWEBefore;   
		elsif (whichStr = 1 and romStr2( conv_integer( cntIdx ) ) /= NUL and ( ascii = ('0' & CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr2( conv_integer( cntIdx ) ) ), 7 ) ) )) then
			nextState <= sWEBefore;   
		elsif (whichStr = 2 and romStr3( conv_integer( cntIdx ) ) /= NUL and ( ascii = ('0' & CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr3( conv_integer( cntIdx ) ) ), 7 ) ) )) then
			nextState <= sWEBefore;
        elsif (whichStr = 0 and cntIdx = nStrSize - 1 and ascii = x"13") then	
			nextState <= sLine2;
        elsif (whichStr = 1 and cntIdx = nStrSize2 - 1 and ascii = x"13") then	
			nextState <= sLine2;
        elsif (whichStr = 2 and cntIdx = nStrSize3 - 1 and ascii = x"13") then	
			nextState <= sLine2;
		else
            nextState <= sError;
         end if;
      when sWEBefore =>
			nextState <= sPrint;
      when sPrint =>
         nextState <= sWE2;
	  when sError =>
         nextState <= sWE2 after 1000 ns ; 
		 
	 when sLine2 =>
		nextState <= sReset;
    end case;
  end process;
  
  -- Outputs
  LCD_WE  <= '1' when (State = sWE or State = sWEBefore) else '0'; -- p.zdral zmiana
  
  --LCD_DI <= '0' & 
    --CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr( conv_integer( cntIdx ) ) ), 7 );
  New_Line <= '1' when (State = sLine or State = sLine2) else '0';  
  
--  LCD_DI <= ('0' & CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr( conv_integer( cntIdx ) ) ), 7 )) when whichStr = 0 and ((State = sWE) or ( State = sWEBefore ));
  --LCD_DI <=('0' & CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr2( conv_integer( cntIdx ) ) ), 7 )) when whichStr = 1 and ((State = sWE) or ( State = sWEBefore ));
 -- LCD_DI <= ('0' & CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr3( conv_integer( cntIdx ) ) ), 7 )) when whichStr = 2 and ((State = sWE) or ( State = sWEBefore ));
  
  process(whichStr, State)
  begin
	if (whichStr = 0 and ((State = sWE) or ( State = sWEBefore ))) then
		LCD_DI <= ('0' & CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr( conv_integer( cntIdx ) ) ), 7 ));
	elsif (whichStr = 1 and ((State = sWE) or ( State = sWEBefore ))) then
		LCD_DI <=('0' & CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr2( conv_integer( cntIdx ) ) ), 7 ));
	elsif (whichStr = 2 and ((State = sWE) or ( State = sWEBefore ))) then
		LCD_DI <= ('0' & CONV_STD_LOGIC_VECTOR( CHARACTER'Pos( romStr3( conv_integer( cntIdx ) ) ), 7 ));
	end if;
  end process;
  
  
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
	  WHEN x"5A" => ascii <= x"13"; --enter
      WHEN OTHERS => ascii <= x"00"; --error code
    END CASE;
    end if;
  end process;

end RTL;

