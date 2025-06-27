module srff_tb;
reg clk;
reg s,r;
wire q,qb;
srff s1(s,r,clk,q,qb);
initial 
  clk=1'b0;
always #5 clk=~clk;
initial begin
  $display("s r | q qb");
  s=0;r=0;#10;$display("%b %b | %b %b",s,r,q,qb);
  s=0;r=1;#10;$display("%b %b | %b %b",s,r,q,qb);
  s=1;r=0;#10;$display("%b %b | %b %b",s,r,q,qb);
  s=1;r=1;#10;$display("%b %b | %b %b",s,r,q,qb);
end
endmodule
