library verilog;
use verilog.vl_types.all;
entity dled_17990425_vlg_check_tst is
    port(
        dig             : in     vl_logic_vector(7 downto 0);
        seg             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end dled_17990425_vlg_check_tst;
