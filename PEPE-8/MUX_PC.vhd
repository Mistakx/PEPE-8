----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:22:16 03/29/2021 
-- Design Name: 
-- Module Name:    MUX_PC - Behavioral 
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

ENTITY MUX_PC IS

    PORT (
        S_FLAG : IN STD_LOGIC;
        SEL_PC : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        ESCR_PC : OUT STD_LOGIC
    );
    
END MUX_PC;

ARCHITECTURE Behavioral OF MUX_PC IS

BEGIN

    MUX_PC : PROCESS (S_FLAG, SEL_PC)

    BEGIN

        CASE(SEL_PC) IS

            WHEN "00" => ESCR_PC <= S_FLAG;
            WHEN "01" => ESCR_PC <= '1';
            WHEN "10" => ESCR_PC <= '0';
            WHEN OTHERS => ESCR_PC <= '0';

        END CASE;

    END PROCESS MUX_PC;

END Behavioral;