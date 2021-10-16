%% Battery Specification Calculation

%% Step 1: Parameters Initilization

v = 3.7;  %Nominal voltage of each cell of Lipo battery in Volts
Vn = 25.6; %Nominal Battery voltage in Volts

Ns = Vn/v;  %Number of cells in series 
t = 1/6;  %Flight time in Hours

Q = 18.6;  %Capacity of Battery in Ah

Nm = 6; %Number of motors for the drone connected to propeller 

%% Step 2: Calculations

If = Q/t; %required flying load current for all the rotors in A

Ie = 2; %current drawn by the electronics and other miscellenous components in A

Im = If-Ie;  %current required by all rotors in A

Is = Im/Nm; %current drawn by single motor connected to propeller in Ampere 

Wmax = If*Vn;  %Power required in Watt 