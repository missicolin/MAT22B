%Forward Euler vs. Predictor Corrector 
clear; clc; close all
 
N = 10000;
t = linspace(0,10,N); 
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
    x(i)=x(i-1)+(s*(-x(i-1)+y(i-1)))*dt;
    y(i)=y(i-1)+(r*x(i-1)-y(i-1)-x(i-1)*z(i-1))*dt;
	z(i)=z(i-1)+(-b*z(i-1)+x(i-1)*y(i-1))*dt;
end
plot3(x,y,z)
xlabel('t')

