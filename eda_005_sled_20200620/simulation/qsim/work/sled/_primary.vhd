library verilog;
use verilog.vl_types.all;
entity sled is
    port(
        dig             : out    vl_logic_vector(7 downto 0);
        seg             : out    vl_logic_vector(7 downto 0);
        CLK_48M         : in     vl_logic
    );
end sled;
