// test
//

module verilog_simple (
    inout a_s,
    inout b_s,
    inout c_s
);


    child_v mychild1_v (
        .child_x_v(a_s),
        .child_y_v(b_s)
    );
    child_v mychild2_v (
        .child_x_v(a_s),
        .child_y_v(c_s)
    );


endmodule


module child (
    inout child_x,
    inout child_y,
);
    // behavioral! netgen should blackbox this
    always @(posedge child_x) child_y <= 1;
endmodule
    
