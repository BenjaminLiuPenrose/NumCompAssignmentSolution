%
% test the bisection method and the Newton's method
% using the equation cos(x)=0.
%

bisect(0,6,@cos,1e-6);
pause
newton(1,@cos,@(x)-sin(x),1e-6);

