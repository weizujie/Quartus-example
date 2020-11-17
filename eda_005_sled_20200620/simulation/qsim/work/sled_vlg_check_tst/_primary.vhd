library verilog;
use verilog.vl_types.all;
entity sled_vlg_check_tst is
    port(
        dig             : in     vl_logic_vector(7 downto 0);
        seg             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end sled_vlg_check_tst;
