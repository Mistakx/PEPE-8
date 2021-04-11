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
        ESCR_F : IN STD_LOGIC;
        bit_maior_peso : IN STD_LOGIC;
        SEL_FLAG : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        S_FLAG : OUT STD_LOGIC
    );

END Registo_de_Flags;

ARCHITECTURE Behavioral OF Registo_de_Flags IS

BEGIN

    registo_de_flags : PROCESS (clk, is_zero, R_FLAG, ESCR_F, bit_maior_peso, SEL_FLAG)

        VARIABLE temp_is_zero : STD_LOGIC;
        VARIABLE temp_R_FLAG : STD_LOGIC_VECTOR (2 DOWNTO 0);
        VARIABLE temp_ESCR_F : STD_LOGIC;
        VARIABLE temp_bit_maior_peso : STD_LOGIC;
        VARIABLE temp_SEL_FLAG : STD_LOGIC_VECTOR (2 DOWNTO 0);

    BEGIN

        IF falling_edge(clk) THEN

            IF (ESCR_F = '1') THEN

                temp_is_zero := is_zero;
                temp_R_FLAG := R_FLAG;
                temp_ESCR_F := ESCR_F;
                temp_bit_maior_peso := bit_maior_peso;
                temp_SEL_FLAG := SEL_FLAG;

            END IF;

        END IF;


        CASE(SEL_FLAG) IS

            WHEN "000" => S_FLAG <= temp_is_zero;
            WHEN "001" => S_FLAG <= temp_bit_maior_peso;
            WHEN "010" => S_FLAG <= temp_R_FLAG(2);
            WHEN "011" => S_FLAG <= temp_R_FLAG(1);
            WHEN "100" => S_FLAG <= temp_R_FLAG(0);
            WHEN OTHERS => S_FLAG <= '0';

        END CASE;


    END PROCESS registo_de_flags;

END Behavioral;