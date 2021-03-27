----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:57:12 03/27/2021 
-- Design Name: 
-- Module Name:    Arithmetic Logic Unit - Behavioral 
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
USE IEEE.STD_LOGIC_SIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY ArithmeticLogicUnit IS

    PORT (
        ALU_operation : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        inputA : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        inputB : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        output : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );

END ArithmeticLogicUnit;

ARCHITECTURE Behavioral OF ArithmeticLogicUnit IS

BEGIN

    ALU : PROCESS (ALU_operation, inputA, inputB)

        VARIABLE vector : STD_LOGIC_VECTOR(7 DOWNTO 0);
        
    BEGIN

        CASE(ALU_operation) IS

            -- A + B 
            WHEN "0000" => vector := (inputA + inputB);

            -- A - B
            WHEN "0001" => vector := (inputA - inputB);

            -- A and B
            WHEN "0010" => vector := (inputA AND inputB);

            -- A nand B
            WHEN "0011" => vector := (inputA NAND inputB);

            -- A or B
            WHEN "0100" => vector := (inputA OR inputB);

            -- A nor B 
            WHEN "0101" => vector := (inputA NOR inputB);

            -- A xor B
            WHEN "0110" => vector := (inputA XOR inputB);

            -- A xnor B
            WHEN "0111" => vector := (inputA XNOR inputB);

            -- shift_left(A, B)
            WHEN "1000" => vector := STD_LOGIC_VECTOR(shift_left(signed(inputA), to_integer(unsigned(inputB))));

            -- shift_right(A, B)
            WHEN "1001" => vector := STD_LOGIC_VECTOR(shift_right(signed(inputA), to_integer(unsigned(inputB))));

            -- < R_FLAG = 0; > R_FLAG = 1; /= R_FLAG = 2
            WHEN "1010" => vector := "11111111"; -- TODO: Change this behaviour

            WHEN OTHERS => vector := "00000000";

        END CASE;

        output <= vector;

    END PROCESS ALU;

END Behavioral;