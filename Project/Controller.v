module Controller 
  ( Clock,CurrentX,CurrentY,R,G,B,en1,en2,en3,en4,enF1,enF2,enF3,enF4,enF);
   
  input [10:0] CurrentY;
  input [10:0] CurrentX;
  
  
  input Clock;
  output reg[7:0] R;
  output reg[7:0] B;
  output reg[7:0] G;
  integer X=9'd320;
 

input en1,en2,en3,en4,enF1,enF2,enF3,enF4,enF;
always @(Clock)

 begin
 if(!en1 && !en2)
 begin
if ((CurrentY<11'd475) && (CurrentY>11'd450)&& (CurrentX<(X+50))&&(CurrentX>(X-50)))
  begin
  B=8'b11111111;
  G=8'b11111111;
  R=8'b11111111;
  end
  else
  begin
 B=8'b00000000;
  G=8'b00000000;
  R=8'b00000000;
  end
end


if(en1 && !en2 )
 
 begin
 X=X+1;
 if ((CurrentY<11'd475) && (CurrentY>11'd450)&& (CurrentX<(X+50))&&(CurrentX>(X-50)))
  begin
  B=8'b11111111;
  G=8'b11111111;
  R=8'b11111111;
  end
  else
  begin
 B=8'b00000000;
  G=8'b00000000;
  R=8'b00000000;
  end

 
 end
 else if(!en1 && en2 )
 
 begin
 X=X-1;
 if ((CurrentY<11'd475) && (CurrentY>11'd450)&& (CurrentX<(X+50))&&(CurrentX>(X-50)))
  begin
  B=8'b11111111;
  G=8'b11111111;
  R=8'b11111111;
  end
  else
  begin
 B=8'b00000000;
  G=8'b00000000;
  R=8'b00000000;
  end

 
 end
 end

endmodule