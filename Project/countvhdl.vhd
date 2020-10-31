library ieee;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_1164.all;

entity CountVhdl is
    port(CurrentX,CurrentY : in std_logic_vector(10 downto 0);
		Clk: in std_ulogic;
	   
	    
	    X,Y1 : in integer;
	    X1,X2,X3,X4,Y2,Y3,Y4: in integer;
	    R,G,B : out std_logic_vector(7 downto 0);
	    en1: in bit;
		X00,X11,X22,X33,X44,Y11,Y22,Y33,Y44: out integer);
end CountVhdl;



architecture behav of CountVhdl is

begin

storage : process is
variable tempX1:integer;
variable tempX2:integer;
variable tempX3:integer;
variable tempX4:integer;
begin
X00<=X;
X11<=X1;
X22<=X2;
X33<=X3;
X44<=X4;

Y11<=Y1;
Y22<=Y2;
Y33<=Y3;
Y44<=Y4;







tempX1:=X1*40;
tempX2:=X2*40;
tempX3:=X3*40;
tempX4:=X4*40;
if(en1='1') then
 
  B<="00000000";
  G<="00000000";
  R<="11111111";
  end if;
if (((CurrentY<475) and (CurrentY>470) and (CurrentX<(X+50)) and (CurrentX>(X-50)))or ((CurrentY<475) and (CurrentY>450) and (CurrentX<(X+50)) and (CurrentX>(X+45))) or ((CurrentY<475) and (CurrentY>450) and (CurrentX<(X-45)) and (CurrentX>(X-50))))
   then
  
  B<="11111111";
  G<="11111111";
  R<="11111111";
  
  --Sqare
  elsif ((CurrentY<Y1+20) and (CurrentY>Y1-20) and (CurrentX>(tempX1-20)) and (CurrentX<(tempX1+20))) then
  
  B<="00000000";
  G<="11111111";
  R<="00000000";
 
  --triangle
   elsif ((CurrentY<Y2) and (CurrentY>Y2-2) and (CurrentX>(tempX2-20)) and (CurrentX<(tempX2+20))) then
  
  B<="00000000";
  G<="11111111";
  R<="11111111";
    elsif ((CurrentY<Y2-2) and (CurrentY>Y2-4) and (CurrentX>(tempX2-18)) and (CurrentX<(tempX2+18))) then
  
  B<="00000000";
  G<="11111111";
  R<="11111111";
   elsif ((CurrentY<Y2-4) and (CurrentY>Y2-6) and (CurrentX>(tempX2-16)) and (CurrentX<(tempX2+16))) then
    B<="00000000";
  G<="11111111";
  R<="11111111";
   elsif ((CurrentY<Y2-6) and (CurrentY>Y2-8) and (CurrentX>(tempX2-14)) and (CurrentX<(tempX2+14))) then
  
   B<="00000000";
  G<="11111111";
  R<="11111111";
  elsif ((CurrentY<Y2-8) and (CurrentY>Y2-10) and (CurrentX>(tempX2-12)) and (CurrentX<(tempX2+12))) then
  
  B<="00000000";
  G<="11111111";
  R<="11111111";
  elsif ((CurrentY<Y2-10) and (CurrentY>Y2-12) and (CurrentX>(tempX2-10)) and (CurrentX<(tempX2+10))) then
  
   B<="00000000";
  G<="11111111";
  R<="11111111";
   elsif ((CurrentY<Y2-12) and (CurrentY>Y2-14) and (CurrentX>(tempX2-8)) and (CurrentX<(tempX2+8))) then
  
  B<="00000000";
  G<="11111111";
  R<="11111111";
    elsif ((CurrentY<Y2-14) and (CurrentY>Y2-16) and (CurrentX>(tempX2-6)) and (CurrentX<(tempX2+6))) then
  
  B<="00000000";
  G<="11111111";
  R<="11111111";
   elsif ((CurrentY<Y2-16) and (CurrentY>Y2-18) and (CurrentX>(tempX2-4)) and (CurrentX<(tempX2+4))) then
  B<="00000000";
  G<="11111111";
  R<="11111111";
  
   elsif ((CurrentY<Y2-18) and (CurrentY>Y2-20) and (CurrentX>(tempX2-4)) and (CurrentX<(tempX2+4))) then
  
    B<="00000000";
  G<="11111111";
  R<="11111111";
   elsif ((CurrentY<Y2-20) and (CurrentY>Y2-22) and (CurrentX>(tempX2-4)) and (CurrentX<(tempX2+4))) then
  
  B<="00000000";
  G<="11111111";
  R<="11111111";
   elsif ((CurrentY<Y2-22) and (CurrentY>Y2-24) and (CurrentX>(tempX2-2)) and (CurrentX<(tempX2+2))) then
  
  B<="00000000";
  G<="11111111";
  R<="11111111";
  
  
  --Diamond
   elsif ((CurrentY<Y3) and (CurrentY>Y3-2) and (CurrentX>(tempX3-20)) and (CurrentX<(tempX3+20))) then
  

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
    elsif ((CurrentY<Y3-2) and (CurrentY>Y3-4) and (CurrentX>(tempX3-18)) and (CurrentX<(tempX3+18))) then
 
  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY<Y3-4) and (CurrentY>Y3-6) and (CurrentX>(tempX3-16)) and (CurrentX<(tempX3+16))) then
  

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY<Y3-6) and (CurrentY>Y3-8) and (CurrentX>(tempX3-14)) and (CurrentX<(tempX3+14))) then
  
 
  B<="11111111";
  G<="00000000";
  R<="11111111";
  
  elsif ((CurrentY<Y3-8) and (CurrentY>Y3-10) and (CurrentX>(tempX3-12)) and (CurrentX<(tempX3+12))) then
  
 
  B<="11111111";
  G<="00000000";
  R<="11111111";
  
  elsif ((CurrentY<Y3-10) and (CurrentY>Y3-12) and (CurrentX>(tempX3-10)) and (CurrentX<(tempX3+10))) then
  

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY<Y3-12) and (CurrentY>Y3-14) and (CurrentX>(tempX3-8)) and (CurrentX<(tempX3+8))) then
  

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
    elsif ((CurrentY<Y3-14) and (CurrentY>Y3-16) and (CurrentX>(tempX3-6)) and (CurrentX<(tempX3+6))) then
  

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY<Y3-16) and (CurrentY>Y3-18) and (CurrentX>(tempX3-4)) and (CurrentX<(tempX3+4))) then
  
 
  B<="11111111";
  G<="00000000";
  R<="11111111";
  
  
   elsif ((CurrentY<Y3-18) and (CurrentY>Y3-20) and (CurrentX>(tempX3-4)) and (CurrentX<(tempX3+4))) then
  

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY<Y3-20) and (CurrentY>Y3-22) and (CurrentX>(tempX3-4)) and (CurrentX<(tempX3+4))) then

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY<Y3-22) and (CurrentY>Y3-24) and (CurrentX>(tempX3-2)) and (CurrentX<(tempX3+2))) then
  
  
  B<="11111111";
  G<="00000000";
  R<="11111111";
  
  --2nd part
   elsif ((CurrentY>Y3) and (CurrentY<Y3+2) and (CurrentX>(tempX3-20)) and (CurrentX<(tempX3+20))) then
  
 
  B<="11111111";
  G<="00000000";
  R<="11111111";
  
    elsif ((CurrentY>Y3+2) and (CurrentY<Y3+4) and (CurrentX>(tempX3-18)) and (CurrentX<(tempX3+18))) then
  

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY>Y3+4) and (CurrentY<Y3+6) and (CurrentX>(tempX3-16)) and (CurrentX<(tempX3+16))) then
  
 
  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY>Y3+6) and (CurrentY<Y3+8) and (CurrentX>(tempX3-14)) and (CurrentX<(tempX3+14))) then
  
  B<="11111111";
  G<="00000000";
  R<="11111111";
  
  elsif ((CurrentY>Y3+8) and (CurrentY<Y3+10) and (CurrentX>(tempX3-12)) and (CurrentX<(tempX3+12))) then
  

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
  elsif ((CurrentY>Y3+10) and (CurrentY<Y3+12) and (CurrentX>(tempX3-10)) and (CurrentX<(tempX3+10))) then

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY>Y3+12) and (CurrentY<Y3+14) and (CurrentX>(tempX3-8)) and (CurrentX<(tempX3+8))) then
  
  
  B<="11111111";
  G<="00000000";
  R<="11111111";
  
    elsif ((CurrentY>Y3+14) and (CurrentY<Y3+16) and (CurrentX>(tempX3-6)) and (CurrentX<(tempX3+6))) then
 
  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY>Y3+16) and (CurrentY<Y3+18) and (CurrentX>(tempX3-4)) and (CurrentX<(tempX3+4))) then

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY>Y3+18) and (CurrentY<Y3+20) and (CurrentX>(tempX3-4)) and (CurrentX<(tempX3+4))) then
  

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY>Y3+20) and (CurrentY<Y3+22) and (CurrentX>(tempX3-4)) and (CurrentX<(tempX3+4))) then

  B<="11111111";
  G<="00000000";
  R<="11111111";
  
   elsif ((CurrentY>Y3+22) and (CurrentY<Y3+24) and (CurrentX>(tempX3-2)) and (CurrentX<(tempX3+2))) then
  
  B<="11111111";
  G<="00000000";
  R<="11111111";
  --bomba
    
  elsif ((CurrentY<Y4+20) and (CurrentY>Y4-20) and (CurrentX>(tempX4-5)) and (CurrentX<(tempX4+5))) then
  
  B<="00000000";
  G<="00000000";
  R<="11111111";
    elsif ((CurrentY>Y4-23) and (CurrentY<Y4-20) and (CurrentX>(tempX4-2)) and (CurrentX<(tempX4+2))) then
  
  B<="00000000";
  G<="00000000";
  R<="11111111";
  
   else
  
 B<="00000000";
  G<="00000000";
  R<="00000000";
  end if;





wait until Clk = '1'; 
end process storage;







end architecture behav;