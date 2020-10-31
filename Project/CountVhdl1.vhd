library ieee;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_1164.all;

entity CountVhdl1 is
    port(
		Clk,ps2: in std_ulogic;
	    X: out integer;
	    Y1,Y2,Y3,Y4: out integer:=0;
	    en1:in std_logic_vector(7 downto 0);
	    inrand: in std_logic_vector(3 downto 0);
	    out0,out1,out2,out3,out4: out bit:='1'
	    );
 
end CountVhdl1;



architecture behav of CountVhdl1 is



begin


storage1 : process is
variable temp:integer:=320;
variable temp1,temp2,temp3,temp4:integer:=0;
begin



if (en1="01110100" and ps2='1') then
temp:=temp+2;
X<=temp;
elsif (en1="01101011") then 
temp:=temp-2;
X<=temp;
end if;

if (temp<50) then
temp:=590;
X<=temp;
end if;
if (temp>590) then
temp:=50;
X<=temp;
end if;

if(((inrand<7) and (inrand>1)) or ((temp1>1)and (temp1<500))) then
temp1:=temp1+1;
Y1<=temp1;
if (temp1=240) then
out0<='1';
out2<='1';
out3<='1';
out4<='1';
else
out0<='0';
out2<='0';
out3<='0';
out4<='0';
end if;
if (temp1=500) then
temp1:=0;
end if;
end if;


if(((inrand<8) and (inrand>4)) or ((temp2>1)and (temp2<520))) then
temp2:=temp2+2;
Y2<=temp2;
if (temp2=240) then
out0<='1';
out1<='1';
out3<='1';
out4<='1';
else
out0<='0';
out1<='0';
out3<='0';
out4<='0';
end if;

if (temp2=520) then
temp2:=0;
end if;
end if;


if(((inrand<12) and (inrand>7)) or ((temp3>1)and (temp3<600))) then
temp3:=temp3+3;
Y3<=temp3;
if (temp3=240) then
out0<='1';
out1<='1';
out2<='1';
out4<='1';
else
out0<='0';
out1<='0';
out2<='0';
out4<='0';
end if;

if (temp3=600) then
temp3:=0;
end if;
end if;



if((inrand=1) or ((temp4>1)and (temp4<520))) then
temp4:=temp4+1;
Y4<=temp4;
if (temp4=240) then
out0<='1';
out1<='1';
out2<='1';
out3<='1';
else
out0<='0';
out1<='0';
out2<='0';
out3<='0';
end if;

if (temp4=520) then
temp4:=0;
end if;
end if;






wait until Clk = '1'; 
end process storage1;





end architecture behav;