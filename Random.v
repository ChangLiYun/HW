module Random (
input  clk, set,          
output reg[3:1] q );

initial
 q = 1; 

always@ (posedge clk) begin
    if(set)
        q <= 3'b101;
    else begin
       
         q[3] <= q[2];
         q[2] <= q[1];
         q[1] <= q[1] ^ q[3];
    end
end
endmodule
