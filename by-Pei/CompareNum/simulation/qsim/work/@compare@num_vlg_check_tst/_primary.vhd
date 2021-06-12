library verilog;
use verilog.vl_types.all;
entity CompareNum_vlg_check_tst is
    port(
        TFS             : in     vl_logic_vector(0 to 1);
        sampler_rx      : in     vl_logic
    );
end CompareNum_vlg_check_tst;
