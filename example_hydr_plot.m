
clear; close all; clc;
set(groot,'defaultLineLineWidth',2.0);

%load parameters
example_hydr_params

% simulate the model
sim('example_hydr_system.slx') 

% plots the simulation results
figure(1);

subplot(221),
plot(t_sim,x_sim,'r',t_sim,u_sim,'k'),
legend('x sim','u sim','location','southeast'),
ylabel('x [m]'),
title('position / control signal'),
grid,
ax = gca; 
ax.FontSize = 24; 

subplot(222),
plot(t_sim,v_sim,'r'), 
ylabel('v [m/s]'),
title('velocity'),
grid;
ax = gca; 
ax.FontSize = 24; 

str = '#7E2F8E';
color = sscanf(str(2:end),'%2x%2x%2x',[1 3])/255;

subplot(223),plot(t_sim,pA_sim/1e5,'r'),hold on,...
    plot(t_sim,pB_sim/1e5,'Color', color),
xlabel('t [s]'),
legend('pA sim','pB sim','location','southeast'),
ylabel('p [bar]'),
title('pressure A and B'),
grid;
ax = gca; 
ax.FontSize = 24; 

subplot(224),plot(t_sim,F_sim/1e3,'r'),
xlabel('t [s]'), 
ylabel('F [kN]'),
title('force'),
grid;
ax = gca; 
ax.FontSize = 24; 
