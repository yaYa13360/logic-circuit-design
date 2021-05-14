library verilog;
use verilog.vl_types.all;
entity countLife is
    port(
        touch           : in     vl_logic;
        start           : in     vl_logic;
        led             : out    vl_logic_vector(0 to 3);
        gameStatus      : out    vl_logic
    );
end countLife;
