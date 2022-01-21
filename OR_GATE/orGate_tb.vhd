library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity orGate_tb is
end;

architecture bench of orGate_tb is

  component orGate
      port(A : in std_logic;
           B : in std_logic;
           Y : out std_logic);
  end component;

  signal A: std_logic;
  signal B: std_logic;
  signal Y: std_logic;

begin

  uut: orGate port map ( A => A,
                         B => B,
                         Y => Y );

  stimulus: process
  begin
  
    -- Put initialisation code here
        A <= '0' ;
        B <= '0' ;
        
        wait for 100 ns; 

        A <= '1' ;
        B <= '0' ;
        
        wait for 100 ns; 
 
        A <= '0' ;
        B <= '1' ;
     
        wait for 100 ns; 
        
        A <= '1' ;
        B <= '1' ;
       
        wait for 100 ns; 
        A <= '0' ;
        B <= '0' ;
         
    -- Put test bench stimulus code here

    wait;
  end process;


end;
