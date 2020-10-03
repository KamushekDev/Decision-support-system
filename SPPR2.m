syms x1 x2 x3 a0 a1 L dx1 dx2 dx3 ddx1 ddx2 ddx3 d2 g t L f results;
f = x1-x2
g = tan(x1) - 3*tan(x2)

L = f + a1*g
dx1=diff(L,x1)
dx2=diff(L,x2)
dg = diff(g,x1)*ddx1 + diff(g,x2)*ddx2
t = solve(dx1==0,dx2==0,g==0);
L2=diff(dx1,x1)*ddx1^2 + diff(dx2,x2)*ddx2^2 + 2*diff(dx1,x2)*ddx1*ddx2
results = subs(L, t)

disp(struct2table(structfun(@string,t,'UniformOutput',false)));