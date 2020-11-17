library verilog;
use verilog.vl_types.all;
entity cnt10 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        updown          : in     vl_logic;
        load            : in     vl_logic;
        din             : in     vl_logic_vector(3 downto 0);
        co              : out    vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end cnt10;
