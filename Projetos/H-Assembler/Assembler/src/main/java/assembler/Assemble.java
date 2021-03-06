/**
 * Curso: Elementos de Sistemas
 * Arquivo: Assemble.java
 * Created by Luciano <lpsoares@insper.edu.br> 
 * Date: 04/02/2017
 *
 * 2018 @ Rafael Corsi
 */

package assembler;

import java.io.*;
import java.util.*;

/**
 * Faz a geração do código gerenciando os demais módulos
 */
public class Assemble {
    private String inputFile;              // arquivo de entrada nasm
    File hackFile = null;                  // arquivo de saída hack
    private PrintWriter outHACK = null;    // grava saida do código de máquina em Hack
    boolean debug;                         // flag que especifica se mensagens de debug são impressas
    private SymbolTable table;             // tabela de símbolos (variáveis e marcadores)

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public Assemble(String inFile, String outFileHack, boolean debug) throws IOException {
        this.debug = debug;
        inputFile  = inFile;
        hackFile   = new File(outFileHack);                      // Cria arquivo de saída .hack
        outHACK    = new PrintWriter(new FileWriter(hackFile));  // Cria saída do print para o arquivo hackfile
        table      = new SymbolTable();                          // Cria e inicializa a tabela de simbolos

    }

    /**
     * primeiro passo para a construção da tabela de símbolos de marcadores (labels)
     * varre o código em busca de Símbolos novos Labels e Endereços de memórias
     * e atualiza a tabela de símbolos com os endereços.
     * Dependencia : Parser, SymbolTable
     */
    public SymbolTable fillSymbolTable() throws FileNotFoundException, IOException {

        Parser parser_label = new Parser(inputFile);
        int linha = 0;

        while (parser_label.advance()){

            if (parser_label.commandType(parser_label.command()) == Parser.CommandType.L_COMMAND){

                String label = parser_label.label(parser_label.command());

                if (!table.contains(label)){
                    table.addEntry(label, linha);
                }
            }

            else{
                linha ++;
            }
        }

        Parser parser_symbol = new Parser(inputFile);
        int linha2 = 16;

        while (parser_symbol.advance()) {
            if (parser_symbol.commandType(parser_symbol.command()).equals(Parser.CommandType.A_COMMAND)) {

                String symbol = parser_symbol.symbol(parser_symbol.command());
                boolean n = true;

                try {
                    Double num = Double.parseDouble(symbol);
                }

                catch (NumberFormatException e) {
                    n = false;
                }

                if (!n) {
                    if (!table.contains(symbol)) {
                        table.addEntry(symbol, linha2);
                        linha2 ++;
                    }
                }
            }
        }

        return table;

    }

    /**
     * Segundo passo para a geração do código de máquina
     * Varre o código em busca de instruções do tipo A, C
     * gerando a linguagem de máquina a partir do parse das instruções.
     *
     * Dependencias : Parser, Code
     */
    public void generateMachineCode() throws FileNotFoundException, IOException{
        Parser parser = new Parser(inputFile);  // abre o arquivo e aponta para o começo
        String instruction  = null;
        String last_bit;
        String calculo, destino, jump, simbolo, binario;

        /**
         * Aqui devemos varrer o código nasm linha a linha
         * e gerar a string 'instruction' para cada linha
         * de instrução válida do nasm
         */
        while (parser.advance()){
            String[] c = parser.instruction(parser.command());
            switch (parser.commandType(parser.command())){
                case C_COMMAND:

                    last_bit = "10";
                    destino = Code.dest(c);
                    calculo = Code.comp(c);
                    jump = Code.jump(c);
                    instruction = last_bit + calculo + destino + jump;
                    break;

                case A_COMMAND:

                    last_bit = "00";
                    simbolo = parser.symbol(parser.command());

                    if (table.contains(simbolo)) {
                        int symbol_value = table.getAddress(simbolo);
                        binario = Code.toBinary(Integer.toString(symbol_value));
                    }

                    else {
                        binario = Code.toBinary(simbolo);
                    }
                    instruction = last_bit + binario;

                    break;

                default:
                    continue;
            }
            // Escreve no arquivo .hack a instrução
            if(outHACK!=null) {
                outHACK.println(instruction);
            }
        }

    }

    /**
     * Fecha arquivo de escrita
     */
    public void close() throws IOException {
        if(outHACK!=null) {
            outHACK.close();
        }
    }

    /**
     * Remove o arquivo de .hack se algum erro for encontrado
     */
    public void delete() {
        try{
            if(hackFile!=null) {
                hackFile.delete();
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

}
