//Cruise Control Model Parameters
//Importing drive cycle parameters
clear
//clc
data = csvRead("NEDC.csv")
NEDC.time = data(3:$,1)
NEDC.values = data(3:$,2)
//Importing the slope data
data1 = csvRead("Slope.csv")
Slope.time = data1(3:$, 1)
Slope.values = data1(3:$, 2)
//Importing WLTP data
data2 = csvRead("WLTP.csv")
WLTP.time = data2(3:$, 1)
WLTP.values = data2(3:$, 2)

//Vehicle parameters
M = 1350 + 250 //Vechile curb mass(withour luggage or passengers) + luggage/passege
g = 9.81 // Acceletaion due to graviity
Crr = 0.008 // Coefficient of rolling resistance
A=2.57 //Frontal Area
Cd = 0.26 //Drag coefficient
rho = 1.225 //air density
Ti = 3.447
Kv = 1827.55
