module csa_8 (
  input logic [7:0] a, b,
  output logic [7:0] sum,
  output logic carry
);
  // …
  // Add your description here
  // …
  logic carry_lsb; //carry out of the lsb adder -> carry in for next 4 bits
  adder_4 lsb ( //LSB bits 3..0 in first adder
    .A(a[3:0]),
    .B(b[3:0]),
    .sum(sum[3:0]),
    .carry(carry_lsb)
  );

  logic [3:0] sum_msb_c_in_zero; //sum of msb parts when carry in is zero
  logic carry_msb_c_in_zero; //carry out of the msb adder -> carry out of 8 bit adder
  adder_4 msb_c_in_zero (a[7:4], b[7:4], sum_msb_c_in_zero, carry_msb_c_in_zero);
   
  //when carry in is one -> need two adders as adder module has no carry in
  //recycle adder with no carry in and just increment by one
  logic [3:0] sum_msb_c_in_one; //sum of msb parts without carry in
  logic carry_msb_c_in_one; //carry out of the msb adder -> carry out of 8 bit adder
  adder_4 msb_c_in_one (sum_msb_c_in_zero, 4'b0001, sum_msb_c_in_one, carry_msb_c_in_one);

  //now MUX output
  assign sum[7:4] = carry_lsb ? sum_msb_c_in_one : sum_msb_c_in_zero;
  assign carry = carry_lsb ? (carry_msb_c_in_one|carry_msb_c_in_zero) : carry_msb_c_in_zero;
  
endmodule
