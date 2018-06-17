function f=func2(u)

K1=0.04; K2=1e4; K3=3e7;

f=zeros([3 1]);
f(1)= -K1*u(1) + K2*u(2)*u(3);
f(2)= K1*u(1)  - K2*u(2)*u(3) - K3*u(2)*u(2);
f(3)= K3*u(2)*u(2);
