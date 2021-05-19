library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity createNum2 is
port(clk1,clk2: in std_logic;
		tenT,unitT : out std_logic_vector(3 downto 0));
end createNum2;

architecture oo of createNum2 is
signal op2 : std_logic_vector(3 downto 0);
signal op1 : std_logic_vector(3 downto 0);
signal tp : integer;
signal up : integer;
 
begin
process(clk1) ---0~9個位
begin
	if clk1'event and clk1='1' then
		case op1 is 
			when "0000" => 
				op1 <= "0001";
			when "0001" =>
				op1 <= "0010";
			when "0010" =>
				op1 <= "0011";
			when "0011" =>
				op1 <= "0100";
			when "0100" =>
				op1 <= "0101";
			when "0101" =>
				op1 <= "0110";
			when "0110" =>
				op1 <= "0111";
			when "0111" =>
				op1 <= "1000";
			when "1000" =>
				op1 <= "1001";
			when "1001" =>
				op1 <= "0000";
			when others =>
				op1 <= "0000";
		end case;
	end if;
end process;
process(clk2) ---9~0十位
begin
	if clk2'event and clk2='1' then
		case op2 is 
			when "1001" => 
				op2 <= "1000";
			when "1000" =>
				op2 <= "0111";
			when "0111" =>
				op2 <= "0110";
			when "0110" =>
				op2 <= "0101";
			when "0101" =>
				op2 <= "0100";
			when "0100" =>
				op2 <= "0011";
			when "0011" =>
				op2 <= "0010";
			when "0010" =>
				op2 <= "0001";
			when "0001" =>
				op2 <= "0000";
			when "0000" =>
				op2 <= "1001";
			when others =>
				op2 <= "1001";
		end case;
	end if;
end process;

tp <= 9 * to_integer(unsigned(op2));---十位
up <= 9 * to_integer(unsigned(op1));---個位

tenT <= std_logic_vector(to_unsigned(tp,tenT'length));
unitT <= std_logic_vector(to_unsigned(up,unitT'length));

end oo;