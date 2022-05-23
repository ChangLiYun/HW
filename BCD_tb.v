// include "BCD.v"  
`timescale 1ns/10ps
module BCD_tb();
     reg clk,rst_asyn;
     wire [3:0]  Q_out;
  

     initial begin
     clk=0;
     forever #5 clk=~clk;
     end

     initial begin
     rst_asyn=0;
     #10rst_asyn=1;
     end
  	 initial begin
       $dumpfile("BCD.vcd");
       $dumpvars(0, BCD_tb);
	end
  initial begin
   rst_asyn = 1'b1;
#5 rst_asyn = 1'b0;
#30rst_asyn = 1'b1;
#10rst_asyn = 1'b0;
#300 $finish;
end
  
 	BCD BCD_tb (
      .clk(clk),
      .rst_asyn(rst_asyn),
      . Q_out( Q_out));
 endmodule
