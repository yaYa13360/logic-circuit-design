library verilog;
use verilog.vl_types.all;
entity CompareNum_vlg_sample_tst is
    port(
        enter           : in     vl_logic;
        g               : in     vl_logic_vector(0 to 7);
        reset           : in     vl_logic;
        u               : in     vl_logic_vector(0 to 7);
        sampler_tx      : out    vl_logic
    );
end CompareNum_vlg_sample_tst;
