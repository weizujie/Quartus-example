library verilog;
use verilog.vl_types.all;
entity half_addr is
    port(
        SUM             : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        CO              : out    vl_logic
    );
end half_addr;
