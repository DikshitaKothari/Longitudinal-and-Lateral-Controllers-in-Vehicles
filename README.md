# Longitudinal-and-Lateral-Controllers-in-Vehicles
This paper focuses on designing the longitudinal and lateral control system for a car. 

These controllers can be used to achieve safe, efficient and stable cruise control and lane change of autonomous vehicles. The objective of the design report is to obtain optimized controllers which minimize travel time, maintain safe distance between vehicles, satisfy the constraints of the chosen vehicle and comply with traffic rules and regulations.

This project designs and simulates cruise control and lane changing controllers. The detailed analysis of the cruise control system includes numerical experiments on the linearized model of the system, testing of the controller on different SUVs, reference tracking and effect of slope disturbance for the former and effect of changing velocity and reversing for the latter. 
A PID controller is designed for the cruise control due to the small steady state error and fast response times. The effect of changing controller parameters on transient response is discussed in detail. The performance of the controller on a slope is tested to validate the system. 
A PD controller is designed for the lane change due to the low overshoot and quick response times. The system is validated for different operating speeds and reversing speeds. Nonminimum phase systems and the effect of adding a right-hand plane zero is studied in detail. 
The possible improvements on the design project are that the PID controller can be further tuned to follow the design specifications more closely. Additionally, some adjustments can be made to the lateral controller to reduce the negative effect of right-hand plane zeros on stability during revering and eliminate undershoot. The controller can be designed using RLC networks ready to be used in vehicles. 

