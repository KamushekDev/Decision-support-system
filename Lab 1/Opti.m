function x=Opti(a,b,delta)
min=inf;
for i = a:delta:b
    if (fx(i)<min)
        min=fx(i);
        x=i;
    end
end