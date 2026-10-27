-- library and package
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- entity
entity Q3 is
    port(
          en: in std_logic;    -- enable signal (active high)
          dat: in std_logic_vector(3 downto 0);    -- 4-bit input data
          display: out std_logic_vector(7 downto 0)    -- 8-bit 7-segment output
        );
end entity Q3;

-- architecture
architecture bhv of Q3 is
begin
    process(en, dat)
    begin
        if en = '0' then
            display <= "00000000";
        else 
            case dat is 
                when "0000" => display <= "11111010";    -- pattern for 'a'
                when "0001" => display <= "00111110";    -- pattern for 'b'
                when "0010" => display <= "10011100";    -- pattern for 'c'
                when "0011" => display <= "01111010";    -- pattern for 'd'
                when "0101" => display <= "10001110";    -- pattern for 'f'
                when "0110" => display <= "11110110";    -- pattern for 'g'
                when others => display <= "00000000";    -- default: display OFF
            end case;
        end if;
    end process;
end architecture bhv;
