library verilog;
use verilog.vl_types.all;
entity creatNum is
    port(
        clk             : in     vl_logic;
        clk2            : in     vl_logic;
        unit            : out    vl_logic_vector(4 downto 0);
        tmp             : out    vl_logic_vector(1 downto 0);
        tenT            : out    vl_logic_vector(4 downto 0);
        unitT           : out    vl_logic_vector(4 downto 0)
    );
end creatNum;
