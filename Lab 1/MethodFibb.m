function x=MethodFibb(a,b,eps)
m=1/eps;
d(1)=b-a;
n=1;
for i=3:m
    B=Fibb(i);
    a1=d(1)/B;
    if a1>eps
        n=i-1;
    end
end
alf=a+d(1)*Fibb(n-1)/Fibb(n+1);
bet=a+d(1)*Fibb(n)/Fibb(n+1) ;
fa=zeros(n+1);
fb=zeros(n+1);
ak=zeros(n+1);
bk=zeros(n+1);
d=zeros(n+1);

fa(1)=fx(alf);
fb(1)=fx(bet);
ak(1)=a;
bk(1)=b;
for i=1:n
    k=i-1;
    k0=n-k;
    k1=k0-1;
    k2=k0+1;
    if fa(i)>fb(i)
        ak(i+1)=alf;
        bk(i+1)=bk(i);
        d(i+1)=bk(i+1)-ak(i+1);
        alf=bet;
        bet=ak(i+1)+d(i+1)*Fibb(k0)/Fibb(k2);
        fa(i+1)=fb(i);
        fb(i+1)=fx(bet);
    end
    if fa(i)<=fb(i)
        ak(i+1)=ak(i);
        bk(i+1)=bet;
        d(i+1)=bk(i+1)-ak(i+1);
        bet=alf;
        alf=ak(i+1)+d(i+1)*Fibb(k1)/Fibb(k2);
        fa(i+1)=fx(alf);
        fb(i+1)=fa(i);
    end
    epsilon=bet-alf;
    if epsilon<eps
        break;
    end
end
x=(alf+bet)/2;
end