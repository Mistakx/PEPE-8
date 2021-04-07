----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:57:12 03/27/2021 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

ENTITY ALU IS

    PORT (
        SEL_ALU : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        operando1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        operando2 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        resultado : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        R_FLAG : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );

END ALU;

ARCHITECTURE Behavioral OF ALU IS

BEGIN

    ALU : PROCESS (SEL_ALU, operando1, operando2)

        VARIABLE vector : STD_LOGIC_VECTOR(7 DOWNTO 0);

    BEGIN

        CASE(SEL_ALU) IS

            -- A + B 
            WHEN "0000" => vector := (operando1 + operando2);

            -- A - B
            WHEN "0001" => vector := (operando1 - operando2);

            -- A and B
            WHEN "0010" => vector := (operando1 AND operando2);

            -- A nand B
            WHEN "0011" => vector := (operando1 NAND operando2);

            -- A or B
            WHEN "0100" => vector := (operando1 OR operando2);

            -- A nor B 
            WHEN "0101" => vector := (operando1 NOR operando2);

            -- A xor B
            WHEN "0110" => vector := (operando1 XOR operando2);

            -- A xnor B
            WHEN "0111" => vector := (operando1 XNOR operando2);

            -- shift_left(A, B)
            WHEN "1000" => vector := STD_LOGIC_VECTOR(shift_left(signed(operando1), to_integer(unsigned(operando2))));

            -- shift_right(A, B)
            WHEN "1001" => vector := STD_LOGIC_VECTOR(shift_right(signed(operando1), to_integer(unsigned(operando2))));

            -- < R_FLAG = 0; > R_FLAG = 1; /= R_FLAG = 2
            WHEN "1010" =>

            IF (operando1 < operando2) THEN
                R_FLAG(0) <= '1';
            END IF;

            IF (operando1 > operando2) THEN
                R_FLAG(1) <= '1';
            END IF;

            IF (operando1 /= operando2) THEN
                R_FLAG(2) <= '1';
            END IF;

            WHEN OTHERS => vector := "00000000";

        END CASE;

        resultado <= vector;

    END PROCESS ALU;

END Behavioral;