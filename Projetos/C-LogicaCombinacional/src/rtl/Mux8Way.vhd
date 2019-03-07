library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8Way is
	port ( 
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			e:   in  STD_LOGIC;
			f:   in  STD_LOGIC;
			g:   in  STD_LOGIC;
			h:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q:   out STD_LOGIC);
end entity;

architecture arch of Mux8Way is
begin

	q <= (not sel(2) and not sel(1) and not sel(0) and a) or
		 (not sel(2) and not sel(1) and sel(0) and b) or
		 (not sel(2) and sel(1) and not sel(0) and c) or
		 (not sel(2) and sel(1) and sel(0) and d) or
		 (sel(2) and not sel(1) and not sel(0) and e) or
		 (sel(2) and not sel(1) and sel(0) and f) or
		 (sel(2) and sel(1) and not sel(0) and g) or
		 (sel(2) and sel(1) and sel(0) and h);

end architecture;
