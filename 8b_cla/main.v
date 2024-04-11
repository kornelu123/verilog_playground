module hello;
  reg [7:0]x, y;
  reg      cin;

  wire [8:0]s; 
  wire cout;

  integer i;

  cla add(.x(x), .y(y), .s(s));

  initial begin
    x       <= 0;
    y       <= 0;
    cin     <= 0;

  $monitor ("x=%0d y=%0d s=%0d", x[7:0], y[7:0], s[8:0]);
  
  for(i = 0; i < 256*256; i++) begin
    {x, y} = i;
    #10;
  end
end
endmodule
