----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:45:05 03/29/2021 
-- Design Name: 
-- Module Name:    MUX_R - Behavioral 
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

ENTITY MUX_R IS

	PORT (
		SEL_D : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		constante : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		dados_M : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		dados_IN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		resultado : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		dados_R : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));

END MUX_R;

ARCHITECTURE Behavioral OF MUX_R IS

BEGIN

	MUX_R : PROCESS (SEL_D, constante, dados_M, dados_IN, resultado)

	BEGIN

		CASE (SEL_D) IS

			WHEN "00" => dados_R <= constante;
			WHEN "01" => dados_R <= dados_M;
			WHEN "10" => dados_R <= dados_IN;
			WHEN "11" => dados_R <= resultado;
			WHEN OTHERS => dados_R <= "00000000";

		END CASE;

	END PROCESS MUX_R;

END Behavioral;