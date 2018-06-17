function c= interp_coeff(x, y)

% Polynomial Interpolation:
%  find a polynomial p(x), deg(p)<n, such that
%  p(x1)=y1, p(x2)=y2, ... , p(xn)= yn.
% this program computes the coefficients of p(x) in Newton's form
%  p(x)= c1 + c2(x-x1) + ... + cn(x-x1)...(x-x{n-1})
%

n = length(x);

d = zeros([n n]);

d(:, 1) = y;

for j = 2 : n
    for i= 1 : (n-j+1)
        d(i,j)= (d(i+1,j-1) - d(i,j-1))/(x(i+j-1)-x(i));
    end
end

c= d(1,:);