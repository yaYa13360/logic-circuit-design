library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity matrixFace is
	port( clk,TFS,gameStatus : in std_logic;
			col_s,row_s : out std_logic_vector(0 to 7));
end matrixFace;

architecture a of matrixFace is
signal cnt : std_logic_vector(2 downto 0);
begin
	process(clk)
	begin
		if clk'event and clk='1' then
			if TFS='1' then--猜中(laught)
				case cnt is
						when "000" => col_s<="00000000";row_s<="01111111";
						when "001" => col_s<="00100100";row_s<="10111111";
						when "010" => col_s<="00100100";row_s<="11011111";
						when "011" => col_s<="00100100";row_s<="11101111";
						when "100" => col_s<="00000000";row_s<="11110111";
						when "101" => col_s<="01000010";row_s<="11111011";
						when "110" => col_s<="00100100";row_s<="11111101";
						when others => col_s<="00011000";row_s<="11111110";
				end case;
			else--沒猜中
				if gameStatus='0' then--還有命(cry)
					case cnt is
							when "000" => col_s<="00000000";row_s<="01111111";
							when "001" => col_s<="00100100";row_s<="10111111";
							when "010" => col_s<="00100100";row_s<="11011111";
							when "011" => col_s<="00100100";row_s<="11101111";
							when "100" => col_s<="00000000";row_s<="11110111";
							when "101" => col_s<="00011000";row_s<="11111011";
							when "110" => col_s<="00100100";row_s<="11111101";
							when others => col_s<="01000010";row_s<="11111110";
					end case;
				else --沒命了(cry)
					case cnt is
							when "000" => col_s<="00000000";row_s<="01111111";
							when "001" => col_s<="00100100";row_s<="10111111";
							when "010" => col_s<="00100100";row_s<="11011111";
							when "011" => col_s<="00100100";row_s<="11101111";
							when "100" => col_s<="00000000";row_s<="11110111";
							when "101" => col_s<="00011000";row_s<="11111011";
							when "110" => col_s<="00100100";row_s<="11111101";
							when others => col_s<="01000010";row_s<="11111110";
					end case;
				end if;
			end if;
		end if;
	end process;

	------

	process(clk)
	begin
		if clk'event and clk='1' then
				cnt<=cnt+1;
		end if;
	end process;

end a;
