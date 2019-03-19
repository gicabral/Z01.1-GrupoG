-- Elementos de Sistemas
-- by Luciano Soares
-- Add16.vhd

-- Soma dois valores de 16 bits
-- ignorando o carry mais significativo

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Add16 is
	port(
		a   :  in STD_LOGIC_VECTOR(15 downto 0);
		b   :  in STD_LOGIC_VECTOR(15 downto 0);
		q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;


architecture rtl of Add16 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.
  signal carry : STD_LOGIC_VECTOR(15 downto 0);

  component FullAdder is
    port(
      a,b,c:      in STD_LOGIC;   -- entradas
      soma,vaium: out STD_LOGIC   -- sum e carry
    );
  end component;

begin
  -- Implementação vem aqui!
  fulladder1 : FullAdder port map (a(0), b(0), '0', q(0), carry(0)); 
  fulladder2 : FullAdder port map (a(1), b(1), carry(0), q(1), carry(1));
  fulladder3 : FullAdder port map (a(2), b(2), carry(1), q(2), carry(2));
  fulladder4 : FullAdder port map (a(3), b(3), carry(2), q(3), carry(3));
  fulladder5 : FullAdder port map (a(4), b(4), carry(3), q(4), carry(4));
  fulladder6 : FullAdder port map (a(5), b(5), carry(4), q(5), carry(5));
  fulladder7 : FullAdder port map (a(6), b(6), carry(5), q(6), carry(6));
  fulladder8 : FullAdder port map (a(7), b(7), carry(6), q(7), carry(7));
  fulladder9 : FullAdder port map (a(8), b(8), carry(7), q(8), carry(8));
  fulladder10 : FullAdder port map (a(9), b(9), carry(8), q(9), carry(9));
  fulladder11 : FullAdder port map (a(10), b(10), carry(9), q(10), carry(10));
  fulladder12 : FullAdder port map (a(11), b(11), carry(10), q(11), carry(11));
  fulladder13 : FullAdder port map (a(12), b(12), carry(11), q(12), carry(12));
  fulladder14 : FullAdder port map (a(13), b(13), carry(12), q(13), carry(13));
  fulladder15 : FullAdder port map (a(14), b(14), carry(13), q(14), carry(14));
  fulladder16 : FullAdder port map (a(15), b(15), carry(14), q(15), carry(15));

  



end architecture;


