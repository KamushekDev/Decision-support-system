x = optimvar('x', 'LowerBound', 40);
y = optimvar('y', 'LowerBound', 10);
z = optimvar('z', 'LowerBound', 5);
prob = optimproblem('Objective', 900*x + 1100*y+1500*z,'ObjectiveSense','max');
prob.Constraints.c1 = x + 2*y +4*z<= 360;
prob.Constraints.c2 = 2*x + 4*y +2*z<= 520;
prob.Constraints.c3 = x + y +2*z<= 220;
problem = prob2struct(prob);
[sol,fval,exitflag,output] = linprog(problem)