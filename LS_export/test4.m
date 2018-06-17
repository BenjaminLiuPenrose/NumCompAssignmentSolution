%
% compare the classical and modified Gram-Schmidt
%

A=[1 1 1 1
1e-7 0 0 0
0 1e-7 0 0
0  0  1e-7 0
0 0 0 1e-7];

[Q R]=cgs(A);
Q'*Q
norm(A-Q*R)

[Q R]=mgs(A);
Q'*Q
norm(A-Q*R)