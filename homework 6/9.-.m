clear; clc;
t=-100: 0.01:100
u=(16./sqrt(127))*exp(-t/8)*sin(sqrt(127)./8)*t)
plot(t,u,'color','r');