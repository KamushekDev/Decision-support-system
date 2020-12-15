x0=[-2 2];
a=x0(1);
b=x0(2);
[X,Y]=meshgrid((a:0.1:b));
Z=(X.*1.2-Y.^3.*0.9+X.^3.*1.1+Y.*0.8-X.^2.*3.1-Y.^2.*2.9).*IsMax();
meshc(X,Y,Z)
delta=10^-6;
[x2,m]=Koord_spusk(a,b,x0,delta)

min1=3;
max1=5;
epsilon=1e-10;
V = [0.0005 0.0001; 0.0001 0.0015; -0.001 0.0002];
[V0,y0,dV,dy]=Nelder('ffy',V,min1,max1,epsilon)