library verilog;
use verilog.vl_types.all;
entity countLife_vlg_sample_tst is
    port(
        start           : in     vl_logic;
        touch           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end countLife_vlg_sample_tst;
