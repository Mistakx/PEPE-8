----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:00:04 03/29/2021 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test is
    Port ( output1 : out  STD_LOGIC;
			  output2 : out  STD_LOGIC;
			  output3 : out STD_LOGIC_VECTOR (7 DOWNTO 0);
			  input : in STD_LOGIC
	 );
end test;

architecture Behavioral of test is

 TYPE ram_type IS ARRAY (0 TO 3) OF STD_LOGIC_VECTOR(1 DOWNTO 0); -- Instruction has 19 bits, 5 opcode, 3 R1, 3 R2, 8 constante
 signal ram : ram_type;

begin

	process (input)
	
	begin
	
	
	case( input ) is
	
		when '1' => ram(1)(1) <= '1';
		when others => null;
		
	end case ;
	
	end process;


end Behavioral;

