syms x1 x2 x3 a0 a1 L dx1 dx2 dx3 ddx1 ddx2 ddx3 d2 g t L f results;
f = 2*x1+x2-x3+1;
g=x1^2+x2^2+2*x3^2-22;

L = f + a1*g
dx1=diff(L,x1)
dx2=diff(L,x2)
dx3=diff(L,x3)
dg = diff(g,x1)*ddx1 + diff(g,x2)*ddx2 + diff(g,x3)*ddx3
t = solve(dx1==0,dx2==0,dx3==0,g==0);
L2=diff(dx1,x1)*ddx1^2 + diff(dx2,x2)*ddx2^2 + diff(dx3,x3)*ddx3^2 + 2*diff(dx1,x2)*ddx1*ddx2 + 2*diff(dx1,x3)*ddx1*ddx3 + 2*diff(dx2,x3)*ddx2*ddx3
results = subs(L, t)

disp(struct2table(structfun(@string,t,'UniformOutput',false)));