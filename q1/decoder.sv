module decoder (
  input logic [3:0] binary,
  output logic [15:0] one_hot
);
  // …
  // Add your description here
  always_comb begin
    one_hot = '0; //output rule, all to 0 as one hot decoder
    one_hot[15-binary] = 1'b1; //because bits inverted if binary is 0, LSB so in array last bit goes to 1
  end
  // …
endmodule
