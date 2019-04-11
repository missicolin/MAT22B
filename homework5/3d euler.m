%Forward Euler vs. Predictor Corrector 
clear; clc; close all
 
N = 1000;
t = linspace(0,100,N); 
dt = t(2)-t(1);
t(1) = 0;
x(1) = 10;
y(1) = 8/3;
z(1) = 28
 
for i = 2:N
    %Predictor Corrector
    xstar = x(i-1)+dt*x(i-1);
    ystar = y(i-1)+dt*y(i-1);
    zstar = z(i-1)+dt*z(i-1);
    x(i) = x(i-1)+dt/2*xstar+dt/2*x(i-1);
    y(i) = y(i-1)+dt/2*ystar+dt/2*y(i-1);
    z(i) = z(i-1)+dt/2*zstar+dt/2*z(i-1);
end
plot3(x,y,z,'.')
xlabel('t')
xlim([18 20])
