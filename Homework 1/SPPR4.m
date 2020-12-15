syms x1 x2 x3 a0 a1 a2 a3 a4 ddx1 ddx2 ddx3;
f = x1*x2^2*x3^3;
g1=x1+(x2^2)/2+(x3^3)/3-1;
g2=-x1;
g3=-x2;
g4=-x3;

% L = f + a*r1 + b*r2 + c*r3 + d*r4
% dx=diff(L,x1)
% dy=diff(L,x2)
% dz=diff(L,x3)
% t = solve(dx==0,dy==0,dz==0,r1==0, x2>0, x3>0, x1>0);
% L2=diff(dx,x1)+diff(dy,x2)+diff(dz,x3)+2*diff(dx,x2)+2*diff(dx,x2)+2*diff(dy,x3)
% results = subs(L, t)

% disp(struct2table(structfun(@string,t,'UniformOutput',false)));

L = f + a1*g1% + a2*g2 + a3*g3 + a4*g4
dx1=diff(L,x1)
dx2=diff(L,x2)
dx3=diff(L,x3)
dg1 = diff(g1,x1)*ddx1 + diff(g1,x2)*ddx2 + diff(g1,x3)*ddx3
dg2 = diff(g2,x1)*ddx1 + diff(g2,x2)*ddx2 + diff(g2,x3)*ddx3;
dg3 = diff(g3,x1)*ddx1 + diff(g3,x2)*ddx2 + diff(g3,x3)*ddx3;
dg4 = diff(g4,x1)*ddx1 + diff(g4,x2)*ddx2 + diff(g4,x3)*ddx3;
t = solve(dx1==0,dx2==0,dx3==0,g1==0, g2<0, g3<0, g4<0);
dx1x1=diff(dx1,x1);
dx2x2=diff(dx2,x2);
dx3x3=diff(dx3,x3);
dx1x2=diff(dx1,x2);
dx1x3=diff(dx1,x3);
dx2x3=diff(dx2,x3);
L2=dx1x1*ddx1^2 + dx2x2*ddx2^2 + dx3x3*ddx3^2 + 2*dx1x2*ddx1*ddx2 + 2*dx1x3*ddx1*ddx3 + 2*dx2x3*ddx2*ddx3
results = subs(f, t)

disp(struct2table(structfun(@string,t,'UniformOutput',false)));

t1=subs(L2,t)
t2=subs(dg1,t)
t3=subs(dg2,t)

for i=1:1
   sprintf('%d) L2=%s', i,t1(i))
   res = solve(t1(i)<0, t2(i)==0,t3(i)==0);
   sprintf('L2 < 0 => dx1=%s; dx2=%s; dx3=%s;', res.ddx1, res.ddx2, res.ddx3)
   
   res = solve(t1(i)==0, t2(i)==0,t3(i)==0);
   sprintf('L2 == 0 => dx1=%s; dx2=%s; dx3=%s;', res.ddx1, res.ddx2, res.ddx3)
   
   res = solve(t1(i)>0, t2(i)==0,t3(i)==0);
   sprintf('L2 > 0 => dx1=%s; dx2=%s; dx3=%s;', res.ddx1, res.ddx2, res.ddx3)
   sprintf('-------------------------------------------')
end
