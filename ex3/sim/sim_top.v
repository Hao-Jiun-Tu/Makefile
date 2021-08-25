`timescale 1ns/1ps

module sim_top;

`include "./param_setting.v"
`include "./case/tb.v"
`include "./case/error_display.v"

initial begin
    task_main;
    task_error_display;
    $finish;
end


//======== fsdb waveform =========
`ifdef DUMPFSDB_ON
    initial begin 
        $fsdbDumpfile("system.fsdb");
        $fsdbDumpvars(0, sim_top);
        $fsdbDumpflush;
    end
`endif

`ifdef ADD_ON
adder u_adder(
    .a	    (a    ),
    .b	    (b    ),
    .cin    (cin  ),
    .sum    (sum  ),
    .cout   (cout )
);
`else
subst u_subst(
    .a	    (a    ),
    .b	    (b    ),
    .sout   (sout )
);    
`endif

endmodule
