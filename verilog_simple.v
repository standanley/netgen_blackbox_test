// test
//

module verilog_simple (
    inout a,
    inout b,
    inout c
);


    child mychild1_v (
        .x_v(a),
        .y_v(b)
    );
    child mychild2_v (
        .x_v(a),
        .y_v(c)
    );


endmodule


module child (
    inout x,
    inout y,
);
    // behavioral! netgen should blackbox this
    always @(posedge x) y <= 1;
endmodule
    
