module dut(rst, clk, q);
    input rst;
    input clk;
    output q;
    reg [7:0] c;
    always @ (posedge clk)
    begin
        if (rst == 1b'1) begin
            c <= 8'b00000000;
        end
        else begin
            c <= c + 1;
        end
    assign q = c;
endmodule
