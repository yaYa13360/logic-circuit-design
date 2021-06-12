library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.ALL;
entity changeRange is 
port(
	input_tens     : in  std_logic_vector(3 downto 0);
	input_digits   : in  std_logic_vector(3 downto 0);
	preset_tens    : in  std_logic_vector(3 downto 0);
	preset_digits  : in  std_logic_vector(3 downto 0);
	min_tens       : in  std_logic_vector(3 downto 0);
	min_digits     : in  std_logic_vector(3 downto 0);
	max_tens       : in  std_logic_vector(3 downto 0);
	max_digits     : in  std_logic_vector(3 downto 0);
	--out_tens     : out std_logic_vector(3 downto 0);
	--out_digits   : out std_logic_vector(3 downto 0);
	--DE_tens      : out std_logic_vector(2 downto 0);
	--DE_digits    : out std_logic_vector(2 downto 0);
	op_max_tens   	: out std_logic_vector(3 downto 0);
	op_max_digits  : out std_logic_vector(3 downto 0);
	op_min_tens		: out std_logic_vector(3 downto 0);
	op_min_digits	: out std_logic_vector(3 downto 0)
	);
end changeRange;

architecture statetransformertest of changeRange is
signal clk									 : std_logic;
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
signal tp_max_tens : std_logic_vector(3 downto 0);
signal tp_max_dg	 : std_logic_vector(3 downto 0);
signal tp_min_tens : std_logic_vector(3 downto 0);
signal tp_min_dg   : std_logic_vector(3 downto 0);
begin	
	process(clk)
		begin
		
		if(max_tens = "0000" and max_digits = "0000") then
			tp_max_tens <= "1001";
			tp_max_dg   <= "1001";
		end if;
		
		tp_min_tens <= min_tens;
		tp_min_dg   <= min_digits;
		
		--判斷輸入值是否小於最小值
		if(input_tens < tp_min_tens) then
			min_xa <= '1';
			min_ya <= '0';
			min_za <= '0';
		elsif(input_tens = tp_min_tens) then
			min_xa <= '0';
			min_ya <= '1';
			min_za <= '0';
		elsif(input_tens > tp_min_tens) then
			min_xa <= '0';
			min_ya <= '0';
			min_za <= '1';
		end if;
					
		if(input_digits < tp_min_dg) then 
			min_xb <= '1';
			min_yb <= '0';
			min_zb <= '0';
		elsif(input_digits = tp_min_dg) then
			min_xb <= '0';
			min_yb <= '1';
			min_zb <= '0';
		elsif(input_digits > tp_min_dg) then
			min_xb <= '0';
			min_yb <= '0';
			min_zb <= '1';
		end if;
		
		min_x <= min_xa or (min_ya and min_xb);
		min_y <= min_ya and min_yb;
		min_z <= min_za or (min_ya and min_zb);
		
		--判斷輸入值是否大於最大值
		if(input_tens < tp_max_tens) then
			max_xa <= '1';
			max_ya <= '0';
			max_za <= '0';
		elsif(input_tens = tp_max_tens) then
			max_xa <= '0';
			max_ya <= '1';
			max_za <= '0';
		elsif(input_tens > tp_max_tens) then
			max_xa <= '0';
			max_ya <= '0';
			max_za <= '1';
		end if;
				
		if(input_digits < tp_max_dg) then 
			max_xb <= '1';
			max_yb <= '0';
			max_zb <= '0';
		elsif(input_digits = tp_max_dg) then
			max_xb <= '0';
			max_yb <= '1';
			max_zb <= '0';
		elsif(input_digits > tp_max_dg) then
			max_xb <= '0';
			max_yb <= '0';
			max_zb <= '1';
		end if;
	
		max_x <= max_xa or (max_ya and max_xb);
		max_y <= max_ya and max_yb;
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
		
		if(x = '1' and min_z = '1') then 
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
			op_min_tens    <= temp_tens;
			op_min_digits  <= temp_digits;
			op_max_digits  <= tp_max_dg;
			op_max_tens    <= tp_max_tens;
		end if;

		if(x = '1' and min_x = '1') then
			op_min_tens   <= tp_min_tens;
			op_min_digits <= tp_min_dg;
			op_max_tens   <= tp_max_tens;
			op_max_digits <= tp_max_dg;
		end if;
		
		if(z = '1' and max_x = '1') then 
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
			op_max_tens    <= temp_tens;
			op_max_digits  <= temp_digits;
			op_min_tens    <= tp_min_tens;
			op_min_digits  <= tp_min_dg;
		end if;	
		
		if(z = '1' and max_z = '1') then 
			op_max_tens    <= tp_max_tens;
			op_max_digits  <= tp_max_dg;
			op_min_tens    <= tp_min_tens;
			op_min_digits  <= tp_min_dg;
		end if;
		
		if(y = '1') then
			op_max_tens   <= tp_max_tens;
			op_max_digits <= tp_max_dg;
			op_min_tens   <= tp_min_tens;
			op_min_digits <= tp_min_dg;
		end if;	
	end process;	
end statetransformertest;