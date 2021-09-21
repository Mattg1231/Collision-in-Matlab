% Matthew Gjanci
% ECE 202 Exercise M1
% 9/4/2021
% Elastic collision between two cars in 1D
%https://socratic.org/questions/how-is-the-elastic-collision-equation-derived
%Discription: In this assignment we are looking into an example of elastic 
%1D collision of 2 carts and figuring out their unknown final velocity and 
%then verify the answers

clear


% ------GIVEN VARIABLES------

m1 = 250; % The masses of both carts, 1&2 respectively, 
m2 = 150; % units in grams
v1i = 40; % Initial velocities of both carts, (+) being rightward,
v2i = -30; % negative being leftward, units as cm/s
M = m1 + m2; % Both masses added, again in grams


% -------CALCULATIONS-------
% equations used, to find the final velocities of the carts 1&2 
% respectively after the collision, units in cm/s
v1f = (2*m2*v2i + (m1-m2)*v1i)/M 
v2f = (2*m1*v1i + (m2-m1)*v2i)/M 


% ------- checking ------

%checking answer through conservation of momentum 
pi = m1*v1i + m2*v2i; % these equations give the initial and final
pf = m1*v1f + m2*v2f; % momentum for the system, in g*cm/s

dp = pi - pf    % the change in momentum, which should be 0 if the
                % equations above are correct, units in g*cm/s

%checking answer through conservation of energy
KEi = (1/2)*m1*v1i^2 + (1/2)*m2*v2i^2; % These are the initial and final
KEf = (1/2)*m1*v1f^2 + (1/2)*m2*v2f^2; % Kinetic energy(KE) values of the 
% system, in ergs, which should be 0 as energy is conserved

dKE = KEi - KEf % prints out the change in KE, which should be 0, in ergs

%Calculations were succesful since my checks came out to 0