function yy=ffy(x)
a=x(1).*1.2-x(2).^3.*0.9+x(1).^3.*1.1+x(2).*0.8-x(1).^2.*3.1-x(2).^2.*2.9;
yy=IsMax()*a;
end