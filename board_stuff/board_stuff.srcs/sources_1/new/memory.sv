//# indicates parameter declaration
module RAM_synch #(
    parameter int DATA_WIDTH = 8,
    parameter int RAM_DEPTH = 16,
    //$c -> ceiling, log2
    localparam int ADDR_WIDTH = $clog2(RAM_DEPTH) 
)(
    input logic clk,
    input logic rst, //wipe all data
    input logic writeEN,
    input logic [ADDR_WIDTH-1:0] addr,
    input logic [DATA_WIDTH -1:0] rd_data,
    output logic [7:0] wr_data;
);

//DATA_WDITH-1 bits of data, RAM_DEPTh-1 values
logic [DATA_WIDTH-1:0] memory [0:RAM_DEPTH-1];

//SVerilog specific for flip flop, seq logic
always_ff @(posedge clock or negedge rst) begin

    //if writing
    if(writeEN) begin
        memory[addr] <= wr_data;
    end
    //if not writing read
    rdata <= memory[addr];
end

endmodule