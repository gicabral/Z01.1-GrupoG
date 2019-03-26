Library ieee;
use ieee.std_logic_1164.all;

entity Ram8 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 2 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of ram8 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

component Register16 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(15 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(15 downto 0)
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

signal  vet0,vet1,vet2,vet3,vet4,vet5,vet6,vet7  														 : STD_LOGIC;
signal  vector0,vector1,vector2,vector3,vector4,vector5,vector6,vector7  : STD_LOGIC_VECTOR(15 downto 0);


begin

	
	choose_vector: DMux8Way port map(load, address, vet0, vet1, vet2, vet3, vet4, vet5, vet6, vet7);
	vec0: Register16 port map(clock, input, vet0, vector0);
	vec1: Register16 port map(clock, input, vet1, vector1);
	vec2: Register16 port map(clock, input, vet2, vector2);
	vec3: Register16 port map(clock, input, vet3, vector3);
	vec4: Register16 port map(clock, input, vet4, vector4);
	vec5: Register16 port map(clock, input, vet5, vector5);
	vec6: Register16 port map(clock, input, vet6, vector6);
	vec7: Register16 port map(clock, input, vet7, vector7);


	read: Mux8Way16 port map(vector0, vector1, vector2, vector3, vector4, vector5, vector6, vector7, address, output);


end architecture;