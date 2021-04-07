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

        rom_descodificacao: process(opcode, reg)

        begin

            case( opcode ) is
            
                -- Peripherals
                when "00000" => sel_ALU <= "XXXX"; escr_P <= '0'; sel_D <= "10"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- LDP Ri
                when "00001" => sel_ALU <= "XXXX"; escr_P <= '1'; sel_D <= "XX"; escr_R <= '0'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- STP Ri

                -- Reading and writing
                when "00010" => sel_ALU <= "XXXX"; escr_P <= '0'; sel_D <= "00"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- LD Ri, constante
                when "00011" => sel_ALU <= "XXXX"; escr_P <= '0'; sel_D <= "01"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- LD Ri, [constante]
                when "00100" => sel_ALU <= "XXXX"; escr_P <= '0'; sel_D <= "XX"; escr_R <= '0'; WR <= '1'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- ST [constante], Ri

                -- ALU operations
                when "00101" => sel_ALU <= "0000"; escr_P <= '0'; sel_D <= "11"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- Add Ri, Rj
                when "00110" => sel_ALU <= "0001"; escr_P <= '0'; sel_D <= "11"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- Sub Ri, Rj
                when "00111" => sel_ALU <= "0010"; escr_P <= '0'; sel_D <= "11"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- And Ri, Rj
                when "01000" => sel_ALU <= "0011"; escr_P <= '0'; sel_D <= "11"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- Nand Ri, Rj
                when "01001" => sel_ALU <= "0100"; escr_P <= '0'; sel_D <= "11"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- Or Ri, Rj
                when "01010" => sel_ALU <= "0101"; escr_P <= '0'; sel_D <= "11"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- Nor Ri, Rj
                when "01011" => sel_ALU <= "0110"; escr_P <= '0'; sel_D <= "11"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- Xor Ri, Rj
                when "01100" => sel_ALU <= "0111"; escr_P <= '0'; sel_D <= "11"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- Nxor Ri, Rj
                when "01101" => sel_ALU <= "1000"; escr_P <= '0'; sel_D <= "11"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- Shift_left(Ri, Rj)
                when "01110" => sel_ALU <= "1001"; escr_P <= '0'; sel_D <= "11"; escr_R <= '1'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- Shift_right(Ri, Rj)
                when "01111" => sel_ALU <= "1010"; escr_P <= '0'; sel_D <= "XX"; escr_R <= '0'; WR <= '0'; sel_PC <= "10"; escr_F <= '1'; sel_F <= "XXX"; -- CMP Ri, Rj

                -- Jump
                when "10000" => sel_ALU <= "XXXX"; escr_P <= '0'; sel_D <= "XX"; escr_R <= '0'; WR <= '0'; sel_PC <= "00"; escr_F <= '0'; sel_F <= "011"; -- JG constante
                when "10001" => sel_ALU <= "XXXX"; escr_P <= '0'; sel_D <= "XX"; escr_R <= '0'; WR <= '0'; sel_PC <= "00"; escr_F <= '0'; sel_F <= "010"; -- JNE constante
                when "10010" => sel_ALU <= "XXXX"; escr_P <= '0'; sel_D <= "XX"; escr_R <= '0'; WR <= '0'; sel_PC <= "00"; escr_F <= '0'; sel_F <= "100"; -- JL constante
                when "10011" => sel_ALU <= "XXXX"; escr_P <= '0'; sel_D <= "XX"; escr_R <= '0'; WR <= '0'; sel_PC <= "01"; escr_F <= '0'; sel_F <= "XXX"; -- JMP constante
                when "10100" => sel_ALU <= "XXXX"; escr_P <= '0'; sel_D <= "XX"; escr_R <= '0'; WR <= '0'; sel_PC <= "00"; escr_F <= '1'; sel_F <= "001"; -- JN Ri, constante
                when "10101" => sel_ALU <= "XXXX"; escr_P <= '0'; sel_D <= "XX"; escr_R <= '0'; WR <= '0'; sel_PC <= "00"; escr_F <= '1'; sel_F <= "000"; -- JZ Ri, constante    
                
                -- Other
                when others => sel_ALU <= "XXXX"; escr_P <= '0'; sel_D <= "XX"; escr_R <= '0'; WR <= '0'; sel_PC <= "10"; escr_F <= '0'; sel_F <= "XXX"; -- NOP
            
            end case ;            
                
        end process rom_descodificacao;

END Behavioral;