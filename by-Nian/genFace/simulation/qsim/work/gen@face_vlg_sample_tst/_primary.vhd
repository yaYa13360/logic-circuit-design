library verilog;
use verilog.vl_types.all;
entity genFace_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        gameStatus      : in     vl_logic;
        TFS             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end genFace_vlg_sample_tst;
