task task_error_display; 
begin
    if(error_sum == 0) begin
        $display("OK : OUTPUT CHECK DONE !");
    end
    else begin
        task_display_fail;
    end
end
endtask

task task_display_fail;
begin
    $display("#####     #       ###    #     ");
    $display("#        # #       #     #     ");
    $display("####    #####      #     #     ");
    $display("#      #     #     #     #     ");
    $display("#      #     #    ###    ##### ");
end
endtask
