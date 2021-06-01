library verilog;
use verilog.vl_types.all;
entity matrixFace_vlg_check_tst is
    port(
        col2            : in     vl_logic_vector(0 to 7);
        col_s           : in     vl_logic_vector(0 to 7);
        row_s           : in     vl_logic_vector(0 to 7);
        sampler_rx      : in     vl_logic
    );
end matrixFace_vlg_check_tst;
