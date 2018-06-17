
%
% test the Gaussian elimination method
%

N=4;
A=zeros(N,N);

for i=1:N
    for j=1:N
        A(i,j)=1/(i+j-1);
    end
end

y=ones([N,1]);

b=A*y;

x=LinSol0(A,b);

disp(x')
    
N=8;
A=zeros(N,N);

for i=1:N
    for j=1:N
        A(i,j)=1/(i+j-1);
    end
end

y=ones([N,1]);

b=A*y;

x=LinSol0(A,b);

disp(x')

N=12;
A=zeros(N,N);

for i=1:N
    for j=1:N
        A(i,j)=1/(i+j-1);
    end
end

y=ones([N,1]);

b=A*y;

x=LinSol0(A,b);

disp(x')

N=16;
A=zeros(N,N);

for i=1:N
    for j=1:N
        A(i,j)=1/(i+j-1);
    end
end

y=ones([N,1]);

b=A*y;

x=LinSol0(A,b);

disp(x')

