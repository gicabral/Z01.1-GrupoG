-- Elementos de Sistemas
-- by Luciano Soares
-- Ram4K.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram4K is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR(11 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of Ram4k is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

component Ram512 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 8 downto 0);
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
	er21: DMux8Way port map(load, address(11 downto 9), vet_0, vet_1, vet_2, vet_3, vet_4, vet_5, vet_6, vet_7);

	vec1_01: Ram512 port map(clock, input, vet_0, address(8 downto 0), vout0);
	vec1_11: Ram512 port map(clock, input, vet_1, address(8 downto 0), vout1);
	vec1_21: Ram512 port map(clock, input, vet_2, address(8 downto 0), vout2);
	vec1_31: Ram512 port map(clock, input, vet_3, address(8 downto 0), vout3);
	vec1_41: Ram512 port map(clock, input, vet_4, address(8 downto 0), vout4);
	vec1_51: Ram512 port map(clock, input, vet_5, address(8 downto 0), vout5);
	vec1_61: Ram512 port map(clock, input, vet_6, address(8 downto 0), vout6);
	vec1_71: Ram512 port map(clock, input, vet_7, address(8 downto 0), vout7);

	ur11: Mux8Way16 port map(vout0, vout1, vout2, vout3, vout4, vout5, vout6, vout7, address(11 downto 9), output);

end architecture;
