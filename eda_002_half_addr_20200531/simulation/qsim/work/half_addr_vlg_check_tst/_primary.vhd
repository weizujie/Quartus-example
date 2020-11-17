library verilog;
use verilog.vl_types.all;
entity half_addr_vlg_check_tst is
    port(
        CO              : in     vl_logic;
        SUM             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end half_addr_vlg_check_tst;
