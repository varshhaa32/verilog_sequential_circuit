module jkff_tb;
reg clk;
reg j,k;
wire q,qb;
jkff s1(j,k,clk,q,qb);
initial 
  clk=1'b0;
always #5 clk=~clk;
initial begin
  $display("j k | q qb");
  j=0;k=0;#10;$display("%b %b | %b %b",j,k,q,qb);
  j=0;k=1;#10;$display("%b %b | %b %b",j,k,q,qb);
  j=1;k=0;#10;$display("%b %b | %b %b",j,k,q,qb);
  j=1;k=1;#10;$display("%b %b | %b %b",j,k,q,qb);
end
endmodule