----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:50 04/01/2021 
-- Design Name: 
-- Module Name:    Rom_de_descodificacao - Behavioral 
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

ENTITY Rom_de_Descodificacao IS

    PORT (
        opcode : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        reg : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
        WR : OUT STD_LOGIC;
        escr_P : OUT STD_LOGIC;
        sel_D : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        sel_R2 : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
        sel_R1 : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
        escr_R : OUT STD_LOGIC;
        sel_ALU : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        escr_F : OUT STD_LOGIC;
        sel_F : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
        sel_PC : OUT STD_LOGIC_VECTOR (1 DOWNTO 0));

END Rom_de_Descodificacao;

ARCHITECTURE Behavioral OF Rom_de_descodificacao IS

BEGIN

    rom_de_descodificacao : process(opcode)

    begin
            
        end if;

    end process rom_de_descodificacao;

END Behavioral;