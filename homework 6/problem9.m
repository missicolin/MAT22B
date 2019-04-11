clear; clc;
t=-10:0.1:10
u=(16./sqrt(127)).*exp(-t/8).*(sin(sqrt(127).*t./8))
du=((-2./127).*exp(-t/8)).*(sqrt(127).*sin(sqrt(127).*t./8)-127.*cos(sqrt(127).*t./8))
plot(t,u,'color','r'); hold on;
plot(t,du','color','b');
xlabel('t'), ylabel('u')
title('u vs. t AND du vs. t')
axis([-10 10 -8 8])
legend('u=(16./sqrt(127)).*exp(-t/8).*(sin(sqrt(127).*t./8))','du=((-2./127).*exp(-t/8)).*(sqrt(127).*sin(sqrt(127).*t./8)-127.*cos(sqrt(127).*t./8))','Location','southwest')