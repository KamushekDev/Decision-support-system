function Bn=Fibb(n)
if (n==1) || (n==2)
    Bn=1;
    return;
end
if(n==3)
    Bn=2;
    return;
end
B(1)=1;
B(2)=1;
for i=3:n+1
    B(i)=B(i-1)+B(i-2);
end
B(n)=B(n+1);
Bn=B(n);
end