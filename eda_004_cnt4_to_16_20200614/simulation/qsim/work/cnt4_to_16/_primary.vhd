library verilog;
use verilog.vl_types.all;
entity cnt4_to_16 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        co              : out    vl_logic;
        q               : out    vl_logic_vector(1 downto 0)
    );
end cnt4_to_16;
