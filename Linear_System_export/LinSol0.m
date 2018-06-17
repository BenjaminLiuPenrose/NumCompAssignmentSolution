function x = LinSol0(A,b)

%
% Solving the linear system Ax=b using direct Gaussian elimination
%

n = length(b);  
x = zeros(size(b));

B=A;
for i=1:n-1  % forward elimination
    for j=i+1:n
        temp = B(j,i)/B(i,i);
        for k=i+1:n
            B(j,k) = B(j,k)-temp*B(i,k);
        end
        b(j) = b(j)-temp*b(i);
    end
end

% back substitution
x(n) = b(n)/B(n,n);
for i=n-1:-1:1
    temp = b(i);
    for j=i+1:n
        temp = temp-B(i,j)*x(j);
    end
    x(i) = temp/B(i,i);
end

end