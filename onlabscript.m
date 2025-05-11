clc;
clear;
%% Parameters
La=3; %H, inductance of the armature winding
Ra=6; %Ohm, resistance of the armature winding
K_b=3; %V/rad/s the back emf constant 

K_t=2; %Nm/Amp the torque constant

J = 2; % Moment inertia of robot KG*m^2
M = 5; % Robot mass in KG
c = 0; % Location of center of gravity of robot. x=d y=o in robot frame
R = 0.02;%radius of wheel in meter
L = 0.1;%distance between wheel in meter

%% Real Motor Parameters
La=0.94; %H, inductance of the armature winding
Ra=1; %Ohm, resistance of the armature winding
K_b=0.0301; %V/rad/s the back emf constant 

K_t=0.0300; %Nm/Amp the torque constant
