%% Code for Field Initial Parameters calculation 

%% Inital Parameters
area = 11000; %area of the field in squared meter
s = 7; %Spraying length in meter
lamda = 7 ; %integer value to define the breadth of field
b = lamda*s; %breadth of field
l = 11000/b; %length of field

%% Curve calculation

r = s/2; %radius of maximum size of circle traced (assumptions)
d = pi*r; %total distance traced by curve
t = lamda*d; %total distance traced by curve

%% Distance traced in total

total = lamda*l+t; %total distance traveled by drone to cover the field

