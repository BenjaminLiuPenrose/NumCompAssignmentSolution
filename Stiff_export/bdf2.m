function [t,y]=bdf2(tint,y0,dt,func,grad)

% -- the initial step
t(1)=tint(1); y(1,:)=y0; N=length(y0);
n=round((tint(2)-tint(1))/dt);

% -- the second step (Euler's method)
y(2,:)=y0+dt*func(y0)'; t(2)=t(1)+dt;

for i=2:n
    t(i+1)=t(i)+dt;
    
    % apply Newton's method
    z= y(i,:)'; r= 1.0; fv=1.0;
    while r> 1e-10 & fv>1e-6
        F = 1.5*z-2*y(i,:)'+0.5*y(i-1,:)' - dt*func(z);
        G = 1.5*eye(N,N) - dt*grad(z);
        
        x = z - G\F;
        
        r = norm(x-z); fv=norm(F);
        
        z= x;
    end 
    
    y(i+1,:)=z';
end
