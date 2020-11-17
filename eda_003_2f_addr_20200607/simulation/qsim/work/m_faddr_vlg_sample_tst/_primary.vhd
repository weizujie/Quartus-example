library verilog;
use verilog.vl_types.all;
entity m_faddr_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        CIN             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end m_faddr_vlg_sample_tst;
