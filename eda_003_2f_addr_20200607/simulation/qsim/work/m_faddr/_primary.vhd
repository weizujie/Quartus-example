library verilog;
use verilog.vl_types.all;
entity m_faddr is
    port(
        CO              : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        CIN             : in     vl_logic;
        SUM             : out    vl_logic_vector(3 downto 0)
    );
end m_faddr;
