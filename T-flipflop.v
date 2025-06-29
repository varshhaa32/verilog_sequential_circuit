module tff(t,clk,q,qb);
input clk,t;
output reg q,qb;
always@(posedge clk)
begin
    if(t==0)
        q=1;
    else if(t==1)
        q=0;
    qb=~q;
end
endmodule