library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.ALL;
entity changeRange is 
port(
	clk            : in  std_logic;
	input_tens     : in  std_logic_vector(3 downto 0);
	input_digits   : in  std_logic_vector(3 downto 0);
	preset_tens    : in  std_logic_vector(3 downto 0);
	preset_digits  : in  std_logic_vector(3 downto 0);
	--min_tens       : in  std_logic_vector(3 downto 0);
	--min_digits     : in  std_logic_vector(3 downto 0);
	--max_tens       : in  std_logic_vector(3 downto 0);
	--max_digits     : in  std_logic_vector(3 downto 0);
	--out_tens       : out std_logic_vector(3 downto 0);
	--out_digits     : out std_logic_vector(3 downto 0);
	DE_tens        : out std_logic_vector(2 downto 0);
	DE_digits      : out std_logic_vector(2 downto 0);
	output_tens    : out std_logic_vector(3 downto 0);
	output_digits  : out std_logic_vector(3 downto 0)
	);
end changeRange;

architecture statetransformertest of changeRange is
signal min_xa , min_ya , min_za      : std_logic;
signal min_xb , min_yb , min_zb      : std_logic;
signal max_xa , max_ya , max_za      : std_logic;
signal max_xb , max_yb , max_zb      : std_logic;
signal xa     , ya     , za          : std_logic;
signal xb     , yb     , zb          : std_logic;
signal x      , y      , z           : std_logic;
signal min_x  , min_y  , min_z       : std_logic;
signal max_x  , max_y  , max_z       : std_logic;
signal temp_tens   : std_logic_vector(3 downto 0);
signal temp_digits : std_logic_vector(3 downto 0);
begin	
 	process(clk)
	begin
		max_z <= max_za or (max_ya and max_zb);
		--判斷輸入值跟預設值比大小
		if(input_tens < preset_tens) then
			xa <= '1';
			ya <= '0';
			za <= '0';
		elsif(input_tens = preset_tens) then
			xa <= '0';
			ya <= '1';
			za <= '0';
		elsif(input_tens > preset_tens) then
			xa <= '0';
			ya <= '0';
			za <= '1';
		end if;
					
		if(input_digits < preset_digits) then 
			xb <= '1';
			yb <= '0';
			zb <= '0';
		elsif(input_digits = preset_digits) then
			xb <= '0';
			yb <= '1';
			zb <= '0';
		elsif(input_digits > preset_digits) then
			xb <= '0';
			yb <= '0';
			zb <= '1';
		end if;
	
		x <= xa or (ya and xb);
		y <= ya and yb;
		z <= za or (ya and zb);
		
		if(x = '1') then 
			if (input_digits = "1001") then 
				temp_digits <= "0000";
				case input_tens is
					when "0000" =>
						temp_tens <= "0001";
					when "0001" =>
						temp_tens <= "0010";
					when "0010" =>
						temp_tens <= "0011";
					when "0011" =>
						temp_tens <= "0100";
					when "0100" =>
						temp_tens <= "0101";
					when "0101" =>
						temp_tens <= "0110";
					when "0110" =>
						temp_tens <= "0111";
					when "0111" =>
						temp_tens <= "1000";
					when "1000" =>
						temp_tens <= "1001";
					when others =>
						temp_tens <= "0000";
				end case;
			else
				temp_tens <= input_tens;
				case input_digits is
					when "0000" =>
						temp_digits <= "0001";
					when "0001" =>
						temp_digits <= "0010";
					when "0010" =>
						temp_digits <= "0011";
					when "0011" =>
						temp_digits <= "0100";
					when "0100" =>
						temp_digits <= "0101";
					when "0101" =>
						temp_digits <= "0110";
					when "0110" =>
						temp_digits <= "0111";
					when "0111" =>
						temp_digits <= "1000";
					when "1000" =>
						temp_digits <= "1001";
					when others =>
						temp_digits <= "0000";
				end case;
			end if;
			if (input_digits = "1001") then 
				case input_tens is
					when "0000" =>
						temp_tens <= "0001";
					when "0001" =>
						temp_tens <= "0010";
					when "0010" =>
						temp_tens <= "0011";
					when "0011" =>
						temp_tens <= "0100";
					when "0100" =>
						temp_tens <= "0101";
					when "0101" =>
						temp_tens <= "0110";
					when "0110" =>
						temp_tens <= "0111";
					when "0111" =>
						temp_tens <= "1000";
					when "1000" =>
						temp_tens <= "1001";
					when others =>
						temp_tens <= "0000";
				end case;
			else
				temp_tens <= input_tens;
			end if;
			output_tens    <= temp_tens;
			output_digits  <= temp_digits;
			--out_tens       <= temp_tens;
			--out_digits     <= temp_digits;
			DE_tens        <= "000";
			DE_digits      <= "001";
		end if;

		if(z = '1') then 
			if (input_digits = "0000") then 
				temp_digits <= "1001";
				case input_tens is
					when "0001" =>
						temp_tens <= "0000";
					when "0010" =>
						temp_tens <= "0001";
					when "0011" =>
						temp_tens <= "0010";
					when "0100" =>
						temp_tens <= "0011";
					when "0101" =>
						temp_tens <= "0100";
					when "0110" =>
						temp_tens <= "0101";
					when "0111" =>
						temp_tens <= "0110";
					when "1000" =>
						temp_tens <= "0111";
					when "1001" =>
						temp_tens <= "1000";
					when others =>
						temp_tens <= "0000";
				end case;
			else
				case input_digits is
					when "0001" =>
						temp_digits <= "0000";
					when "0010" =>
						temp_digits <= "0001";
					when "0011" =>
						temp_digits <= "0010";
					when "0100" =>
						temp_digits <= "0011";
					when "0101" =>
						temp_digits <= "0100";
					when "0110" =>
						temp_digits <= "0101";
					when "0111" =>
						temp_digits <= "0110";
					when "1000" =>
						temp_digits <= "0111";
					when "1001" =>
						temp_digits <= "1000";
					when others =>
						temp_digits <= "0000";
				end case;
				temp_tens <= input_tens;
			end if;
			if (input_digits = "0000") then 
				case input_tens is
					when "0001" =>
						temp_tens <= "0000";
					when "0010" =>
						temp_tens <= "0001";
					when "0011" =>
						temp_tens <= "0010";
					when "0100" =>
						temp_tens <= "0011";
					when "0101" =>
						temp_tens <= "0100";
					when "0110" =>
						temp_tens <= "0101";
					when "0111" =>
						temp_tens <= "0110";
					when "1000" =>
						temp_tens <= "0111";
					when "1001" =>
						temp_tens <= "1000";
					when others =>
						temp_tens <= "0000";
				end case;
			else
				temp_tens <= input_tens;
			end if;
			output_tens    <= temp_tens;
			output_digits  <= temp_digits;
			--out_tens       <= temp_tens;
			--out_digits     <= temp_digits;
			DE_tens        <= "100";
			DE_digits      <= "101";
		end if;	
		
		if(y = '1') then
			output_tens   <= input_tens;
			output_digits <= input_digits;
			DE_tens       <= "010";
			DE_digits     <= "011";
		end if;
end process;
end statetransformertest;