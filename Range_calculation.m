%% Range calculation 

W1 = 12; %Total weight of drone in kg excluding payload
W2 = 20; %Total weight of payload in kg
Tmin = W1+W2; %Minimum required thrust in kg
T = 1.2*Tmin;  %Maximum thrust requirement considering efficiencies
n = 6;  %Number of motors or propeller 
Tm = T/n;  %Thrust per motor/propeller in kg 
B = 110; %Battery capacity in Ah
D = 0.8;  %Battery discharge for LiPo battery 
V = 11; %Voltage of battery in V
c = 170; %Watt to lift ratio for drone in Watt
AAD = T*c/V;  %Average ampere drawn in flight 
t = B*D/AAD;  %Total time of flight in hours
v = 12; %required maximum speed of drone in kmph
r = v*t; %total range in Kilometers 