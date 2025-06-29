module(clk,j,k,q,qb);
input clk,j,k;
output q,qb;
always@(posedge clk)
begin
  case({j,k})
  2'b00:q<=q;qb<=qb;
  2'b01:q<=0;qb<=1;
  2'b10:q<=1;q<=0;
  2'b11:q<=qb;qb<=q;
  endcase
  qb=~q;
end
endmodule