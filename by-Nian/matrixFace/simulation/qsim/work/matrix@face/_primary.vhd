library verilog;
use verilog.vl_types.all;
entity matrixFace is
    port(
        clk             : in     vl_logic;
        TFS             : in     vl_logic;
        gameStatus      : in     vl_logic;
        col_s           : out    vl_logic_vector(0 to 7);
        row_s           : out    vl_logic_vector(0 to 7)
    );
end matrixFace;
