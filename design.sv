module carry_save_adder (input [3:0] A,input [3:0] B,input [3:0] C,output [3:0] Sum,output [3:0] Carry);
wire [3:0] partial_sum;  
wire [3:0] partial_carry; 
assign partial_sum = A ^ B ^ C;  
assign partial_carry = (A & B) | (B & C) | (A & C);  
assign Sum = partial_sum;  
assign Carry = partial_carry;  
endmodule
