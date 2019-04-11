clear; clc;
t=-30:0.01:30
w=0.7
u=(-(w^2+2)./(1-w^2)).*cos(t)+sin(t)+(3./(1-w^2)).*cos(w.*t)
plot(t,u,'color','r'); 
xlabel('t'), ylabel('u')
title('u vs. t ')
axis([-30 30 -15 15])
legend('u=(-(w^2+2)./(1-w^2)).*cos(t)+sin(t)+(3./(1-w^2)).*cos(w.*t)','Location','southwest')