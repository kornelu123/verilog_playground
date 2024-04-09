module full_adder ( input       x,
                                y,
                                cin,
                    output      s,
                                cout
                   );
  
  assign    s = x ^ y ^ cin;
  assign    cout = x&y | ( x ^ y ) & cin;

endmodule
