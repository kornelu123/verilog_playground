module rca ( input  [7:0]       x, y,
             output [8:0]       s,
             output             cout
           );

wire cin[6:0];

full_adder fadd0 (.x(x[0]), .y(y[0]), .cin(1'b0), .s(s[0]), .cout(cin[0]));
full_adder fadd1 (.x(x[1]), .y(y[1]), .cin(cin[0]), .s(s[1]), .cout(cin[1]));
full_adder fadd2 (.x(x[2]), .y(y[2]), .cin(cin[1]), .s(s[2]), .cout(cin[2]));
full_adder fad3 (.x(x[3]), .y(y[3]), .cin(cin[2]), .s(s[3]), .cout(cin[3]));
full_adder fadd4 (.x(x[4]), .y(y[4]), .cin(cin[3]), .s(s[4]), .cout(cin[4]));
full_adder fadd5 (.x(x[5]), .y(y[5]), .cin(cin[4]), .s(s[5]), .cout(cin[5]));
full_adder fadd6 (.x(x[6]), .y(y[6]), .cin(cin[5]), .s(s[6]), .cout(cin[6]));
full_adder fadd7 (.x(x[7]), .y(y[7]), .cin(cin[6]), .s(s[7]), .cout(s[8]));

endmodule
