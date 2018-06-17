function p= evalp_Newton(t, c, x)

% Evaluate the interpolating polynomail in Newton's form
% p(x)= c1 + c2(x-x1) + ... + cn(x-x1)...(x-x{n-1})
%

n= length(c);

p= c(n);
for i=(n-1) : (-1) :1
    p= p*( t-x(i) ) + c(i);
end

