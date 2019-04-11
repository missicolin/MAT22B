clear; clc; close all
q0 = [0; 0];        
h = 0.01;
t = 0:h:10;      
A = [0 1;-5 -4];  
B = [0; 1]                
yexact = exp(-2*t).*(0.25*cos(t)-1.75*sin(t))-0.25*cos(3*t)+0.75*sin(3*t);  
qstar = zeros(2,length(t));  
qstar(:,1) = q0;             
for i=1:(length(t)-1)
  k1 = A*qstar(:,i)+B*(10*cos(3*(t(i))));            
  qstar(:,i+1) = qstar(:,i) + k1*h; 
end
plot(t,yexact,'k-'), hold on, plot(t,qstar(1,:),'.');       
legend('Exact','Euler');
title('Forced Mass Spring System');
hold off
