clear; clc; close all
q0 = [0; 0];         
h = 0.005;
t = 0:h:100;               
A = [0 1;-1 0];  
B = [0; 1]                 
yexact = t.*sin(t) 
qstar = zeros(2,length(t));  
qstar(:,1) = q0;             
for i=1:(length(t)-1)
  k1 = A*qstar(:,i)+B*(2*cos(t(i)));            
  qstar(:,i+1) = qstar(:,i) + k1*h; 
end
plot(t,yexact,'k-'), hold on, plot(t,qstar(1,:),'.');       
legend('Exact','Euler');
title('Pure resonance');
hold off