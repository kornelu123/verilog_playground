module hsum (input      x,
             input      y,
             output     p,
             output     g,
             output     h
             );


assign h = x ^ y;
assign p = x | y;
assign g = x & y;

endmodule

module scalar (input gl, gh,
               input pl, ph,
               output glh,
               output plh
               );

assign glh = gh | ( ph & gl );
assign plh = ( ph & pl );

endmodule

module sum (input   hi,
            input   gi,
            output  s
            );

assign s = hi ^ gi;

endmodule
