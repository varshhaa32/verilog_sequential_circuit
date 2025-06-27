module dff_test;
reg clk,d;
wire q,qb;
dff d1(d,clk,q,qb);
initial
    clk=1'b0;
always #5 clk=~clk;
initial
begin
    $display("d | q  qb");
    d=0;#10;$display("%b | %b  %b",d,q,qb);
    d=1;#10;$display("%b | %b  %b",d,q,qb);
end
endmodule