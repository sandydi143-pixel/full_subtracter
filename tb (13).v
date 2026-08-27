module tb_full_subtractor;

    reg A, B, C;
    wire Diff, Bout;

    full_subtractor san (
        .A(A),
        .B(B),
        .C(C),
        .Diff(Diff),
        .Bout(Bout)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_full_subtractor);

        $monitor("Time=%0t | A=%b B=%b C=%b | Diff=%b Bout=%b",
                 $time, A, B, C, Diff, Bout);

        {A, B, C} = 3'b000; #10;
        {A, B, C} = 3'b001; #10;
        {A, B, C} = 3'b010; #10;
        {A, B, C} = 3'b011; #10;
        {A, B, C} = 3'b100; #10;
        {A, B, C} = 3'b101; #10;
        {A, B, C} = 3'b110; #10;
        {A, B, C} = 3'b111; #10;

        $finish;
    end

endmodule