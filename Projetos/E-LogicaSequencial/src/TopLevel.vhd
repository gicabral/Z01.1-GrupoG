--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br 
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de 
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		SW      : in  std_logic_vector(9 downto 0);
		KEY     : in  std_logic_vector(3 downto 0);
		LEDR    : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco -- 
----------------------------
architecture rtl of TopLevel is


component Ram8 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 2 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end component;


--------------
-- signals
--------------

signal saida1: std_logic_vector(15 downto 0);

---------------
-- implementacao
---------------
begin

 -- os botoes quando nao apertado vale 1
                     -- e apertado 0, essa logica inverte isso


u1 : Ram8 port map (
		clock    => not KEY(0),
		input   =>  "000000000" & SW(6 downto 0),
		load    =>  not KEY(1),
		address =>  SW(9 downto 7),
		output   =>  saida1
	);		    
LEDR(9 downto 0) <= saida1(9 downto 0);

end rtl;
