-- library and package
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- entity
entity Q2 is
    port(
          a, b, c, d, e, f, g, h: in std_logic;    -- 8 input signals
          ch: in std_logic_vector(2 downto 0);    -- 3-bit selector
          data: out std_logic    -- output signal
        );
end entity Q2;

-- architecture
architecture bhv of Q2 is
begin
    process(a, b, c, d, e, f, g, h, ch)
    begin
        case ch is
            when "000" => data <= a;    -- if ch = 0, choose input a
            when "001" => data <= b;    -- if ch = 1, choose input b
            when "010" => data <= c;    -- if ch = 2, choose input c
            when "011" => data <= d;    -- if ch = 3, choose input d
            when "100" => data <= e;    -- if ch = 4, choose input e
            when "101" => data <= f;    -- if ch = 5, choose input f
            when "110" => data <= g;    -- if ch = 6, choose input g
            when "111" => data <= h;    -- if ch = 7, choose input h
            when others => data <= '0';
        end case;
    end process;
end architecture bhv;
