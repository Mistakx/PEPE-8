--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:48:39 04/07/2021
-- Design Name:   
-- Module Name:   C:/Users/Mistakx/Desktop/PEPE-8/PEPE-8/test_test_bench.vhd
-- Project Name:  PEPE-8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: test
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
 
ENTITY test_test_bench IS
END test_test_bench;
 
ARCHITECTURE behavior OF test_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT test
    PORT(
         input : IN  std_logic;
         output1 : OUT  std_logic_vector(7 downto 0);
         output2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic := '0';

 	--Outputs
   signal output1 : std_logic_vector(7 downto 0);
   signal output2 : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: test PORT MAP (
          input => input,
          output1 => output1,
          output2 => output2
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		input <= '1';
		wait for 100 ns;	
		input <= '0';
		wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
