----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:37:20 03/30/2021 
-- Design Name: 
-- Module Name:    Gestor_de_Perifericos - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY Gestor_de_Perifericos IS

    PORT (
        clk : IN STD_LOGIC;
        ESCR_P : IN STD_LOGIC;
        PIN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        operando1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        POUT : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        dados_IN : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );

END Gestor_de_Perifericos;

ARCHITECTURE Behavioral OF Gestor_de_Perifericos IS

BEGIN

    gestor_de_perifericos : PROCESS (clk, ESCR_P, PIN, operando1)

    BEGIN

        IF rising_edge(clk) THEN

            IF (ESCR_P = '1') THEN

                POUT <= operando1;

            ELSE

                dados_IN <= PIN;

            END IF;
				
        END IF;

    END PROCESS gestor_de_perifericos;

END Behavioral;