%
% jacobi.m
% the Jacobi iteration for the tri-diagonal system
% 

% -- the matrix A and the vector b
N=19;
A=2*diag(ones(N,1),0)-diag(ones(N-1,1),-1)-diag(ones(N-1,1),1);
b=zeros(N,1); 
b(1)=1;

% -- set the initial guess to zero
x=b*0; y=x;

for it=1:600
    
    % -- x: current approximation
    % -- y: the next approximation 
    y(1) = (b(1) + x(2))/2;
    for n=2:N-1
        y(n)= (b(n) + x(n-1) + x(n+1))/2;
    end
    y(N)= (b(N) + x(N-1))/2;
    
    % -- print out the solutions at intermediate steps
    if mod(it,100)==0
        disp([it y(1:3)']);
    end     
    x=y;
end