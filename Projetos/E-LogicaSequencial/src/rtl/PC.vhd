library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity PC is
    port(
        clock     : in  STD_LOGIC;
        increment : in  STD_LOGIC;
        load      : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        input     : in  STD_LOGIC_VECTOR(15 downto 0);
        output    : out STD_LOGIC_VECTOR(15 downto 0)
    );
end entity;

architecture arch of PC is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

component inc16 is
  port(
    a   :  in STD_LOGIC_VECTOR(15 downto 0);
    q   : out STD_LOGIC_VECTOR(15 downto 0)
  );
  end component;

component Mux16 is
  port ( 
      a:   in  STD_LOGIC_VECTOR(15 downto 0);
      b:   in  STD_LOGIC_VECTOR(15 downto 0);
      sel: in  STD_LOGIC;
      q:   out STD_LOGIC_VECTOR(15 downto 0));
  end component;

component Register16 is
  port(
    clock:   in STD_LOGIC;
    input:   in STD_LOGIC_VECTOR(15 downto 0);
    load:    in STD_LOGIC;
    output: out STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000"
  );
  end component;

SIGNAL saida,q_mux0, q_mux1, q_mux2, saida_inc: std_logic_vector(15 downto 0) ;

begin
  inc : inc16 port map(saida, saida_inc);
  mux0 : Mux16 port map(saida, saida_inc, increment, q_mux0);
  mux1 : Mux16 port map(q_mux0, input,load, q_mux1);
  mux2 : Mux16 port map(q_mux1, "0000000000000000", reset, q_mux2);
  reg : Register16 port map(clock, q_mux2, '1', saida);
  output <= saida;
end architecture;