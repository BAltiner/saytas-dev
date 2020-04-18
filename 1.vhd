--365328 beste altiner
--4 girisli 4 x 1 multiplexer

--kutuphane tanimi
Library IEEE;
use ieee.std_logic_1164.all;

--port tanimi
--A B C D  data inputs
-- S1 S2 select inputs
--Z data output
--girisler 0 1 olucak std logic kullandim
-- girisler icin in ve cikislar icin out
Entity emux41 is
port( A,B,C,D: in std_logic;
         S1,S2: in std_logic;
         Z: out std_logic);
End emux41;

--devre calisma mantik tanimi yani behavior
Architecture Behavior of emux41 is
Begin
                   Z<= A when S1 = '0' and S2='0' Else
                           B when S1 = '0' and S2='1' Else
                           C when S1 = '1' and S2='0' Else
                           D when S1 = '1' and S2='1' ;
End Behavior;