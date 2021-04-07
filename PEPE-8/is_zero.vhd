----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:56:42 04/05/2021 
-- Design Name: 
-- Module Name:    is_zero - Behavioral 
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

ENTITY is_zero IS

    PORT (
        operando1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        is_zero : OUT STD_LOGIC
    );

END is_zero;

ARCHITECTURE Behavioral OF is_zero IS

BEGIN

    zero : PROCESS (operando1)

    BEGIN

        IF (operando1 = "00000000") THEN
            is_zero <= '1';

        ELSE
            is_zero <= '0';

        END IF;

    END PROCESS zero;

END Behavioral;