%Forward Euler vs. Predictor Corrector 
clear; clc; close all
 
N = 1000;
t = linspace(0,20,N); 
dt = t(2)-t(1);
t(1) = 0;
s=10;
b=8/3;
r=28;
x(1) = 1;
y(1) = 1;
z(1) = 1;
 
for i = 2:N
    %Predictor Corrector
    x' = ?(y - x)
y' = x(r - z) - y
z' = xy - bz
    xstar = x(i-1)+dt*(x(i-1));
    ystar = y(i-1)+dt*(y(i-1));
    zstar = z(i-1)+dt*(z(i-1));
    x(i) = x(i-1)+dt/2*xstar+dt/2*x(i-1);
    y(i) = y(i-1)+dt/2*ystar+dt/2*y(i-1);
    z(i) = z(i-1)+dt/2*zstar+dt/2*z(i-1);
end
plot3(x,y,z)
xlabel('t')
xlim([-20 20])
ylim([-50 50])
zlim([5 45])

