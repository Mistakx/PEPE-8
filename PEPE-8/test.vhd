----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:46:36 04/07/2021 
-- Design Name: 
-- Module Name:    test - Behavioral 
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

ENTITY test IS

	PORT (
		input : IN STD_LOGIC;
		output1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		output2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);

END test;

ARCHITECTURE Behavioral OF test IS

BEGIN

	proc_name: process(input)
	
	VARIABLE temp1 : STD_LOGIC;
	VARIABLE temp2 : STD_LOGIC_VECTOR (7 DOWNTO 0);
	VARIABLE temp3 : STD_LOGIC_VECTOR (7 DOWNTO 0);

	begin
	temp2 := temp2 + '1';
	output1 <= temp2;
	
	end process proc_name;

END Behavioral;