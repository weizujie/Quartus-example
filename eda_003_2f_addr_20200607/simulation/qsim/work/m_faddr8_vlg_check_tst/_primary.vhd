library verilog;
use verilog.vl_types.all;
entity m_faddr8_vlg_check_tst is
    port(
        CO              : in     vl_logic;
        SUM             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end m_faddr8_vlg_check_tst;
