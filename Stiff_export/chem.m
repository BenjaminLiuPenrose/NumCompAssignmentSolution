y0=[1 1 0];

[t1 y1]= ImEuler([0 120],y0,0.05,@func2,@grad2);

[t2 y2]= ImTrap([0 120],y0,0.05,@func2,@grad2);

[t3 y3] = bdf2([0 120],y0,0.05,@func2,@grad2);


figure
for k=1:3
    subplot(3, 1, k)
    plot(t1,y1(:,k),'r-',t1,y1(:,k),'k-.',t1,y1(:,k),'b--');
    legend('Implicit Euler','Implicit Trapezoid','BDF2');
end

pause

T=cputime;
[t3 y3] = bdf2([0 120],y0,0.05,@func2,@grad2);
disp(cputime-T);

T=cputime;
[t4,y4] = ode45(@func4,[0 120],y0);
disp(cputime-T);

pause

[t1 y1]= ImEuler([0 1200],y0,0.05,@func2,@grad2);

[t2 y2]= ImTrap([0 1200],y0,0.05,@func2,@grad2);

[t3 y3] = bdf2([0 1200],y0,0.05,@func2,@grad2);

figure
for k=1:3
    subplot(3, 1, k)
    plot(t1,y1(:,k),'r-',t1,y1(:,k),'k-.',t1,y1(:,k),'b--');
    legend('Implicit Euler','Implicit Trapezoid','BDF2');
end