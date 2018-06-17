%
% Estimate the exponential model of car supplies
%

t=[1950:5:1980]';
y=[53.05 73.04 98.31 139.78 193.48 260.20 320.39]';

b= log(y);
A=[];
for i=1:7
    A(i,:)=[1 t(i)];
end

c=(A'*A)\(A'*b);

d=exp(c(1));
a=c(2);

plot(t,y,'o');
hold on
time=1950:0.1:1980;
plot(time,d*exp(time*a));