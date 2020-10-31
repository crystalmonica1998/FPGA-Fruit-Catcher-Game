library ieee;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_1164.all;

entity speedCount is
    port(
		Clk: in std_ulogic;
	    rnd:in std_logic_vector(3 downto 0);
	    out1: out bit
	    );
 
end speedCount;



architecture behav1 of speedCount is



begin


storage1 : process is
variable temp1:std_logic_vector(3 downto 0):="0001";
variable temp2:std_logic_vector(7 downto 0);
begin

temp1:=temp1+"0001";
if(temp1="1111") then
temp2:=temp1*rnd; 
temp1:=temp2(6 downto 5)& temp2(2 downto 1);
end if;
if (temp1=rnd) then
out1<='1';
else
out1<='0';
end if;



wait until Clk = '1'; 
end process storage1;





end architecture behav1;