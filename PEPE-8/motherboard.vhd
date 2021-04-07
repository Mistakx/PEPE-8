----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:37:25 04/07/2021 
-- Design Name: 
-- Module Name:    motherboard - struct 
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

entity motherboard is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
			  WR : in  STD_LOGIC;
           operando1 : in  STD_LOGIC_VECTOR (7 downto 0));
			  
           POUT : out  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           reg : out  STD_LOGIC_VECTOR (5 downto 0);
           constante : out  STD_LOGIC_VECTOR (7 downto 0);

end motherboard;

architecture struct of motherboard is

begin


end struct;

