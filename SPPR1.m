syms x y z a l dx dy dz d2 restn t L f results;
f = 2*x+y-z+1;
restn=x^2+y^2+2*z^2-22;

l = f + a*(restn)
dx=diff(l,x)
dy=diff(l,y)
dz=diff(l,z)
t = solve(dx==0,dy==0,dz==0,restn==0);
L2=diff(dx,x)+diff(dy,y)+diff(dz,z)+2*diff(dx,y)+2*diff(dx,y)+2*diff(dy,z)
results = subs(l, t)

disp(struct2table(structfun(@string,t,'UniformOutput',false)));