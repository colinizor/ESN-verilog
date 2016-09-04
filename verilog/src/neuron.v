module neuron #(

    parameter DATA_WIDTH = 16

) (

    input clk,
    input rst,
    input [DATA_WIDTH-1:0] i_data,
    output reg [DATA_WIDTH-1:0] o_data
    

);


always @ (posedge clk) begin
    if(rst) begin
        o_data <= 0;
    end else begin
        o_data <= i_data;
    end
end

endmodule
