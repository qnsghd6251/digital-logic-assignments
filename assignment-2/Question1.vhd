-- library and package
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- entity
entity Q1 is
    port(
          a, b, c, d: in std_logic;    -- four 1-bit input signals
          out1, out2: out std_logic    -- two 1-bit output signals
        );
end entity Q1;

-- architecture
architecture bhv of Q1 is
begin
    out1 <= a and b and c and d;
    out2 <= a or b or c or d;
end architecture bhv;
