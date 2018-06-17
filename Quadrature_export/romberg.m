function R = romberg(f, a, b, n)

R = zeros([n + 1, n + 1]);

R(0+1, 0+1) = (b - a) / 2 * (feval(f, a) + feval(f, b));

% First column of Romberg table. 
for i = 1 : n,
   h = (b - a) / 2^i;

   s = 0;
   for k = 1 : 2^(i-1),
      s = s + feval(f, a + (2*k - 1)*h);
   end

   R(i+1, 0+1) = R(i-1+1, 0+1)/2 + h*s;
end

% extrapolation 
for j = 1 : n,
   fac = 1 / (4^j - 1);
   for m = j : n,
      R(m+1, j+1) = R(m+1, j-1+1) + fac*(R(m+1, j-1+1) - R(m-1+1, j-1+1));
   end
end
