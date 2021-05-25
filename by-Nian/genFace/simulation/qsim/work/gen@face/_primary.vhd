library verilog;
use verilog.vl_types.all;
entity genFace is
    port(
        col_s0          : out    vl_logic;
        clock           : in     vl_logic;
        TFS             : in     vl_logic;
        gameStatus      : in     vl_logic;
        col_s1          : out    vl_logic;
        col_s2          : out    vl_logic;
        col_s3          : out    vl_logic;
        col_s4          : out    vl_logic;
        col_s5          : out    vl_logic;
        col_s6          : out    vl_logic;
        col_s7          : out    vl_logic;
        row_s0          : out    vl_logic;
        row_s1          : out    vl_logic;
        row_s2          : out    vl_logic;
        row_s3          : out    vl_logic;
        row_s4          : out    vl_logic;
        row_s5          : out    vl_logic;
        row_s6          : out    vl_logic;
        row_s7          : out    vl_logic
    );
end genFace;
