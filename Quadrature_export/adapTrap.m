function T=adapTrap(fun,a,b)

h=b-a;
c=a+h/2;

fa= fun(a);
fb= fun(b);
fc= fun(c);

%
Q1= h/2*(fa+fb); 
Q2= h/4*(fa+2*fc+fb);
Q3= (4*Q2-Q1)/3;
E2= abs(Q2-Q1)/3;

if E2<1e-6
    T= Q3;
else
    T= adapTrap(fun,a,c)+adapTrap(fun,c,b);
    disp(c);
end

