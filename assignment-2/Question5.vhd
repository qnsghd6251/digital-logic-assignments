-- library and package
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- entity
entity Q5 is
    port(
          en: in std_logic;    -- enable signal
          vt: in std_logic_vector(12 downto 0);    -- 13-bit input vector
          display: out std_logic_vector(7 downto 0)    -- 7-segment output pattern
        );
end entity Q5;

-- architecture
architecture bhv of Q5 is
begin
    process(en, vt)
    variable sum: integer range 0 to 15;
    begin
        sum:= 0;
        if en = '0' then
            display <= "00000000";
        else 
            for i in 0 to 12 loop
                if (vt(i) = '1') then
                    sum:= sum + 1;
                end if;
            end loop;
            case sum is 
                when 0 => display <= "11111100";    -- pattern for '0'
                when 1 => display <= "01100000";    -- pattern for '1'
                when 2 => display <= "11011010";    -- pattern for '2'
                when 3 => display <= "11110010";    -- pattern for '3'
                when 4 => display <= "01100110";    -- pattern for '4'
                when 5 => display <= "10110110";    -- pattern for '5'
                when 6 => display <= "10111110";    -- pattern for '6'
                when 7 => display <= "11100000";    -- pattern for '7'
                when 8 => display <= "11111110";    -- pattern for '8'
                when 9 => display <= "11110110";    -- pattern for '9'
                when 10 => display <= "11101110";    -- pattern for 'A'
                when 11 => display <= "00111110";    -- pattern for 'B'
                when 12 => display <= "10011100";    -- pattern for 'C'
                when 13 => display <= "01111010";    -- pattern for 'D'
                when 14 => display <= "10011110";    -- pattern for 'E'
                when 15 => display <= "10001110";    -- pattern for 'F'
                when others => display <= "00000000";    -- default: display OFF
            end case;
        end if;
    end process;
end architecture bhv;
