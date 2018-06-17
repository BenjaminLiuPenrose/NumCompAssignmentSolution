%
% test the second order Runge-Kutta method
% 

close all

int=[0,20];

a=10; dt=0.25;

y0=1.5;

[t2,y2]=RK2(int,y0,dt,@logistic);

ye= 1 - 1./(1+y0/(1-y0)*exp(a*t2));

plot(t2,y2,'k--',t2,ye,'r-','linewidth',2)

title('Runge Kutta 2');

xlim([0 20]);

[t4,y4]=RK4(int,y0,dt,@logistic);

ye= 1 - 1./(1+y0/(1-y0)*exp(a*t4));

pause

figure

plot(t4,y4,'k--',t4,ye,'r-','linewidth',2)

xlim([0 20]);

title('Runge Kutta 4');