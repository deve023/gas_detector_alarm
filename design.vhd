library IEEE;
use IEEE.std_logic_1164.all;

entity gas_detector_alarm is
    port (
        button: in std_logic;
        gas_detector: in std_logic;
        led: out std_logic;
        buzzer: out std_logic);
end;

architecture beh of gas_detector_alarm is

signal y: std_logic_vector(1 downto 0);
signal st: std_logic_vector(1 downto 0):="00";

begin
  st(1) <= (not gas_detector and (not st(0) or st(1))) or (not button and (st(0) or st(1)));
  st(0) <= (gas_detector and not st(0) and st(1)) or (st(0) and (not button or st(1)));

  led <= gas_detector;
  buzzer <= st(0);
  
y <= st;

end beh;