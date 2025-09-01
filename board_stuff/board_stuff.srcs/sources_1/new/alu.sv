module ALU #
(
    parameter DATA_WIDTH = 8
)(
    input logic [DATA_WIDTH-1:0] inA,
    input logic [DATA_WIDTH-1:0] inB,
    input logic [2:0] OPCode,
    output logic[DATA_WIDTH-1:0] outData,
    output logic[DATA_WIDTH-1:0] hiData
);

logic [DATA_WIDTH*2-1:0] product;



always_comb begin
    product = inA * inB;
    hiData = '0;
    

    unique case(OPCode)
        3'b000 : outData = inA + inB;
        3'b001 : outData = inA - inB;
        3'b010 : begin
            outData = product[DATA_WIDTH*2-1:DATA_WIDTH];
            hiData =  product[DATA_WIDTH*2-1:DATA_WIDTH]; 
        end
        3'b011 : outData = inA & inB;
        3'b100 : outData = inA | inB;
        default : outData = '0;
    endcase;
end

endmodule

