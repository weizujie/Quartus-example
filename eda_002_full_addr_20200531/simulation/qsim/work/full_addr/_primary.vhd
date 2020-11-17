library verilog;
use verilog.vl_types.all;
entity full_addr is
    port(
        CO_7            : out    vl_logic;
        A_1             : in     vl_logic;
        B_2             : in     vl_logic;
        CIN_3           : in     vl_logic;
        SUM_10          : out    vl_logic
    );
end full_addr;
