clc, clear, close all;
y(1) = 0; %% initial condition, position
y(2) = 0; %% initial condition, velocity
dt = 0.1; %% set the time step interval
tfinal = 2; %% final time to integrate to
time = 0; %% set the time=0
Nsteps = round(tfinal/dt) %% number of steps to take.
plot(time,y(1),'*');
hold on; %% accumulate contents of the figure
for i = 1:NSteps %% number of time steps to take
dy(2) = -1.25*y(1)+10*cos(3*t(i)) %% Equation for dv/dt
dy(1) = y(2) %% Equation for dx/dt
y = y + dt*dy %% integrate both equations with Euler
time = time + dt
plot(time,y(1),'*');
plot(time,cos(time),'r');
end