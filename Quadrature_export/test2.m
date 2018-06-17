function test2(h)

n= fix(1/h); u= 1.753387654377090e+00;

% Mid-point rule
f1= 0.0;
for j=1:n
    a= (j-1)*h + 0.5*h;
    f1= f1 + fun(a)*h;
end
e1= abs(f1 - u);


% trapzoidal rule
f2= 0.0;
for j=1:n
    a= (j-1)*h;
    b= j*h;
    f2= f2 + (fun(a)+fun(b))*h/2;
end
e2= abs(f2 - u);

% Simpson's rule
f3= 0.0;
for j=1:n
    a= (j-1)*h;
    b= j*h;
    c= (a+b)/2;
    f3= f3 + (fun(a)+4*fun(c)+fun(b))*h/6;
end
e3= abs(f3 - u);

disp([h e1 e2 e3])


function y=fun(x)

y= exp(cos(x*pi)^2);

end

end