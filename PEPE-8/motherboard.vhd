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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY motherboard IS

    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        endereco : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        PIN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        WR : IN STD_LOGIC;
        operando1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);

        POUT : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        opcode : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
        reg : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
        constante : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );

END motherboard;

ARCHITECTURE struct OF motherboard IS

    COMPONENT Memoria_de_Instrucoes IS

        PORT (
            endereco : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            opcode : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
            reg : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
            constante : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );

    END COMPONENT;

    COMPONENT Memoria_de_Dados IS

        PORT (
            clk : IN STD_LOGIC;
            constante : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            operando1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            dados_M : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            WR : IN STD_LOGIC);

    END COMPONENT;

    -- Memoria de instruções signals


    -- Memoria de dados signals


BEGIN
END struct;