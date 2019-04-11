clc;
clear;
close all;
y0=1;
a=1/2;
b=3;
n(1)=1;
y(1)=y0;
N=10;
for i=2:N
    n(i)=1;
    y(i)=a*y(i)+b;
end
plot(n,y,',-')
xlabel('n'), ylabel('y(n)')
title('first order recurssion example')
ylim([min(y)-1 max(y)+1])