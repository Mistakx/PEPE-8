----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:24 03/30/2021 
-- Design Name: 
-- Module Name:    banco_de_registos - Behavioral 
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

ENTITY banco_de_registos IS
    PORT (
        clk : IN STD_LOGIC;
        sel_R2 : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        sel_R1 : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        escr_R : IN STD_LOGIC;
        dados_R : IN STD_LOGIC;
        operando1 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        operando2 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END banco_de_registos;

ARCHITECTURE Behavioral OF banco_de_registos IS

BEGIN

    banco_de_registos : PROCESS (clk, sel_R1, sel_R2, escr_R, dados_R)

        VARIABLE registo : STD_LOGIC_VECTOR (7 DOWNTO 0);
        TYPE array_registos IS ARRAY(0 TO 7) OF registo;

    BEGIN

        IF rising_edge(clk) THEN

            IF (escr_R = '1') THEN

                dados_R

            END IF;

        END IF;

    END PROCESS banco_de_registos;
END Behavioral;