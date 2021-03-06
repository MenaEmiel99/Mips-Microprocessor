----------------------------------------------------------------------------------
--  EECE'22 - Team (12)
-- Engineer: Yahya Hamdy
--
-- Create Date:	 19:09:18 02/18/2020
-- Module Name:    PCplusOffset
-- Project Name:   16-Bit Harvard Architecture CPU
-- Target Devices: Spartan 6 - TQG144
-- Description:    A VHDL File for CPU's wire mapping source code
----------------------------------------------------------------------------------
library ieee;
 use ieee.std_logic_1164.all;  
 use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
 
entity PC_ADDER2 is
port (
       PC_plus_1,offset : in std_logic_vector (15 downto 0);
       PC_plus_offset :   out std_logic_vector (15 downto 0)
		 );
end PC_ADDER2;
 
architecture Behavioral of PC_ADDER2 is 
begin
 
Process (PC_plus_1,offset)
 
begin
 
					PC_plus_offset <= PC_plus_1+offset;
					
end Process;

end Behavioral;