module test_carry_save_adder;
    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] C;
    wire [3:0] Sum;
    wire [3:0] Carry;
    carry_save_adder uut (.A(A),.B(B),.C(C),.Sum(Sum),.Carry(Carry));
    initial begin
        $dumpfile("dumpfile.vcd");
    	$dumpvars(1);
        $display(" A    B    C    |  Sum  Carry");
        $display("----------------------------");
        // Test case 1
        A = 4'b0001; B = 4'b0010; C = 4'b0011;
        #10; 
        $display("%b  %b  %b  |  %b  %b", A, B, C, Sum, Carry);
        // Test case 2
        A = 4'b1010; B = 4'b0101; C = 4'b0011;
        #10;
        $display("%b  %b  %b  |  %b  %b", A, B, C, Sum, Carry);
        // Test case 3
        A = 4'b1111; B = 4'b1111; C = 4'b1111;
        #10;
        $display("%b  %b  %b  |  %b  %b", A, B, C, Sum, Carry);
        // Test case 4
        A = 4'b1001; B = 4'b0110; C = 4'b0010;
        #10;
        $display("%b  %b  %b  |  %b  %b", A, B, C, Sum, Carry);
        $finish;
    end
endmodule
