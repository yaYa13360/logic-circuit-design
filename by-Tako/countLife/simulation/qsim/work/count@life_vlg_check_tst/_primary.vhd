library verilog;
use verilog.vl_types.all;
entity countLife_vlg_check_tst is
    port(
        gameStatus      : in     vl_logic;
        led             : in     vl_logic_vector(0 to 3);
        sampler_rx      : in     vl_logic
    );
end countLife_vlg_check_tst;
