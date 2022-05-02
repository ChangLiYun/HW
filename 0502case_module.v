module voter_if (I, o);
input  [3:0] I;// I 4 men
  output [3:1] o;
  reg    [3:1] o;// O Result
always@ (I)
  case (I)
  4'b0000: o=100;
  4'b0001: o=100; 
  4'b0010: o=100;
  4'b0011: o=010;
  4'b0100: o=100;
  4'b0101: o=010;
  4'b0110: o=010;
  4'b0111: o=001;
  4'b1000: o=100;
  4'b1001: o=010;
  4'b1010: o=010;
  4'b1011: o=001;
  4'b1100: o=010;
  4'b1101: o=001;
  4'b1110: o=001;
  4'b1111: o=001;
  endcase
endmodule
