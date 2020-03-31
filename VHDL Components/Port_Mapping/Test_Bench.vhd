--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:46:01 03/31/2020
-- Design Name:   
-- Module Name:   E:/MP/Mips-Microprocessor/VHDL Components/Port_Mapping/Test_Bench.vhd
-- Project Name:  Port_Mapping
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Port_Mapping
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
 
ENTITY Test_Bench IS
END Test_Bench;
 
ARCHITECTURE behavior OF Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Port_Mapping
    PORT(
         CPU_clk : IN  std_logic;
         CPU_Reset : IN  std_logic;
         Input_Register : IN  std_logic_vector(15 downto 0);
         Output_Register : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CPU_clk : std_logic := '0';
   signal CPU_Reset : std_logic := '0';
   signal Input_Register : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Output_Register : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CPU_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Port_Mapping PORT MAP (
          CPU_clk => CPU_clk,
          CPU_Reset => CPU_Reset,
          Input_Register => Input_Register,
          Output_Register => Output_Register
        );

   -- Clock process definitions
   CPU_clk_process :process
   begin
		CPU_clk <= '0';
		wait for CPU_clk_period/2;
		CPU_clk <= '1';
		wait for CPU_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CPU_clk_period*10;
      -- insert stimulus here 
		
      wait;
   end process;

END;
