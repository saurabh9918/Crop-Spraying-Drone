%% Motor Specification Calculation

%% Step 1: Parameters Initilization 

w1 = 12; %Total weight of drone in kg
w2 = 20; %Total Payload capacity in kg 

Dp = 5; %Propeller diameter in inches 
P = 4; %Propeller Pitch in inches 

Kv = 2300; %Voltage constant of motor 
V = 11.1; %Nominal voltage of Motor/Battery
Imax = 4.5; %Maximum current drawn in A
Ah = 2.2; %Ampere rating of Motor in Ah
Dr = 25; %Maximum Discharge rate in 1/h

%% Step 2: Calculation

RPM = Kv*V; %RPM generated by the motor 
k = 5.3*(10^-15); %constant for power calculation 
Power = k*RPM*RPM*RPM*Dp*Dp*Dp*Dp*P;  %Power requirement in Watt
Ampr = Ah*Dr; %Amp rating of motor 
Wmax = V*Ampr;  %Maximum wattage of motor 

%% Thrust calculation 

rho = 1.21; %air density in kg/m3
T = sqrt((pi/2)*(Dp*0.0254)*(Dp*0.0254)*rho*Wmax*Wmax); %Thrust produced by a propeller in Newton

Nmotor = 6; %Number of motor used in the Drone

Ttotal = T*Nmotor; %Total thrust produced in Newton