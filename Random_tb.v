module Random_tb;
reg clk; 
reg set;  
wire [3:1] out;  


always #5 clk = !clk;

initial begin
    clk = 0;
    #0  set=1'b1;
    #15 set=1'b0;
    #200 $finish;
end

Random Random_tb(.clk(clk), .set(set), .q(out));

initial begin
    $dumpfile("Random.vcd");
    $dumpvars(0, Random_tb);
end
endmodule 
