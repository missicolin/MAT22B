clc, clear, close all;
y0=0;
h=0.1;
i=0.001;
t = 0:h:10;
x=0:i:10;
ya=zeros(size(t)); 
ya(1)=y0
yexact=-1.2*exp(-2*x)+0.6*sin(x)+1.2*cos(x)
for i=1:(length(t)-1)
    k1 = -2*ya(i)+3*cos(t(i))
    ya(i+1) = ya(i) + k1*h;
end
plot(t,ya,x,yexact);
xlabel('t'),ylabel('y') 
title('dy/dt=3cos(t)-2y') 
