-- Elementos de Sistemas
-- by Luciano Soares
-- Ram64.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram64 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 5 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of Ram64 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

component Ram8 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 2 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end component;

component Mux8Way16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			c:   in  STD_LOGIC_VECTOR(15 downto 0);
			d:   in  STD_LOGIC_VECTOR(15 downto 0);
			e:   in  STD_LOGIC_VECTOR(15 downto 0);
			f:   in  STD_LOGIC_VECTOR(15 downto 0);
			g:   in  STD_LOGIC_VECTOR(15 downto 0);
			h:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC_VECTOR(2  downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;

component DMux8Way is
	port ( 
			a:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q0:  out STD_LOGIC;
			q1:  out STD_LOGIC;
			q2:  out STD_LOGIC;
			q3:  out STD_LOGIC;
			q4:  out STD_LOGIC;
			q5:  out STD_LOGIC;
			q6:  out STD_LOGIC;
			q7:  out STD_LOGIC
		);
end component;

signal  vet_0,vet_1,vet_2,vet_3,vet_4,vet_5,vet_6,vet_7  : STD_LOGIC;
signal  vout0,vout1,vout2,vout3,vout4,vout5,vout6,vout7  : STD_LOGIC_VECTOR(15 downto 0);


begin

	er: DMux8Way port map(load, address(5 downto 3), vet_0, vet_1, vet_2, vet_3, vet_4, vet_5, vet_6, vet_7);

	vec_0: Ram8 port map(clock, input, vet_0, address(2 downto 0), vout0);
	vec_1: Ram8 port map(clock, input, vet_1, address(2 downto 0), vout1);
	vec_2: Ram8 port map(clock, input, vet_2, address(2 downto 0), vout2);
	vec_3: Ram8 port map(clock, input, vet_3, address(2 downto 0), vout3);
	vec_4: Ram8 port map(clock, input, vet_4, address(2 downto 0), vout4);
	vec_5: Ram8 port map(clock, input, vet_5, address(2 downto 0), vout5);
	vec_6: Ram8 port map(clock, input, vet_6, address(2 downto 0), vout6);
	vec_7: Ram8 port map(clock, input, vet_7, address(2 downto 0), vout7);

	ur: Mux8Way16 port map(vout0, vout1, vout2, vout3, vout4, vout5, vout6, vout7, address(5 downto 3), output);

end architecture;
