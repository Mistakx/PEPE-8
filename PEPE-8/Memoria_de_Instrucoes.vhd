----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:29 04/03/2021 
-- Design Name: 
-- Module Name:    Memoria_de_Instrucoes - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY Memoria_de_Instrucoes IS

    PORT (
        endereco : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        opcode : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
        reg : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
        constante : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );

END Memoria_de_Instrucoes;

ARCHITECTURE Behavioral OF Memoria_de_Instrucoes IS

BEGIN

    memoria_instrucoes : PROCESS (endereco)

        TYPE ram_type IS ARRAY (0 TO 255) OF STD_LOGIC_VECTOR(18 DOWNTO 0); -- Instruction has 19 bits, 5 opcode, 3 R1, 3 R2, 8 constante
        VARIABLE ram : ram_type;

    BEGIN

        CASE (endereco) IS

            WHEN "00000000" => opcode <= "00010";
                reg <= "000XXX";
                constante <= "00001110";--LD R0, 14

            WHEN "00000001" => opcode <= "00010";
                reg <= "001XXX";
                constante <= "00011010"; --LD R1, 26

            WHEN "00000010" => opcode <= "00010";
                reg <= "010XXX";
                constante <= "11111111"; --LD R2, -1

            WHEN "00000011" => opcode <= "00010";
                reg <= "011XXX";
                constante <= "00000001"; --LD R3, 1

            WHEN "00000100" => opcode <= "00100";
                reg <= "000XXX";
                constante <= "00000000"; --ST [0], R0
                
            WHEN "00000101" => opcode <= "00100";
                reg <= "001XXX";
                constante <= "00100100"; --ST [36], R1

            WHEN "00000110" => opcode <= "00000";
                reg <= "000XXX";
                constante <= "XXXXXXXX"; --LDP R0

            WHEN "00000111" => opcode <= "10100";
                reg <= "000XXX";
                constante <= "00010110"; --JN R0, 22

            WHEN "00001000" => opcode <= "10101";
                reg <= "000XXX";
                constante <= "00001111"; --JZ R0, 15

            WHEN "00001001" => opcode <= "00010";
                reg <= "001XXX";
                constante <= "00011101"; --LD R1, 29

            WHEN "00001010" => opcode <= "01111";
                reg <= "000001";
                constante <= "XXXXXXXX"; --CMP R0, R1

            WHEN "00001011" => opcode <= "10010";
                reg <= "XXXXXX";
                constante <= "00001111"; --JL 15

            WHEN "00001100" => opcode <= "01011";
                reg <= "000010";
                constante <= "XXXXXXXX"; --XOR R0, R2

            WHEN "00001101" => opcode <= "00101";
                reg <= "000011";
                constante <= "XXXXXXXX"; --ADD R0, R3

            WHEN "00001110" => opcode <= "10011";
                reg <= "XXXXXX";
                constante <= "00011000"; --JMP 24

            WHEN "00001111" => opcode <= "00010";
                reg <= "100XXX";
                constante <= "00000010"; --LD R4, 2

            WHEN "00010000" => opcode <= "01101";
                reg <= "000100";
                constante <= "XXXXXXXX"; --shift_left(R0, R4)

            WHEN "00010001" => opcode <= "01000";
                reg <= "000010";
                constante <= "XXXXXXXX"; --NAND R0, R2

            WHEN "00010010" => opcode <= "00101";
                reg <= "000011";
                constante <= "XXXXXXXX"; --ADD R0, R3

            WHEN "00010011" => opcode <= "00011";
                reg <= "101XXX";
                constante <= "00000000"; --LD R5, [0]

            WHEN "00010100" => opcode <= "00110";
                reg <= "000101";
                constante <= "XXXXXXXX"; --SUB R0, R5

            WHEN "00010101" => opcode <= "10011";
                reg <= "XXXXXX";
                constante <= "00011000"; --JMP 24

            WHEN "00010110" => opcode <= "00011";
                reg <= "110XXX";
                constante <= "00100100"; -- LD R6, [36]

            WHEN "00010111" => opcode <= "00101";
                reg <= "000110";
                constante <= "XXXXXXXX"; --ADD R0, R6

            WHEN "00011000" => opcode <= "00001";
                reg <= "000XXX";
                constante <= "XXXXXXXX"; -- STP R0

            WHEN "00011001" => opcode <= "10011";
                reg <= "XXXXXX";
                constante <= "00011001"; --JMP 25

            WHEN OTHERS => opcode <= "XXXXX";
                reg <= "XXXXXX";
                constante <= "XXXXXXXX"; --When the address that was given was none of the others  

        END CASE;

        -- CASE(endereco) IS
        --     -- NOP  
        --     WHEN "00000000" => opcode <= "11111";
        --     reg <= "000XXX";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Loading constante to Ri

        --     -- LD R0, -1  
        --     WHEN "00000001" => opcode <= "00010";
        --     reg <= "000XXX";
        --     constante <= "11111111";

        --     -- LD R1, 1
        --     WHEN "00000010" => opcode <= "00010";
        --     reg <= "001XXX";
        --     constante <= "00000001";

        --     -- LD R2, 2  
        --     WHEN "00000011" => opcode <= "00010";
        --     reg <= "010XXX";
        --     constante <= "00000010";

        --     -- LD R3, 3  
        --     WHEN "00000100" => opcode <= "00010";
        --     reg <= "011XXX";
        --     constante <= "00000011";

        --     -- LD R4, 10110010  
        --     WHEN "00000101" => opcode <= "00010";
        --     reg <= "100XXX";
        --     constante <= "10110010";

        --     -- __________________________________________________________________-

        --     -- Set Memoria_de_Dados[constante] to Ri

        --     -- ST [0], R0
        --     WHEN "00000110" => opcode <= "00100";
        --     reg <= "000XXX";
        --     constante <= "00000000";

        --     -- ST [1], R1
        --     WHEN "00000111" => opcode <= "00100";
        --     reg <= "001XXX";
        --     constante <= "00000001";

        --     -- ST [2], R2
        --     WHEN "00001000" => opcode <= "00100";
        --     reg <= "010XXX";
        --     constante <= "00000010";

        --     -- ST [3], R3  
        --     WHEN "00001001" => opCode <= "00100";
        --     reg <= "011XXX";
        --     constante <= "00000011";

        --     -- __________________________________________________________________-

        --     -- Loading peripheral input to Ri

        --     -- LDP R6
        --     WHEN "00001010" => opCode <= "00000";
        --     reg <= "110XXX";
        --     constante <= "XXXXXXXX";

        --     -- LDP R7
        --     WHEN "00001011" => opCode <= "00000";
        --     reg <= "111XXX";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Loading to peripheral output the value stored in Ri

        --     -- STP R2
        --     WHEN "00001100" => opCode <= "00001";
        --     reg <= "010XXX";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Loading Memoria_de_Dados[constante] to Ri

        --     -- LD R5, [constante]
        --     WHEN "00001101" => opCode <= "00011";
        --     reg <= "101XXX";
        --     constante <= "00000011";

        --     -- __________________________________________________________________-

        --     -- Adding Ri to Rj, and saving the sum to Ri

        --     -- ADD R2, R3
        --     WHEN "00001110" => opCode <= "00101";
        --     reg <= "010011";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Subtract Rj to Ri, and save the subtraction to Ri

        --     -- SUB R2, R0
        --     WHEN "00001111" => opCode <= "00110";
        --     reg <= "010000";
        --     constante <= "XXXXXXXX";

        --     -- SUB R3, R1
        --     WHEN "00010000" => opCode <= "00110";
        --     reg <= "011001";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Ri AND Rj bit by bit, save the AND operation to Ri

        --     -- R4 AND R7
        --     WHEN "00010001" => opCode <= "00111";
        --     reg <= "100111";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Ri NAND Rj bit by bit, save the NAND operation to Ri

        --     -- R4 NAND R7
        --     WHEN "00010010" => opCode <= "01000";
        --     reg <= "100111";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Ri OR Rj bit by bit, save the OR operation to Ri

        --     -- R4 OR R7
        --     WHEN "00010011" => opCode <= "01001";
        --     reg <= "100111";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Ri NOR Rj bit by bit, save the NOR operation to Ri

        --     -- R4 NOR R7
        --     WHEN "00010100" => opCode <= "01010";
        --     reg <= "100111";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Ri XOR Rj bit by bit, save the XOR operation to Ri

        --     -- R4 XOR R7
        --     WHEN "00010101" => opCode <= "01011";
        --     reg <= "100111";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Ri NXOR Rj bit by bit, save the NXOR operation to Ri

        --     -- R4 NXOR R7
        --     WHEN "00010110" => opCode <= "01100";
        --     reg <= "100111";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Shift Ri left, Rj number of times. Save the shift to Ri

        --     -- shift_left(R6, R3)
        --     WHEN "00010111" => opCode <= "01101";
        --     reg <= "110011";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Shift Ri right, Rj number of times. Save the shift to Ri

        --     -- shift_right(R6, R3)
        --     WHEN "00011000" => opCode <= "01110";
        --     reg <= "110011";
        --     constante <= "XXXXXXXX";

        --     -- __________________________________________________________________-

        --     -- Compare Ri to Rj. Save the result in the Registo_de_Flags

        --     -- Registry Bank at the time of comparison
        --     -- 0: 11111111
        --     -- 1: 00000001
        --     -- 2: 00000110
        --     -- 3: 00000010
        --     -- 4: 11111111
        --     -- 5: 00000011
        --     -- 6: 11101010
        --     -- 7: 10101010

        --     -- If greater comparisons

        --     -- CMP(R1, R2)
        --     WHEN "00011001" => opCode <= "01111";
        --     reg <= "001010";
        --     constante <= "XXXXXXXX";

        --     -- JG constante. Jump to constante if Ri was greater than Rj at the time of comparison.
        --     WHEN "00011010" => opCode <= "10000";
        --     reg <= "XXXXXX";
        --     constante <= "11111111";

        --     --CMP(R2, R1)
        --     WHEN "00011011" => opCode <= "01111";
        --     reg <= "010001";
        --     constante <= "XXXXXXXX";

        --     -- JG constante. Jump to constante if Ri was greater than Rj at the time of comparison.
        --     WHEN "00011100" => opCode <= "10000";
        --     reg <= "XXXXXX";
        --     constante <= "11111111";

        --     -- If not equal to comparisons

        --     -- CMP(R1, R2)
        --     WHEN "00011101" => opCode <= "01111";
        --     reg <= "001010";
        --     constante <= "XXXXXXXX";

        --     -- JNE constante. Jump to constante if Ri was not equal to Rj at the time of comparison.
        --     WHEN "00011110" => opCode <= "10000";
        --     reg <= "XXXXXX";
        --     constante <= "11111111";

        --     -- CMP(R0, R4)
        --     WHEN "00011111" => opCode <= "01111";
        --     reg <= "000100";
        --     constante <= "XXXXXXXX";

        --     -- JNE constante. Jump to constante if Ri was not equal to Rj at the time of comparison.
        --     WHEN "00100000" => opCode <= "10000";
        --     reg <= "XXXXXX";
        --     constante <= "11111111";

        --     -- __________________________________________________________________-

        --     -- Debug instructions used to test if the comparation and respective jumps ocurred correctly 

        --     -- LD R7, 00000000  
        --     WHEN "11111111" => opcode <= "00010";
        --     reg <= "111XXX";
        --     constante <= "00000000";
        --     WHEN OTHERS => opcode <= "XXXXX";
        --     reg <= "XXXXXX";
        --     constante <= "XXXXXXXX";
        -- END CASE;

    END PROCESS memoria_instrucoes;

END Behavioral;