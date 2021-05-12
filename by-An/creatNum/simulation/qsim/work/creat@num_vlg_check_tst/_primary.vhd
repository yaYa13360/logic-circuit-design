library verilog;
use verilog.vl_types.all;
entity creatNum_vlg_check_tst is
    port(
        tenT            : in     vl_logic_vector(4 downto 0);
        tmp             : in     vl_logic_vector(1 downto 0);
        unit            : in     vl_logic_vector(4 downto 0);
        unitT           : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end creatNum_vlg_check_tst;
