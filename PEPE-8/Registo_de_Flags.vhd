----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:25:25 03/29/2021 
-- Design Name: 
-- Module Name:    Registo_de_Flags - Behavioral 
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

ENTITY Registo_de_Flags IS

    PORT (
        clk : IN STD_LOGIC;
        is_zero : IN STD_LOGIC;
        R_FLAG : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        ESCR_FLAG : IN STD_LOGIC;
        bit_maior_peso : IN STD_LOGIC;
        SEL_FLAG : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        S_FLAG : OUT STD_LOGIC
    );

END Registo_de_Flags;

ARCHITECTURE Behavioral OF Registo_de_Flags IS

BEGIN

    Registo_de_Flags : PROCESS (clk)

        VARIABLE temp : STD_LOGIC;

    BEGIN

        IF falling_edge(clk) THEN

            IF (ESCR_F = '1') THEN

                CASE(SEL_FLAG) IS

                    WHEN "000" => temp := is_zero;

                    WHEN "001" => temp := bit_maior_peso;

                    WHEN "010" => temp := R_FLAG(2);

                    WHEN "011" => temp := R_FLAG(1);

                    WHEN "100" => temp := R_FLAG(0);

                    WHEN OTHERS => temp := '0';

                END CASE;

            END IF;

        END IF;

    END PROCESS Registo_de_Flags;

END Behavioral;