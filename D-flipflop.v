module dff(d,clk,q,qb);
input clk,d;
output reg q,qb;
always@(posedge clk)
begin
    if(d==0)
        q=0;
    else if(d==1)
        q=1;
    qb=~q;
end
endmodule