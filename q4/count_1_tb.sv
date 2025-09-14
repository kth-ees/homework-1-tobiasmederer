module count_1_tb;

  // Inputs
  logic [3:0] a;

  // Outputs
  logic [2:0] out;

  // complete
  // Instantiate 
  count_1 uut (
    .a(a),
    .out(out)
  );

  // Complete your testbench here
  initial begin
    #10 a = 4'b0000;
    #10 a = 4'b0001;
    #10 a = 4'b0010;
    #10 a = 4'b0011;
    #10 a = 4'b0100;
    #10 a = 4'b0101;
    #10 a = 4'b0110;
    #10 a = 4'b0111;
    #10 a = 4'b1000;
    #10 a = 4'b1001;
    #10 a = 4'b1010;
    #10 a = 4'b1011;
    #10 a = 4'b1100;
    #10 a = 4'b1101;
    #10 a = 4'b1110;
    #10 a = 4'b1111;
    #10 $stop;
  end
endmodule
