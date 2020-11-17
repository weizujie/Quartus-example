library verilog;
use verilog.vl_types.all;
entity dled_17990425 is
    port(
        dig             : out    vl_logic_vector(7 downto 0);
        CLK48M          : in     vl_logic;
        seg             : out    vl_logic_vector(7 downto 0)
    );
end dled_17990425;
