--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:39:51 04/07/2021
-- Design Name:   
-- Module Name:   C:/Users/Mistakx/Desktop/PEPE-8/PEPE-8/motherboard_test_bench.vhd
-- Project Name:  PEPE-8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: motherboard
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY motherboard_test_bench IS

END motherboard_test_bench;

ARCHITECTURE behavior OF motherboard_test_bench IS

   -- Component Declaration for the Unit Under Test (UUT)

   COMPONENT motherboard

      PORT (
         clk : IN STD_LOGIC;
         reset : IN STD_LOGIC;
         PIN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
         POUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );

   END COMPONENT;

   --Inputs
   SIGNAL clk : STD_LOGIC := '0';
   SIGNAL reset : STD_LOGIC := '0';
   SIGNAL PIN : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

   --Outputs
   SIGNAL POUT : STD_LOGIC_VECTOR(7 DOWNTO 0);

   -- Clock period definitions
   CONSTANT clk_period : TIME := 10 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
   uut : motherboard PORT MAP(
      clk => clk,
      reset => reset,
      PIN => PIN,
      POUT => POUT
   );

   -- Clock process definitions
   clk_process : PROCESS

   BEGIN

      clk <= '0';
      WAIT FOR clk_period/2;
      clk <= '1';
      WAIT FOR clk_period/2;

   END PROCESS;

   -- Stimulus process
   stim_proc : PROCESS

   BEGIN

      reset <= '0';
      wait for 100ns;
		reset <= '1';
		wait for 100ns;
		reset <= '0';
		wait for 100ns;

      WAIT;

   END PROCESS;

END;