/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     *
     * @param mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {
        if (mnemnonic.length == 2) {
            if (mnemnonic[0].equals("incw") || mnemnonic[0].equals("decw") || mnemnonic[0].equals("notw") || mnemnonic[0].equals("negw")) {
                switch (mnemnonic[1]) {
                    case "%A":
                        return "1000";
                    case "%S":
                        return "0100";
                    case "%D":
                        return "0010";
                    case "(%A)":
                        return "0001";
                    default:
                        return "0000";
                }
            }
        }

        if (mnemnonic.length == 3) {
            if (mnemnonic[0].equals("movw")) {
                switch (mnemnonic[2]) {
                    case "%A":
                        return "1000";
                    case "%S":
                        return "0100";
                    case "%D":
                        return "0010";
                    case "(%A)":
                        return "0001";
                    default:
                        return "0000";
                }
            }
        }

        if (mnemnonic.length == 4) {
            if (mnemnonic[0].equals("addw") || mnemnonic[0].equals("subw") || mnemnonic[0].equals("rsubw") || mnemnonic[0].equals("andw") || mnemnonic[0].equals("orw")) {
                switch (mnemnonic[3]) {
                    case "%A":
                        return "1000";
                    case "%D":
                        return "0010";
                    case "%S":
                        return "0100";
                    default:
                        return "0000";
                }
            } else if (mnemnonic[0].equals("movw")) {
                switch (mnemnonic[2] + mnemnonic[3]) {
                    case "%S%D":
                        return "0110";
                    case "%D%S":
                        return "0110";
                    case "%D(%A)":
                        return "0011";
                    default:
                        return "0000";

                }
            }
        } else {
            return "0000";
        }
        return null;
    }






        /**
         * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
         * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
         * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
         */
    public static String comp(String[] mnemnonic) {
        if (mnemnonic.length == 2) {
            if (mnemnonic[0].equals("incw")) {
                switch (mnemnonic[1]) {
                    case "%A":
                        return "000110111";
                    case "%S":
                        return "001011111";
                    case "%D":
                        return "000011111";
                    case "(%A)":
                        return "010110111";
                    default:
                        return "000000000";
                }

            } else if (mnemnonic[0].equals("notw")) {
                switch (mnemnonic[1]) {
                    case "%A":
                        return "000110001";
                    case "%D":
                        return "000001101";
                    default:
                        return "000000000";
                }
            } else if (mnemnonic[0].equals("negw")) {
                switch (mnemnonic[1]) {
                    case "%A":
                        return "000110011";
                    case "%D":
                        return "000001111";
                    default:
                        return "000000000";
                }
            } else if (mnemnonic[0].equals("decw")) {
                switch (mnemnonic[1]) {
                    case "%D":
                        return "000001110";
                    case "%A":
                        return "000110010";
                    default:
                        return "000000000";
                }
            } else if (mnemnonic[0].equals("jmp") || mnemnonic[0].equals("je") || mnemnonic[0].equals("jne") || mnemnonic[0].equals("jg") || mnemnonic[0].equals("jge") || mnemnonic[0].equals("jl") || mnemnonic[0].equals("jle")) {
                switch (mnemnonic[1]) {
                    case "%D":
                        return "000001100";
                    case "%S":
                        return "001001100";
                    default:
                        return "000000000";
                }
            }
        }

        if (mnemnonic.length == 3) {
            if (mnemnonic[0].equals("movw")) {
                switch (mnemnonic[1]) {
                    case "%S":
                        return "001001100";

                    case "%D":
                        return "000001100";

                    case "%A":
                        return "000110000";

                    case "(%A)":
                        return "010110000";
                    default:
                        return "000000000";
                }
            }
        }

        if (mnemnonic.length == 4) {
            if (mnemnonic[0].equals("subw")) {
                switch (mnemnonic[2] + mnemnonic[3]) {
                    case "(%A)%A":
                        return "010010011";
                    case "%S%A":
                        return "101000111";
                    case "$1%A":
                        return "010110010";
                    default:
                        return "000000000";
                }

            } else if (mnemnonic[0].equals("addw")) {
                switch (mnemnonic[1] + mnemnonic[2]) {
                    case "%S%D":
                        return "101000010";
                    case "%D%S":
                        return "101000010";
                    case "%A%D":
                        return "000000010";
                    case "(%A)%D":
                        return "010000010";
                    case "%A%S":
                        return "001000010";
                    case "(%A)%S":
                        return "011000010";
                    default:
                        return "000000000";
                }
            } else if (mnemnonic[0].equals("andw")) {
                switch (mnemnonic[1] + mnemnonic[2]) {
                    case "(%A)%D":
                        return "010000000";
                    case "%D%A":
                        return "000000000";
                    default    : return "000000000";
                }

            } else if (mnemnonic[0].equals("orw")) {
                switch (mnemnonic[1] + mnemnonic[2]) {
                    case "(%A)%D":
                        return "010010101";
                    case "%D%A":
                        return "000010101";
                    default    : return "000000000";
                }

            } else if (mnemnonic[0].equals("rsubw")) {
                switch (mnemnonic[1] + mnemnonic[2]) {
                    case "%D(%A)":
                        return "010000111";
                    default    : return "000000000";
                }
            }
        }
        return null;
    }


    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        switch (mnemnonic[0]){
            case "jmp"  : return "111";
            case "je"  : return "010";
            case "jne"  : return "101";
            case "jg"  : return "001";
            case "jge"  : return "011";
            case "jl"  : return "100";
            case "jle"  : return "110";


            default    : return "000";
        }

    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
        int value = Integer.valueOf(symbol);
        String binary = Integer.toBinaryString(value);
        return String.format("%1$16s", binary).replace(" ", "0");
    }

}
