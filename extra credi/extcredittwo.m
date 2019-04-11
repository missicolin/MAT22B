clear; clc; close all
tf = 10;
Nt = 1000;
dt = tf/Nt;
t = 0:dt:tf;
y0 = 0;
u0 = 0;
y(1) = y0;
u(1) = u0;
A=exp(-2*t).*(0.25*cos(t)-1.75*sin(t))-0.25*cos(3*t)+0.75*sin(3*t)
for i = 1:Nt;
    u(i+1) = u(i) + dt*(-1.25*y(1)+2.5*cos(3*t(i)));
    y(i+1) = y(i) + dt*u(i);
end
plot(t,u,'.'), hold on, plot(t,A,'k-')
xlabel('t'),legend('Euler','Exact')

