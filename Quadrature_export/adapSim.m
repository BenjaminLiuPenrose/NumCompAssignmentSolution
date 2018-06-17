function S=adapSim(fun,a,b)

h=b-a;

h4=h/4;

f0= fun(a);
f1= fun(a+h4);
f2= fun(a+2*h4);
f3= fun(a+3*h4);
f4= fun(b);


Q1= h/6*(f0+4*f2+f4); 
Q2= h/12*(f0+4*f1+2*f2+4*f3+f4);
Q3= (16*Q2-Q1)/15;
E2= abs(Q2-Q1)/15;

if E2<1e-6
    S= Q3;
else
    c= (a+b)/2;
    S= adapSim(fun,a,c)+adapSim(fun,c,b);
    disp(c);
end

