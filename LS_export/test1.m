
clear all

time=0:1/8:7/8;
for i=1:8
    A(i,:)=[1 cos(2*pi*time(i)) sin(2*pi*time(i))];
end
b=[-2.2 -2.8 -6.1 -3.9 0 1.1 -0.6 -1.1]';

plot(time,b,'ro','markersize',8,'markerfacecolor','r');

disp(A'*A)

c=(A'*A)\(A'*b);

r=b-A*c;
%
% Estimate a model with periodic data
%


RSME=norm(r)/sqrt(8)

t=0:0.01:1;
hold on
plot(t,c(1)+c(2)*cos(2*pi*t)+c(3)*sin(2*pi*t),'b-');

pause;

A=[];
for i=1:8
    A(i,:)=[1 cos(2*pi*time(i)) sin(2*pi*time(i)) cos(4*pi*time(i))];
end

c=(A'*A)\(A'*b);

r=b-A*c;

RSME=norm(r)/sqrt(8)

plot(t,c(1)+c(2)*cos(2*pi*t)+c(3)*sin(2*pi*t)+c(4)*cos(4*pi*t),'k--');


pause;

A=[];
for i=1:8
    A(i,:)=[1 cos(2*pi*time(i)) sin(2*pi*time(i)) cos(4*pi*time(i)) sin(4*pi*time(i))];
end

c=(A'*A)\(A'*b);

r=b-A*c;

plot(t,c(1)+c(2)*cos(2*pi*t)+c(3)*sin(2*pi*t)+c(4)*cos(4*pi*t)+c(5)*sin(4*pi*t),'m-.');


RSME=norm(r)/sqrt(8)

legend('Data','Model 1','Model 2','Model 3');

