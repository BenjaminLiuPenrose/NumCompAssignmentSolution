%
% find the root of the function func in the interval [a, b]
% using the bisection method
%

function r = bisect(a,b,func,TOL)

fa= feval(func,a);
fb= feval(func,b);

c = (a+b)/2;

while b-a > TOL
    
    c= (a+b)/2;
    fc= feval(func,c);

    if fc*fa< 0
        b=c;
    else
        a=c;
    end

    disp(c)
end

r=c;

end