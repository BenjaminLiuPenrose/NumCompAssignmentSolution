%
% Newton's method for a nonlinear equation
% Find a m-fold root
%

function x= newton_m(x0,f,df,m,tol)

dx=1.0;

while dx>tol
    F=feval(f,x0); 
    J=feval(df,x0);
    
    x1 = x0 - J\F'*m;
    
    dx=abs(x1-x0);
    
    x0=x1;

    disp(x0');
end
x=x0;