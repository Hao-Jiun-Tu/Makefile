module subst(
    input  signed       a    ,
    input  signed       b    ,
    output signed [1:0] sout
);

assign sout = a - b;

endmodule
