%
% Estimate the power law model of weight vs height model
% 


clear all

t=(2:11)';
h=[0.912 0.986 1.06 1.13 1.19 1.26 1.32 1.38 1.41 1.49]';
w=[13.7 15.9 18.5 21.3 23.5 27.2 32.7 36 38.6 43.7]';

b=log(w);
x=log(h);

A=[];
for i=1:10
    A(i,:)=[1 x(i)];
end

c=(A'*A)\(A'*b);

d=exp(c(1));
a=c(2);

close all
plot(h,w,'o','markerfacecolor','b');
hold on
H=0.1:0.1:1.5;
plot(H,d*H.^a);
