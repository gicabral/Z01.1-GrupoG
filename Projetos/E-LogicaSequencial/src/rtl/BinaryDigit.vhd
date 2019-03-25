-- Elementos de Sistemas
-- by Luciano Soares
-- BinaryDigit.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity BinaryDigit is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC;
		load:    in STD_LOGIC;
		output: out STD_LOGIC
	);
end entity;

architecture rtl of BinaryDigit is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.


  component Mux2Way is
    port(
      a,b,sel:      in STD_LOGIC;   -- entradas
      q:  			out STD_LOGIC   -- saida
    );
  end component;

  component FlipFlopD is
    port(
      clock,d,clear,preset:      in STD_LOGIC;   -- entradas
      q:  			 			out STD_LOGIC    -- saida
    );
  end component;

  SIGNAL q_flip, q_mux : STD_LOGIC;

begin

		mux : Mux2Way port map (q_flip, input, load, q_mux);
		flip : FlipFlopD port map (clock, q_mux, '0', '0', q_flip);
		output <= q_flip;


end architecture;
