%% Falling Ball Main
clc
clear

%% Gravity law selection: [0] constant [1] universal gravity
gravity_law_input = questdlg('Which gravitational law do you want to use?','Gravitational law selection','Constant','Newtonian gravitation','Constant');

switch gravity_law_input
    case 'Constant'
        gravity_law = 0;
    case 'Newtonian gravitation'
        gravity_law = 1;
    otherwise
        error('please select a gravity law to use');
end

%% Model Parameters definition
if isfile('parameters.m')
    run('parameters.m');
else
    error('parameter fils is missing');
end

%% Check if the needed parameters are defined
switch gravity_law
    case 0
        parameters_to_check={'Cd','g','m','r','rho'};
    case 1
        parameters_to_check={'Cd','g','m','r','rho','G','R','M'};        
end

logic=false(size(parameters_to_check));
for ipar=1:length(parameters_to_check)
    if ~exist(parameters_to_check{ipar},'var')
        logic(ipar)=true;
    end
end
if any(logic)
    error(['Following variables are missing: ',strjoin(parameters_to_check(logic),', ')]);
end


%% Run Model
res=sim('falling_ball_sim.slx','StopTime', num2str(Time_end),'FixedStep',num2str(Time_dt));

%% Plot 
hFig=Plot_function(res.simout);