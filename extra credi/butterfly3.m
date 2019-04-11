%Predictor Corrector 
clear; clc; close all 
N = 1000000;
t = linspace(0,100,N); 
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
    xstar = x(i-1)+dt*(x(i-1));
    ystar = y(i-1)+dt*(y(i-1));
    zstar = z(i-1)+dt*(z(i-1));
    x(i) = x(i-1)+dt/2*s*(ystar-xstar);
    y(i) = y(i-1)+dt/2*(r*xstar + ystar -(xstar* zstar));
    z(i) = z(i-1)+dt/2*(-b*zstar+xstar*ystar);
end
plot3(x,y,z)
xlabel('x'), ylabel('y'), zlabel('z')
title('X-Y-Zspace attractor')
grid on
