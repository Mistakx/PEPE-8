----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:45:03 04/01/2021 
-- Design Name: 
-- Module Name:    Memoria_de_Dados - Behavioral 
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

ENTITY Memoria_de_Dados IS

    PORT (
        clk : IN STD_LOGIC;
        constante : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        operando1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        WR : IN STD_LOGIC;
        dados_M : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );

END Memoria_de_Dados;

ARCHITECTURE Behavioral OF Memoria_de_Dados IS

BEGIN

    memoria_de_dados : PROCESS (clk, constante, operando1, WR)

        TYPE ram_type IS ARRAY (0 TO 255) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
        VARIABLE ram : ram_type;

    BEGIN

        IF rising_edge(clk) THEN

            IF (WR = '1') THEN

                ram(to_integer(unsigned(constante))) := operando1;

            ELSIF (WR = '0') THEN

                dados_M <= ram(to_integer(unsigned(constante)));

            END IF;

        END IF;

    END PROCESS memoria_de_dados;

END Behavioral;