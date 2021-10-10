%% Calculation of Power required and Propeller efficiency 

%% Step 1: Power requirement (BHP)

W = 32; %Total weight of drone in Kg
T = W*10;  %Total thrust 
n = 1.5; %Taking consideration of efficiency as the function of height 
Tnet = n*T;  %required thrust 
r = 0.01;  %rotor radii in meter 
k = 0.3636;  %value of constant dependent on air pressure and environment temperature 
P = Tnet/r*k;  %Power requirement at Propeller 

%% Step 2: Propeller efficiency calculation 

N = 12000; %RPM of single rotor 
D = 2*r; %Diameter of propeller 
Tp = Tnet/6; %thrust requirement at single propeller 
rho = 1.21;  %density of air in kg/m3
Cp = P/(rho*N*N*N*D*D*D*D*D*D); %coefficient of power 
V = 1; %true speed of air in m/s
J = V/N*D;  %advance ratio

%% Step 3: Comparsion 

%Compare the value of Cp and J and find the propeller efficiency at that
%particular RPM 

k = 0.5;  %efficiency of propeller 