clear; clc; close all
q0 = [0; 0];         
h = 0.00005;
t = 0:h:3;               
A = [0 1;-484*pi^2 0];  
B = [0; 1]                 
yexact = (1/(1848*pi.^2)).*(((sin(22*pi*t)).*(21*sin(2*pi*t)+sin(42*pi*t)))+(cos(22*pi*t)).*(21*cos(2*pi*t)+cos(42*pi*t)-22)) 
qstar = zeros(2,length(t));  
qstar(:,1) = q0;             
for i=1:(length(t)-1)
  k1 = A*qstar(:,i)+B*(cos(20*pi*t(i)));            
  qstar(:,i+1) = qstar(:,i) + k1*h; 
end
plot(t,yexact,'k-'), hold on, plot(t,qstar(1,:),'.');       
legend('Exact','Euler');
title('Pure resonance');
hold off