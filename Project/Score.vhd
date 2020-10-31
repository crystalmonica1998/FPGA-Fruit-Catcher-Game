library ieee;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_1164.all;

entity Score is
    port(
		Clk: in std_ulogic;
	   
		X00,X11,X22,X33,X44,Y11,Y22,Y33,Y44: in integer;
		out1,out2,out3,out4:out unsigned(3 downto 0);
		score1: out std_logic_vector(31 downto 0);
		en1: out bit:='0'
		
		);
end Score;



architecture behav of Score is
signal us : unsigned(3 downto 0):="0000";
begin

storage : process is
variable Score2:integer:=0;
variable bombcount,temp:integer:=0;
variable tempX1:integer;
variable tempX2:integer;
variable tempX3:integer;
variable tempX4:integer;


begin
tempX1:=X11*40;
tempX2:=X22*40;
tempX3:=X33*40;
tempX4:=X44*40;
if((y11=450) and ((tempX1>X00-50) and (tempX1<X00+50))) then
Score2:= Score2+10;

elsif((y22=450) and ((tempX2>X00-50) and (tempX2<X00+50))) then
Score2:= Score2+20;

elsif((y33=453) and ((tempX3>X00-50) and (tempX3<X00+50))) then
Score2:= Score2+30;

elsif((y44=450) and ((tempX4>X00-50) and (tempX4<X00+50))) then
Score2:= Score2-50;
bombcount:=bombcount+1;
else
Score2:=Score2+0;
end if;
if(bombcount=3) then
en1<='1';

end if;



score1<=Std_logic_vector(to_unsigned(Score2,32));
temp:=Score2 mod 10;
us <= to_unsigned(temp,4);
out1 <=us;



wait until Clk = '1'; 
end process storage;







end architecture behav;