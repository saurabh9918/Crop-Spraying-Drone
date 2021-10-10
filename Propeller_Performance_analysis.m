%% Propeller performance analysis (for single propeller)

%using Blade element theory 

%% Parameters Initilization

W1 = 16; %Total weight of drone excluding payload in kg
W2 = 20; %Total payload capacity in kg
W = W1+W2;  %Total required load to be raised
V1 = 10;  %air flow velocity in m/s
V0 = 7;  %flight speed in m/s
v1 = V1-V0;  %propeller induced velocity in m/s
rho = 1.27;  %air density in kg/m3
n = 6;  %number of motor/propeller

%% Radius Calculation

T = W*10;  %Total required thrust in Newton 
Ti = T/6; %Individual thrust for each rotor in Newton 
a = 2*rho*pi*V1*v1; 
R = sqrt(Ti/a);  %required radius of blade in meter

%% Landing Calculation 

Tl = -2*rho*pi*R*R*V1*v1; 

%% Hovering calculation

Th = 2*pi*rho*R*R*v1;
V0h = 0;

%% Tilted flight condition

alpha1 = 20; %value of alpha 1 in degrees
alpha2 = 15; %value of alpha 2 in degrees
Tt = 2*pi*rho*R*R*V1*v1;
V1t = V0*sind(alpha2)+v1*cosd(alpha1-alpha2);

%% Final result 

%diameter of propeller = 37 inch 

%% End 

