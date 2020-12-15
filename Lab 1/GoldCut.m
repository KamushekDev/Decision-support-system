function x=GoldCut(a,b,eps)
m=1/eps;
d(1)=b-a;
a1=2/(3+sqrt(5));
a2=2/(1+sqrt(5));
alf=a+a1*d(1);
bet=a+a2*d(1);

ak = zeros(m);
bk = zeros(m);
fa = zeros(m);
fb = zeros(m);
d = zeros(m);

ak(1)=a;
bk(1)=b;
fa(1)=fx(alf);
fb(1)=fx(bet);
for i=1:m
    if fa(i)>fb(i)
        ak(i+1)=alf;
        bk(i+1)=bk(i);
        d(i+1)=bk(i+1)-ak(i+1);
        alf=bet;
        bet=ak(i+1)+a2*d(i+1);
        fa(i+1)=fb(i);
        fb(i+1)=fx(bet);
    end
    if fa(i)<=fb(i)
        ak(i+1)=ak(i);
        bk(i+1)=bet;
        d(i+1)=bk(i+1)-ak(i+1) ;
        bet=alf;
        alf=ak(i+1)+a1*d(i+1);
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