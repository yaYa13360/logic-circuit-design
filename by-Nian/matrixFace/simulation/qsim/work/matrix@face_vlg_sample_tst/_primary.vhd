library verilog;
use verilog.vl_types.all;
entity matrixFace_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        gameStatus      : in     vl_logic;
        TFS             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end matrixFace_vlg_sample_tst;
