%% Calculation of aerodynamic parameters 

%% Step 1: Frontal calculation  

Af = 1;  %value of frontal area in m2
rho = 1.21; %density of air in kg/m3
cd = 0.1;  %coefficient of drag 
v = 10;  %maximum velocity of movement in horizontal direction in m/s

Fd = 0.5*Af*cd*rho*v*v;  %drag force calculation in Newton 

%% Step 2: Top and bottom calculation (Lift)

At = 2; %value of top projected area in m2
cl = 0.7;  %coefficient of lift 

Fl = 0.5*At*cl*rho*v*v;  %Lift force calculation in Newton  

%% Step 3: Calculation of Stall velocity 

W = 32;  %total weight in Kg

vs = sqrt(2*W*10/(rho*At*cl));  %Stall velocity in m/s