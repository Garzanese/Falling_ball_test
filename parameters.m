%% Init falling ball simulation
% sign convention [+] up 

%% Model Parameters Definition
Cd  = 0.47;         % Drag coefficient[-]
rho = 1.293;        % Density of the fluid around the ball [kg/m3]
r   = 0.05;         % Radius of the ball [m]
m   = 0.100;        % Mass of the ball [kg]
g   = 9.81;         % Acceleration of gravity [m/s2]
G   = 6.674e-11;    % Universal gravitational constant[Nm2/kg2]
R   = 6371e3;       % Radius of the “planet” [m]
M   = 5.972e24;     % Mass of the “planet” [Kg] 

%% Initial conditions
init.v = 0;         % Starting velocity of the ball [m/s]
init.x = 10;        % Starting height of the ball above ground

%% Solver Parameters Definition
Time_end    = 5;    % Simulation end time [sec]
Time_dt     = 0.01; % Integrator sample time [sec]