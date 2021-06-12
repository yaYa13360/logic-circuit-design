library verilog;
use verilog.vl_types.all;
entity CompareNum is
    port(
        enter           : in     vl_logic;
        u               : in     vl_logic_vector(0 to 7);
        g               : in     vl_logic_vector(0 to 7);
        TFS             : out    vl_logic_vector(0 to 1);
        reset           : in     vl_logic
    );
end CompareNum;
