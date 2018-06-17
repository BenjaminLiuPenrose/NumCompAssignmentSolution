%
% Polynomial interpolation using Newton's divided differences
%

clear all

p=[];


% function f(x), represented at many points  
x=-1:0.001:1;
y=(1+4*x.^2).^(-1);

%% Interpolation with a p4

% data points
X= [-1 -.5 0 .5 1];
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

%% Interpolation with a p8

% data points
X= [-1 -.75 -.5 -.25 0 .25 .5 .75 1];
Y= (1+4*X.^2).^(-1);

% compute the coefficients
c= interp_coeff(X, Y);

% evaluate p(x) at the points in x
m= length(x);
for j=1:m
    p(j)= evalp_Newton(x(j), c, X);
end
   
plot(x,p,'b-.','linewidth',2);
legend('f(x)','p_4(x)', 'p_8(x)');


