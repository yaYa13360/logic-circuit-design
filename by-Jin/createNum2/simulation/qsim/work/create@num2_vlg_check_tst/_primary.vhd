library verilog;
use verilog.vl_types.all;
entity createNum2_vlg_check_tst is
    port(
        tenT            : in     vl_logic_vector(3 downto 0);
        unitT           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end createNum2_vlg_check_tst;
