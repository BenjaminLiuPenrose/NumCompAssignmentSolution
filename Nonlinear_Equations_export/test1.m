%
% test the Newton's method and the modified Newton's method
% using the equation cos(x)=0.
%

func =@(x)sin(x)+x^2*cos(x)-x^2-x;
f_drv=@(x)cos(x)+2*x*cos(x)-x^2*sin(x)-2*x-1;


newton(1,func,f_drv,1e-6);
pause;
newton_m(1,func,f_drv,2,1e-6);
pause;
newton_m(1,func,f_drv,3,1e-6);

