library verilog;
use verilog.vl_types.all;
entity cnt4_to_16_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cnt4_to_16_vlg_sample_tst;
