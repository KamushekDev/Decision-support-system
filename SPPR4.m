syms x y z a b c d l dx dy dz d2 r1 r2 r3 r4 t L f results;
f = x*y^2*z^3;
r1=x+(y^2)/2+(z^3)/3-1;
r2=-x;
r3=-y;
r4=-z;

l = f + a*r1 + b*r2 + c*r3 + d*r4
dx=diff(l,x)
dy=diff(l,y)
dz=diff(l,z)
t = solve(dx==0,dy==0,dz==0,r1==0, y>0, z>0, x>0);
L2=diff(dx,x)+diff(dy,y)+diff(dz,z)+2*diff(dx,y)+2*diff(dx,y)+2*diff(dy,z)
results = subs(l, t)

disp(struct2table(structfun(@string,t,'UniformOutput',false)));