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
        PIN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        POUT : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
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

    COMPONENT Processor IS

        PORT (
            clk : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            opcode : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
            reg : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
            constante : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            dados_M : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            PIN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);

            endereco : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            WR : OUT STD_LOGIC;
            operando1 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            POUT : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );

    END COMPONENT;

    -- Memoria de instruções signals
    SIGNAL signal_endereco : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL signal_opcode : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL signal_reg : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL signal_constante : STD_LOGIC_VECTOR(7 DOWNTO 0);

    -- Memoria de dados signals
    SIGNAL signal_operando1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL signal_WR : STD_LOGIC;
    SIGNAL signal_dados_M : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

    motherboard_Memoria_de_Instrucoes : Memoria_de_Instrucoes PORT MAP(signal_endereco, signal_opcode, signal_reg, signal_constante);
    motherboard_Memoria_de_Dados : Memoria_de_Dados PORT MAP(clk, signal_constante, signal_operando1, signal_dados_M, signal_WR);
    motherboard_processor : processor PORT MAP(clk, reset, signal_opcode, signal_reg, signal_constante, signal_dados_M, PIN, signal_endereco, signal_WR, signal_operando1, POUT);

END struct;