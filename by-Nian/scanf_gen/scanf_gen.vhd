library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity scanf_gen is
	generic(divisor:integer:=78670); --2517500/78670=320
port(
		clockin : in std_logic;
		clockout : out std_logic
		);
end scanf_gen;

architecture arch of scanf_gen is
	signal PULSE : std_logic;
begin

  ---clk divider---
	process(clockin)
		variable counter,divisor2 : integer range 0 to divisor;
	begin
		divisor2:=divisor/2;
		---up counter---
		if (clockin'event and clockin='1') then
			if counter = divisor then
				counter := 1;
			else
				counter := counter + 1;
			end if;
		end if;
		
		---clk_out register clk generator---
		if (clockin'event and clockin='1') then
			if ((counter=divisor2) or (counter=divisor))then
				PULSE <= not PULSE;
			end if;
		end if;
		clockout <= PULSE;
	end process;
end arch;

		