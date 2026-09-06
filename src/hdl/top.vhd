
library ieee;
  use ieee.std_logic_1164.all;


entity top is
  generic (
    -- Data width
    data_width : positive := 32;
    -- Address width
    addr_width : positive := 16;
    -- Debug level
    debug_level : std_logic_vector(3 downto 0) := "0000"
  );
  port (
    -- Clock
    clk_p : in std_logic;
    clk_n : in std_logic;
    -- Reset
    rst_n : in std_logic;
    -- User / External Inputs
    data_in : in std_logic_vector(data_width-1 downto 0);
    addr_in : in std_logic_vector(addr_width-1 downto 0);
    -- User / External Outputs
    data_out  : out std_logic_vector(data_width-1 downto 0);
    valid_out : out std_logic
  );
end entity top;


architecture rtl of top is

  -- Internal declarations

begin

  -- RTL

end architecture rtl;
