%
% GaussSeidel.m
% the GaussSeidel iteration for the tri-diagonal system
% 

% -- the matrix A and the vector b
N=100;
A=2*diag(ones(N,1),0)-diag(ones(N-1,1),-1)-diag(ones(N-1,1),1);
b=zeros(N,1); 
b(1)=1;

% -- set the initial guess to zero
x=b*0; 

for it=1:600
    
    % -- x: current approximation, continuously updated
    x(1) = (b(1) + x(2))/2;
    for n=2:N-1
        x(n)= (b(n) + x(n-1) + x(n+1))/2;
    end
    x(N)= (b(N) + x(N-1))/2;
    
    % -- print out the solutions at intermediate steps
    if mod(it,100)==0
        disp([it x(1:3)']);
    end     
end