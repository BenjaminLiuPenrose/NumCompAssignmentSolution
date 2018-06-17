function G=grad2(u)

K1=0.04; K2=1e4; K3=3e7;

N=length(u);
G=zeros(N,N);

G(1,:)=[-K1  K2*u(3) K2*u(2)];
G(2,:)=[ K1 -K2*u(3)-K3*u(2)*2 -K2*u(2)];
G(3,:)=[ 0  K3*u(2)*2 0];