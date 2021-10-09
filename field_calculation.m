%% Code for Field Initial Parameters calculation 

%% Parameters Initilization

lamda = 20; %Natural number denoting the total breadth of field
mu = 12; %Natural number denoting the breadth covered in single charge

%mu should be less than lamda 

%% Parameters calculation

d = (11000/7)+lamda*pi*7;  %total distance travelled covering the full field
t = (3600*(11000+49*lamda*pi)/100000)*mu;  %total time taken to cover the full field
d1 = 100000/(7*mu);  %Distance covered in 1 Hour lengthwise
vmax = 4/mu;  %maximum required velocity 

%% Restricted values for the above codes:

%Average area of field in India = 11000 m2 (1.1 Hectares)
%Spraying length = 7 meters 
%Area covered per Hour = 100000 m2 (10 Hectares)
%Field is in the form of rectangle Profile from top




