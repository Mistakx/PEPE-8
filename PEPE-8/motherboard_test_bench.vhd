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
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         PIN : IN  std_logic_vector(7 downto 0);
         POUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: motherboard PORT MAP (
          clk => clk,
          reset => reset,
          PIN => PIN,
          POUT => POUT
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      Reset <= '1';
		wait for 10 ns;
		PIN <= "00000000";
		Reset <= '0';
		wait for 200 ns;
		Reset <= '1';
		wait for 10 ns;
		Reset <= '0';


      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
