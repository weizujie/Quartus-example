library verilog;
use verilog.vl_types.all;
entity my_and2_vlg_sample_tst is
    port(
        input1_1        : in     vl_logic;
        input2_2        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end my_and2_vlg_sample_tst;
