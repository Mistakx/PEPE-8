----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:05:14 03/27/2021 
-- Design Name: 
-- Module Name:    ProgramCounter - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY ProgramCounter IS

    PORT (
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        const : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        jump : IN STD_LOGIC
    );

END ProgramCounter;

ARCHITECTURE Behavioral OF ProgramCounter IS

BEGIN

    programCounter : PROCESS (clock, reset, const, jump)

        VARIABLE counter : STD_LOGIC_VECTOR(7 DOWNTO 0);

    BEGIN
    
        IF rising_edge(clock) THEN

            IF reset = '0' THEN

                IF jump = '0' THEN
                    counter := counter + 1;

                ELSE
                    counter := const;

                END IF;

            ELSE
                counter := "00000000";

                address <= counter;

            END IF;

        END IF;

    END PROCESS programCounter;

END Behavioral;