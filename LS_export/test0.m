x = (2+(0:10)/5).';
b = 1+x+x.^2+x.^3+x.^4+x.^5+x.^6+x.^7;
A = [x.^0 x x.^2 x.^3 x.^4 x.^5 x.^6 x.^7];
c = (A'*A)\(A'*b);

r = b - A*c
RMSE= sqrt(sum(r.^2)/11)

pause;

[Q R]= qr(A,0);

d = R\(Q'*b);
r = b - A*d
RMSE= sqrt(sum(r.^2)/11)