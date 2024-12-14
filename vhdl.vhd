library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity russian_roulette is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           fire : in STD_LOGIC;  -- Trigger signal
           loaded_chamber : out STD_LOGIC_VECTOR (2 downto 0); -- The chamber that is loaded
           shot_fired : out STD_LOGIC); -- Output to indicate if the shot is fired
end russian_roulette;

architecture Behavioral of russian_roulette is

    signal chamber : STD_LOGIC_VECTOR (2 downto 0); -- 3-bit chamber address (6 chambers)
    signal random_number : integer range 0 to 5 := 0; -- Random number between 0 and 5
    signal shot : STD_LOGIC := '0';  -- Indication of shot being fired (1 = shot fired)
    
    -- Random number generator (for simplicity, using a counter as a pseudo-random number generator)
    signal counter : integer range 0 to 5 := 0;
    
begin
    -- Simple random number generation using a counter (not truly random, just for simulation)
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            random_number <= 0;
        elsif rising_edge(clk) then
            if counter = 5 then
                counter <= 0;
                random_number <= random_number + 1;  -- Cycle between 0 and 5
                if random_number = 5 then
                    random_number <= 0; -- Reset to 0 after hitting 5
                end if;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    -- Assigning the chamber number based on random number
    chamber <= STD_LOGIC_VECTOR(to_unsigned(random_number, 3));

    -- Trigger signal to fire
    process(clk, reset)
    begin
        if reset = '1' then
            shot <= '0';
            shot_fired <= '0';
        elsif rising_edge(clk) then
            if fire = '1' then
                -- Simulate shot fired: if the random number matches chamber 0 (loaded chamber)
                if random_number = 0 then
                    shot <= '1';
                else
                    shot <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Output the result of shot fired
    shot_fired <= shot;

    -- Output the loaded chamber (the chamber that is randomly selected)
    loaded_chamber <= chamber;

end Behavioral;
