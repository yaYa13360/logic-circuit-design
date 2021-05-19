library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity creatNum is
port(clk,clk2: in std_logic;
		--unit : out std_logic_vector(4 downto 0);
		--tmp : out std_logic_vector(1 downto 0);
		tenT,unitT : out std_logic_vector(3 downto 0));--tenT十位,unitT個位
end creatNum;

architecture oo of creatNum is
signal od : std_logic_vector(1 downto 0);
signal op : std_logic_vector(4 downto 0);
signal tmp1 : integer; 
signal tp : integer;
signal up : integer;
 
begin
process(clk) ---0~24
begin
	if clk'event and clk='1' then
		case op is 
			when "00000" => 
				op <= "00001";
			when "00001" =>
				op <= "00010";
			when "00010" =>
				op <= "00011";
			when "00011" =>
				op <= "00100";
			when "00100" =>
				op <= "00101";
			when "00101" =>
				op <= "00110";
			when "00110" =>
				op <= "00111";
			when "00111" =>
				op <= "01000";
			when "01000" =>
				op <= "01001";
			when "01001" =>
				op <= "01010";
			when "01010" =>
				op <= "01011";
			when "01011" =>
				op <= "01100";
			when "01100" =>
				op <= "01101";
			when "01101" =>
				op <= "01110";
			when "01110" =>
				op <= "01111";
			when "01111" =>
				op <= "10000";
			when "10000" =>
				op <= "10001";
			when "10001" =>
				op <= "10010";
			when "10010" =>
				op <= "10011";
			when "10011" =>
				op <= "10100";
			when "10100" =>
				op <= "10101";
			when "10101" =>
				op <= "10110";
			when "10110" =>
				op <= "10111";
			when "10111" =>
				op <= "11000";
			when "11000" =>
				op <= "00000";
			when others =>
				op <= "00000";
		end case;
	end if;
end process;
process(clk2) ---0~4
begin
	if clk2'event and clk2='1' then
		case od is
			when "00" =>
				od <= "01";
			when "01" =>
				od <= "10";
			when "10" =>
				od <= "11";
			when "11" =>
				od <= "00";
			when others =>
				od <= "00";
		end case;
	end if;
end process;


tmp1 <= to_integer(unsigned(op)) + (25 * to_integer(unsigned(od)));--求範圍

tp <= tmp1 / 10;---十位
up <= tmp1 MOD 10;---個位

tenT <= std_logic_vector(to_unsigned(tp,tenT'length));
unitT <= std_logic_vector(to_unsigned(up,unitT'length));

--unit <= op;
--tmp <= od;

end oo;