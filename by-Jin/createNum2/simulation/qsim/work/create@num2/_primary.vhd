library verilog;
use verilog.vl_types.all;
entity createNum2 is
    port(
        clk1            : in     vl_logic;
        clk2            : in     vl_logic;
        tenT            : out    vl_logic_vector(3 downto 0);
        unitT           : out    vl_logic_vector(3 downto 0)
    );
end createNum2;
