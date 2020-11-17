library verilog;
use verilog.vl_types.all;
entity full_addr_vlg_sample_tst is
    port(
        A_1             : in     vl_logic;
        B_2             : in     vl_logic;
        CIN_3           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end full_addr_vlg_sample_tst;
