`timescale 1ns/100ps

module neuron_tb (

);

localparam DATA_WIDTH = 16;
localparam clk_period = 10;

reg clk = 0;
reg rst = 1;

reg [DATA_WIDTH-1:0] i_data = 16'hffff;
wire [DATA_WIDTH-1:0] o_data;

initial begin
    $dumpfile("neuron_tb.lxt");
    $dumpvars(0,neuron_tb);
end

initial begin
      #500  rst <= 0;
      #10_000 $finish;
end

always @ (*) begin
    #clk_period clk <= !clk;

end

neuron #(
    .DATA_WIDTH(DATA_WIDTH)
) uut (
    .clk(clk),
    .rst(rst),
    .i_data(i_data),
    .o_data(o_data)
);

endmodule
