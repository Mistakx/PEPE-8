----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:05:14 03/27/2021 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY PC IS

    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        constante : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        ESCR_PC : IN STD_LOGIC;
        endereco : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );

END PC;

ARCHITECTURE Behavioral OF PC IS

BEGIN

    PC : PROCESS (clk, reset, constante, ESCR_PC)

        VARIABLE counter : STD_LOGIC_VECTOR(7 DOWNTO 0);

    BEGIN

        IF rising_edge(clk) THEN

            IF (reset = '0') THEN

                IF ESCR_PC = '1' THEN

                    counter := constante;

                ELSE

                    counter := counter + 1;

                END IF;

            ELSIF (reset = '1') THEN

                counter := "00000000";

            END IF;

            endereco <= counter;

        END IF;

    END PROCESS PC;

END Behavioral;