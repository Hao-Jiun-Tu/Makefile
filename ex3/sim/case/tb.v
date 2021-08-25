task task_main;
begin
    a   = 1'b0;
    b   = 1'b0;
    cin = 1'b0;
    
    `ifdef ADD_ON
        repeat(2 ** 5) begin
            #1 {a, b, cin} = {a, b, cin} + 1'b1;

            #1 if((a + b + cin) != {cout, sum}) begin
                error_sum = error_sum + 1'b1;
            end
            
            $display("=========================");
            $display("a = %b, b = %b, cin = %b", a, b, cin);
            $display("cout = %b, sum = %b", cout, sum);
        end
    `else
        repeat(2 ** 5) begin
            #1 {a, b} = {a, b} + 1'b1;
            
            $display("=========================");
            $display("a = %b, b = %b", a, b);
            $display("sout = %b", sout);
        end
    `endif
end
endtask
