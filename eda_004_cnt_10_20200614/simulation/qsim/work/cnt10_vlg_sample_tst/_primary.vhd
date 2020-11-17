library verilog;
use verilog.vl_types.all;
entity cnt10_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        din             : in     vl_logic_vector(3 downto 0);
        en              : in     vl_logic;
        load            : in     vl_logic;
        rst             : in     vl_logic;
        updown          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cnt10_vlg_sample_tst;
