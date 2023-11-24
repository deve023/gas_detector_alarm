library IEEE;
use IEEE.std_logic_1164.all;

entity TB_gas_detector_alarm is
end;

architecture Test of TB_gas_detector_alarm is

signal button, gas_detector, led, buzzer : std_logic:='0';

component gas_detector_alarm
    port (
        button: in std_logic;
        gas_detector: in std_logic;
        led: out std_logic;
        buzzer: out std_logic);
end component;

begin
  DUT: gas_detector_alarm port map (button, gas_detector, led, buzzer);
  
  button <= '0','1' after 5 ns, '0' after 10 ns, '1' after 25 ns, '0' after 40 ns, '1' after 45 ns, '0' after 60 ns;
  gas_detector <= '0', '1' after 15 ns, '0' after 20 ns, '1' after 30 ns, '0' after 35 ns;
end Test;
