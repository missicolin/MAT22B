clc, clear, close all;
y0=1;
h=0.1;
t = 0
tf=2
ya=zeros(size(t)); 
ya(1)=y0
for i=1:(length(t)-1)
    k1 = ya(i)*(t(i)-0.5*ya(i)^2)
    ya(i+1) = ya(i) + k1*h;
end
plot(t,ya);
xlabel('t'),ylabel('y') 

