# Gas Detector Alarm

The system has a gas detector. When gas is detected a yellow LED turns on and an alarm buzzer rings. When gas is no longer present, the LED turns off but the sound alarm remains until the user presses the deactivation button. Cost: aproximately USD 16 if the components are purchased through Amazon.

# Block Diagram

![BlockDiagram](https://github.com/deve023/gas_detector_alarm/assets/51866497/859c90ef-cf32-4685-a431-cbdabb6bcf5a)

The repository contains the VHD code describing the hardware, a test bench to try out the different scenarios and the circuit diagram. 3D design of the case is pending.

# Bill of Materials

![BOM](https://github.com/deve023/gas_detector_alarm/assets/51866497/82cee110-85c8-43f7-ae3f-7c5059b135b7)

# Case Example

In this scenario, pressing the button when the alarm is off does not change the output. Once gas is detected, LED and buzzer both turn on. If gas is no longer detected, LED goes off but buzzer remains. Only when pressing the button does the buzzer turn off. Furthermore, if gas is detected when the button is on, the user must release the button and press it again to deactivate the alarm. This last functionality is set like this in case the button gets stuck, if that is the case and the user is unaware of the button's condition the alarm would go off anyway.

![Example](https://github.com/deve023/gas_detector_alarm/assets/51866497/f62a8d85-7231-434b-b6dc-746ad50aaa6d)
