%%
% parameter file for a simulink model of a hydraulic system
% model name example_hydr_system.slx
% the model can be used to simulate a system which has an ideal flow
% source, a control valve, pipes and a cylinder which is used to move an
% inertial load
%%

% constants
m_load = 2850;                  % Effective inertia load [kg]
g = 9.81;                       % Gravitational acceleration [m/s^2]
p_tank = 1.01325e5 ;            % Atmospheric pressure [Pa] 
p_supply = 90e5 ;               % Supply pressure [Pa]
effective_bulkmodulus = 750e6;  % Effective bulkmodulus [Pa]
friction.visc = 1000 ;          % Viscous friction factor [Ns/m]


% cylinder
cyl.d_piston = 0.060;                                           % Cylinder piston diameter [m]
cyl.d_rod = 0.030;                                              % Cylinder rod diameter [m]
cyl.stroke = 0.45;                                              % Cylinder stroke leght [m]
cyl.A_piston = pi*(cyl.d_piston/2)^2;                           % Cylinder piston area [m^2]
cyl.A_rodside = (pi*(cyl.d_piston/2)^2)-(pi*(cyl.d_rod/2)^2) ;  % Cylinder rod side area [m^2]
cyl.x_init = 0.23;                                              % Starting position of cylinder [m]
cyl.V0A =  0.3/1e3;                                             % V0 in the A side of the cylinder [m^3]
cyl.V0B = 0.15/1e3;                                             % V0 in the B side of the cylinder [m^3]
cyl.p0A = 25e5 ;                                                % Cylinder A-chamber initial pressure [Pa]
cyl.p0B = 35e5 ;                                                % Cylinder A-chamber initial pressure [Pa]


% 4/3 control valve
valve.QN = 20/60000 ;                                           % Nominal flow of valve [m^3/s]
valve.dpN = 3.5e6 ;                                             % Nominal pressure of nominal flow [Pa]
valve.ptr = 0.1e6 ;                                             % Valve transition pressure [Pa]
valve.delay = 1e-3;                                             % Delay of the valve [s]
valve.tau = 2e-3 ;                                              % Time constant of valve [s]
valve.ratelimit = 17 ;                                          % Rate limit of valve rising speed [-]


% pipes 
pipe.diameter = 0.016 ;                                 % Pipe inner diameter [m]
pipe.lenght = 0.8 ;                                     % Lenght of pipe [m]
pipe.volume = (pi*((pipe.diameter/2)^2)*pipe.lenght) ;  % Pipe volume [m^3]
pipe.area = (pi*(pipe.diameter/2)^2);                   % Area of the pipe [m^2] 

