%
% Polynomial interpolation using Newton's divided differences
%


clear all

p=[];


% function f(x), represented at many points  
x=-1:0.001:1;
y=(1+4*x.^2).^(-1);

%% Interpolation with a p16

% data points
h= 2/16;
X= -1+h/2:h:1-h/2;
Y= (1+4*X.^2).^(-1);

% compute the coefficients
c= interp_coeff(X, Y);

% evaluate p(x) at the points in x
m= length(x);
for j=1:m
    p(j)= evalp_Newton(x(j), c, X);
end
   
plot(x,y,'r','linewidth',2);
hold on
plot(x,p,'k--','linewidth',2);

%% Interpolation with a p32

% data points
h= 2/32;
X= -1+h/2:h:1-h/2;
Y= (1+4*X.^2).^(-1);

% compute the coefficients
c= interp_coeff(X, Y);

% evaluate p(x) at the points in x
m= length(x);
for j=1:m
    p(j)= evalp_Newton(x(j), c, X);
end
   
plot(x,p,'b-.','linewidth',2);
legend('f(x)','p_{16}(x)', 'p_{32}(x)');


