module cla (input [7:0]     x,
            input [7:0]     y,
            output [8:0]    s
            );

wire    [7:0]pi;
wire    [7:0]gi;
wire    [7:0]hi;

wire    [11:0]tmpgi;
wire    [11:0]tmppi;

hsum h0 (x[0], y[0], pi[0], gi[0], hi[0]);
hsum h1 (x[1], y[1], pi[1], gi[1], hi[1]);
hsum h2 (x[2], y[2], pi[2], gi[2], hi[2]);
hsum h3 (x[3], y[3], pi[3], gi[3], hi[3]);
hsum h4 (x[4], y[4], pi[4], gi[4], hi[4]);
hsum h5 (x[5], y[5], pi[5], gi[5], hi[5]);
hsum h6 (x[6], y[6], pi[6], gi[6], hi[6]);
hsum h7 (x[7], y[7], pi[7], gi[7], hi[7]);

scalar sc0 (gi[0], gi[1], pi[0], pi[1], tmpgi[0], tmppi[0]);
scalar sc1 (gi[2], gi[3], pi[2], pi[3], tmpgi[1], tmppi[1]);
scalar sc2 (gi[4], gi[5], pi[4], pi[5], tmpgi[2], tmppi[2]);
scalar sc3 (gi[6], gi[7], pi[6], pi[7], tmpgi[3], tmppi[3]);

scalar sc1_0 (tmpgi[0], gi[2]   , tmppi[0], pi[2]   , tmpgi[4], tmppi[4]);
scalar sc1_1 (tmpgi[0], tmpgi[1], tmppi[0], tmppi[1], tmpgi[5], tmppi[5]);
scalar sc1_2 (tmpgi[2], gi[6]   , tmppi[2], pi[6]   , tmpgi[6], tmppi[6]);
scalar sc1_3 (tmpgi[2], tmpgi[3], tmppi[2], tmppi[3], tmpgi[7], tmppi[7]);

scalar sc2_0 (tmpgi[5], gi[4]   , tmppi[5], pi[4]   ,tmpgi[8]  ,tmppi[8]);
scalar sc2_1 (tmpgi[5], tmpgi[2], tmppi[5], tmppi[2],tmpgi[9]  ,tmppi[9]); 
scalar sc2_2 (tmpgi[5], tmpgi[6], tmppi[5], tmppi[6],tmpgi[10] ,tmppi[10]);
scalar sc2_3 (tmpgi[5], tmpgi[7], tmppi[5], tmppi[7],tmpgi[11] ,tmppi[11]);

assign s[0] = hi[0];

sum s1(hi[1], gi[0]    ,s[1]);
sum s2(hi[2], tmpgi[0] ,s[2]);
sum s3(hi[3], tmpgi[4] ,s[3]);
sum s4(hi[4], tmpgi[5] ,s[4]);
sum s5(hi[5], tmpgi[8] ,s[5]);
sum s6(hi[6], tmpgi[9] ,s[6]);
sum s7(hi[7], tmpgi[10],s[7]);

assign s[8] = tmpgi[11];

endmodule
