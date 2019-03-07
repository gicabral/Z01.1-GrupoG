library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8Way16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			c:   in  STD_LOGIC_VECTOR(15 downto 0);
			d:   in  STD_LOGIC_VECTOR(15 downto 0);
			e:   in  STD_LOGIC_VECTOR(15 downto 0);
			f:   in  STD_LOGIC_VECTOR(15 downto 0);
			g:   in  STD_LOGIC_VECTOR(15 downto 0);
			h:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0));
end entity;

architecture arch of Mux8Way16 is
begin

	q<= (not sel(2) and not sel(1) and not sel(0) and a) or
		(not sel(2) and not sel(1) and sel(0) and b) or
		(not sel(2) and sel(1) and not sel(0) and c) or
		(not sel(2) and sel(1) and sel(0) and d) or
		(sel(2) and not sel(1) and not sel(0) and e) or
		(sel(2) and not sel(1) and sel(0) and f) or
		(sel(2) and sel(1) and not sel(0) and g) or
		(sel(2) and sel(1) and sel(0) and h);

end architecture;
