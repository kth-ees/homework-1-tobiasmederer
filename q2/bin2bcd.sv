module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);
  // …
  // Add your description here
  //assign carry = (binary[3]&(binary[1]|binary[2])) ? 1 : 0;
  always_comb begin
    bcd = 4'b0000;
    carry = 1'b0;
    case (binary)
      4'b0000: begin bcd = 4'b0000; carry = 1'b0; end
      4'b0001: begin bcd = 4'b0001; carry = 1'b0; end
      4'b0010: begin bcd = 4'b0010; carry = 1'b0; end
      4'b0011: begin bcd = 4'b0011; carry = 1'b0; end
      4'b0100: begin bcd = 4'b0100; carry = 1'b0; end
      4'b0101: begin bcd = 4'b0101; carry = 1'b0; end
      4'b0110: begin bcd = 4'b0110; carry = 1'b0; end
      4'b0111: begin bcd = 4'b0111; carry = 1'b0; end
      4'b1000: begin bcd = 4'b1000; carry = 1'b0; end
      4'b1001: begin bcd = 4'b1001; carry = 1'b0; end
      4'b1010: begin bcd = 4'b0000; carry = 1'b1; end
      4'b1011: begin bcd = 4'b0001; carry = 1'b1; end
      4'b1100: begin bcd = 4'b0010; carry = 1'b1; end
      4'b1101: begin bcd = 4'b0011; carry = 1'b1; end
      4'b1110: begin bcd = 4'b0100; carry = 1'b1; end
      4'b1111: begin bcd = 4'b0101; carry = 1'b1; end
      default: begin bcd = 4'b0000; carry = 1'b0; end
    endcase
  end
  // …
endmodule
