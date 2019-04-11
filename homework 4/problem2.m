clc, clear, close all;
a=0;
b=3;
N=100;
t=linspace(a,b,N)
dt=t(2)-t(1)

for IC = [-2:0.05:3]
    y(1)=IC;
for i = 1:N-1   
    y(i+1) = dt*((-y(i))^3+2*(y(i))^2)+y(i);   
end
plot(t,y), hold on
xlabel('t'),ylabel('y')
end
