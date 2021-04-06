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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY Processor IS

    PORT (
        reset : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        reg : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
        constante : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        dados_M : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        PIN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);

        endereco : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        constante : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
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

    END PC;

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

    END Rom_de_Descodificacao;

    -- MUX R
    COMPONENT MUX_R IS

        PORT (
            SEL_D : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
            constante : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            dados_M : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            dados_IN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            resultado : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            dados_R : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));

    END MUX_R;

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

    END banco_de_registos;

    -- MUX PC
    COMPONENT MUX_PC IS

        PORT (
            S_FLAG : IN STD_LOGIC;
            SEL_PC : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
            ESCR_PC : OUT STD_LOGIC
        );

    END MUX_PC;

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

    END Registo_de_Flags;

    -- ALU
    COMPONENT ALU IS

        PORT (
            SEL_ALU : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
            operando1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            operando2 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            resultado : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            R_FLAG : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );

    END ALU;

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

    END Gestor_de_Perifericos;

    -- Is zero
    COMPONENT is_zero IS

        PORT (
            input : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            output : OUT STD_LOGIC
        );

    END is_zero;

    -- Process Counter signals
    SIGNAL ESCR_PC : STD_LOGIC;

    -- Rom de descodificação signals
    SIGNAL SEL_PC : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL SEL_F : STD_LOGIC_VECTOR(2 DOWNTO 0)
    SIGNAL ESCR_F : STD_LOGIC;
    SIGNAL SEL_ALU : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL ESC_R : STD_LOGIC;
    SIGNAL SEL_R1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL SEL_R2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL SEL_D : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL ESCR_P : STD_LOGIC;

    -- Mux R signals
    SIGNAL dados_IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL resultado STD_LOGIC_VECTOR(7 DOWNTO 0);

    -- Banco de registos signals
    SIGNAL operando1 STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL operando2 STD_LOGIC_VECTOR(7 DOWNTO 0);

    -- Registo de flags signals
    SIGNAL r_flag STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL bit_maior_peso STD_LOGIC;
    
    -- Is zero signals
    SIGNAL is_zero STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

    processor_PC : PC(clk, reset, constante, ESCR_PC, endereco);
    processor_Rom_de_Descodificacao : Rom_de_Descodificacao(opcode, reg, WR, escr_P, sel_D, sel_R2, sel_R1, escr_R, sel_ALU, escr_F, sel_F, sel_PC);
    processor_MUX_R : MUX_R(constante, dados_M, dados_IN, resultado, dados_R);
    processor_banco_de_registos : banco_de_registos(clk, sel_R2, sel_R1, escr_R, dados_R, operando1, operando2);
    processor_MUX_PC : MUX_PC(S_FLAG, SEL_PC, ESCR_PC);
    processor_Registo_de_Flags : Registo_de_Flags(clk, is_zero, R_FLAG, ESCR_F, bit_maior_peso, SEL_FLAG, S_FLAG);
    processor_ALU : ALU(SEL_ALU, operando1, operando2, resultado, R_FLAG);
    processor_Gestor_de_Perifericos : Gestor_de_Perifericos(clk, ESCR_P, PIN, operando1, POUT, dados_IN);
    processor_is_zero : is_zero(input, output);
    
END Behavioral;