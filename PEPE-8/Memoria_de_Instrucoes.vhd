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

        CASE(endereco) IS

            -- Loading constante to Ri

            --LD R0, 0  
            WHEN "00000000" => opcode <= "00010";
            reg <= "000XXX";
            constante <= "00000000";

            --LD R1, 1
            WHEN "00000001" => opcode <= "00010";
            reg <= "001XXX";
            constante <= "00000001";

            --LD R2, 2  
            WHEN "00000010" => opcode <= "00010";
            reg <= "010XXX";
            constante <= "00000010";

            --LD R3, 3  
            WHEN "00000011" => opcode <= "00010";
            reg <= "011XXX";
            constante <= "00000011";

            -- __________________________________________________________________-

            -- Set Memoria_de_Dados[constante] to Ri

            -- ST [0], R0
            WHEN "00000100" => opcode <= "00100";
            reg <= "000XXX";
            constante <= "00000000";

            --ST [1], R1
            WHEN "00000101" => opcode <= "00100";
            reg <= "001XXX";
            constante <= "00000001";

            --ST [2], R2
            WHEN "00000110" => opcode <= "00100";
            reg <= "010XXX";
            constante <= "00000010";

            --ST [3], R3  
            WHEN "00000111" => opCode <= "00100";
            reg <= "011XXX";
            constante <= "00000011";

            -- __________________________________________________________________-

            -- Loading peripheral input to Ri

            -- LDP R6
            WHEN "00001000" => opCode <= "00000";
            reg <= "110XXX";
            constante <= "XXXXXXXX";

            -- LDP R7
            WHEN "00001001" => opCode <= "00000";
            reg <= "111XXX";
            constante <= "XXXXXXXX";

            WHEN OTHERS => opcode <= "XXXXX";
            reg <= "XXXXXX";
            constante <= "XXXXXXXX";

        END CASE;

    END PROCESS memoria_instrucoes;

END Behavioral;