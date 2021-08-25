reg        a         ;
reg        b         ;
reg        cin       ;
wire       sum       ;
wire       cout      ;
wire [1:0] sout      ;

reg  [5:0] error_sum ;

initial begin
	a         = 1'b0 ;
	b         = 1'b0 ;
	cin       = 1'b0 ;
	error_sum = 6'b0 ;
end
