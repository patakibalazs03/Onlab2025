clc;
clear;
%% Parameters
La=1.5e-3; %H, inductance of the armature winding
Ra=1.2; %Ohm, resistance of the armature winding
K_b=0.02; %V/rad/s the back emf constant 
K_i=0.02; %Nm/A the torque constant

J = 3e-4; % Moment inertia of wheel kg*m^2
M = 8; % Robot mass in KG
c = 0; % Location of center of gravity of robot. x=d y=o in robot frame
R = 0.05; %radius of wheel in meter
L = 0.15; %distance between wheel in meter
b = 5e-4; %Damping coefficient per wheel Nm*s/rad

C = (M*R^2+J)/2; %constant for the wheel