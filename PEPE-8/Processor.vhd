----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:06 04/05/2021 
-- Design Name: 
-- Module Name:    Processor - Behavioral 
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

ENTITY Processor IS

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

END Processor;

ARCHITECTURE struct OF Processor IS

    -- Process counter 
    COMPONENT PC IS

        PORT (
            clk : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            constante : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            ESCR_PC : IN STD_LOGIC;
            endereco : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );

    END COMPONENT;

    -- ROM de descodificação
    COMPONENT Rom_de_Descodificacao IS

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
            sel_PC : OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
        );

    END COMPONENT;

    -- MUX R
    COMPONENT MUX_R IS

        PORT (
            SEL_D : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
            constante : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            dados_M : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            dados_IN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            resultado : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            dados_R : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));

    END COMPONENT;

    -- Banco de registos
    COMPONENT banco_de_registos IS

        PORT (
            clk : IN STD_LOGIC;
            sel_R2 : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
            sel_R1 : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
            escr_R : IN STD_LOGIC;
            dados_R : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            operando1 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            operando2 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );

    END COMPONENT;

    -- MUX PC
    COMPONENT MUX_PC IS

        PORT (
            S_FLAG : IN STD_LOGIC;
            SEL_PC : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
            ESCR_PC : OUT STD_LOGIC
        );

    END COMPONENT;

    -- Registo de flags
    COMPONENT Registo_de_Flags IS

        PORT (
            clk : IN STD_LOGIC;
            is_zero : IN STD_LOGIC;
            R_FLAG : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
            ESCR_F : IN STD_LOGIC;
            bit_maior_peso : IN STD_LOGIC;
            SEL_FLAG : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
            S_FLAG : OUT STD_LOGIC
        );

    END COMPONENT;

    -- ALU
    COMPONENT ALU IS

        PORT (
            SEL_ALU : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
            operando1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            operando2 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            resultado : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            R_FLAG : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );

    END COMPONENT;

    -- Gestor de periféricos
    COMPONENT Gestor_de_Perifericos IS

        PORT (
            clk : IN STD_LOGIC;
            ESCR_P : IN STD_LOGIC;
            PIN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            operando1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            POUT : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            dados_IN : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );

    END COMPONENT;

    -- Is zero
    COMPONENT is_zero IS

        PORT (
            operando1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            is_zero : OUT STD_LOGIC
        );

    END COMPONENT;

    -- Process Counter signals
    SIGNAL signal_ESCR_PC : STD_LOGIC;

    -- Rom de descodificação signals
    SIGNAL signal_SEL_PC : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL signal_SEL_F : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL signal_ESCR_F : STD_LOGIC;
    SIGNAL signal_SEL_ALU : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL signal_ESCR_R : STD_LOGIC;
    SIGNAL signal_SEL_R1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL signal_SEL_R2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL signal_SEL_D : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL signal_ESCR_P : STD_LOGIC;

    -- Mux R signals
    SIGNAL signal_dados_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL signal_resultado : STD_LOGIC_VECTOR(7 DOWNTO 0);
	 SIGNAL signal_dados_R: STD_LOGIC_VECTOR(7 DOWNTO 0);

    -- Banco de registos signals
    SIGNAL signal_operando1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL signal_operando2 : STD_LOGIC_VECTOR(7 DOWNTO 0);

    -- Registo de flags signals
    SIGNAL signal_r_flag : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL signal_bit_maior_peso : STD_LOGIC;
	 SIGNAL signal_s_flag : STD_LOGIC;

    -- Is zero signals
    SIGNAL signal_is_zero : STD_LOGIC;
	  

BEGIN

    signal_is_zero <= signal_operando1(7);

    processor_PC : PC PORT MAP(clk, reset, constante, signal_ESCR_PC, endereco);
    processor_Rom_de_Descodificacao : Rom_de_Descodificacao PORT MAP(opcode, reg, WR, signal_escr_P, signal_sel_D, signal_sel_R2, signal_sel_R1, signal_ESCR_R, signal_sel_ALU, signal_escr_F, signal_sel_F, signal_SEL_PC);
    processor_MUX_R : MUX_R PORT MAP(constante, dados_M, signal_dados_IN, signal_resultado, signal_dados_R);
    processor_banco_de_registos : banco_de_registos PORT MAP(clk, signal_sel_R2, signal_sel_R1, signal_escr_R, signal_dados_R, signal_operando1, signal_operando2);
    processor_MUX_PC : MUX_PC PORT MAP(signal_S_FLAG, signal_SEL_PC, signal_ESCR_PC);
    processor_Registo_de_Flags : Registo_de_Flags PORT MAP(clk, signal_is_zero, signal_R_FLAG, signal_ESCR_F, signal_bit_maior_peso, signal_SEL_F, signal_S_FLAG);
    processor_ALU : ALU PORT MAP(signal_SEL_ALU, signal_operando1, signal_operando2, signal_resultado, signal_R_FLAG);
    processor_Gestor_de_Perifericos : Gestor_de_Perifericos PORT MAP(clk, signal_ESCR_P, PIN, signal_operando1, POUT, signal_dados_IN);
    processor_is_zero : is_zero PORT MAP(signal_operando1, signal_is_zero);

END struct;