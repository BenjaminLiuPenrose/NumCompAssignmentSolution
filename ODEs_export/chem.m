y0=[1 1 0];

[t1 y1]= ImEuler([0 120],y0,0.05,@func2,@grad2);

[t2 y2]= ImTrap([0 120],y0,0.05,@func2,@grad2);