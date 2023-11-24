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

signal y: std_logic_vector(1 downto 0):="00";

begin
  y(1) <= (not gas_detector and (not y(0) or y(1))) or (not button and (y(0) or y(1)));
  y(0) <= (gas_detector and not y(0) and y(1)) or (y(0) and (not button or not y(1)));

  led <= gas_detector;
  buzzer <= y(0);

end beh;
