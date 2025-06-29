module tff_test;
reg clk,t;
wire q,qb;
tff t1(t,clk,q,qb);
initial
    clk=1'b0;
always #5 clk=~clk;
initial
begin
    $display("t | q  qb");
    t=0;#10;$display("%b | %b  %b",t,q,qb);
    t=1;#10;$display("%b | %b  %b",t,q,qb);
end
endmodule