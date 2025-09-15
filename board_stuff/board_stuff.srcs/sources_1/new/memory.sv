//# indicates parameter declaration
module RAM_synch #(
    parameter int DATA_WIDTH = 8,
    parameter int RAM_DEPTH = 16,
    //$c -> ceiling, log2
    localparam int ADDR_WIDTH = $clog2(RAM_DEPTH) 
    //localparam can't be changed, parameter can be changed in module instantiation
)(
    input logic clk,
    input logic rst, //wipe all data
    input logic writeEN,
    input logic [ADDR_WIDTH-1:0] addr,
<<<<<<< HEAD
    input logic [7:0] wr_data,
    output logic [DATA_WIDTH -1:0] rd_data
=======
    input logic [DATA_WIDTH -1:0] wr_data,
    output logic [DATA_WIDTH-1:0] rd_data
>>>>>>> 6c72b862c490c2f83b509d3f4088c69a3a94d946
);

//DATA_WDITH-1 bits of data, RAM_DEPTh-1 values
logic [DATA_WIDTH-1:0] memory [0:RAM_DEPTH-1];

//SVerilog specific for flip flop, seq logic
always_ff @(posedge clk or negedge rst) begin
<<<<<<< HEAD

=======
    //add reset to wipe memory
    
>>>>>>> 6c72b862c490c2f83b509d3f4088c69a3a94d946
    //if writing
    if(writeEN) begin
        memory[addr] <= wr_data;
    end
    //if not writing read
    rd_data <= memory[addr];
end

endmodule