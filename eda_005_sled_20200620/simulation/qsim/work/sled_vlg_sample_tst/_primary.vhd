library verilog;
use verilog.vl_types.all;
entity sled_vlg_sample_tst is
    port(
        CLK_48M         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sled_vlg_sample_tst;
