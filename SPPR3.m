syms x y z a b l dx dy dz d2 restn1 restn2 t L f results;
f = x*y*z;
restn1=x+y+z-5;
restn2=x*y+x*z+y*z-8;

l = f + a*restn1 + b*restn2
dx=diff(l,x)
dy=diff(l,y)
dz=diff(l,z)
t = solve(dx==0,dy==0,dz==0,restn1==0, restn2==0);
L2=diff(dx,x)+diff(dy,y)+diff(dz,z)+2*diff(dx,y)+2*diff(dx,y)+2*diff(dy,z)
results = subs(l, t)

disp(struct2table(structfun(@string,t,'UniformOutput',false)));