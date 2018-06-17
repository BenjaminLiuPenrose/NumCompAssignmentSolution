%
% the GaussSeidel takes advantage of the sparsity
% 

function x=GSeidel(A,b)
% -- set the initial guess to zero
[~,N]=size(A);
x=zeros(N,1); 
%answer x0=ones(N,1)
x0=ones(N,1);
%count steps
cnt=0;
eor=1e-6;

while norm(x0-x,inf)>eor
    
    % -- x: current approximation, continuously updated
    x(1) = (b(1) + x(2))/3;
    for n=2:N-1
        x(n)= (b(n) + x(n+1) + x(n-1))/3;
    end
    x(N)= (b(N) + x(N-1))/3;
    cnt=cnt+1;
end

disp(cnt);
disp(norm(b-A*x,inf));
