function x=Half(a,b,delta)
ak=a;
bk=b;
xkc=0;
l2k=bk-ak;
while l2k>delta
    %3 ????%
    l2k=bk-ak;
    xkc=(ak+bk)/2;
    Fxkc=fx(xkc);
    %4 ????%
    yk=ak+l2k/4;
    zk=bk-l2k/4;
    Fyk=fx(yk);
    Fzk=fx(zk);
    if Fyk<Fxkc
        bk=xkc;
    elseif Fzk<Fxkc
        ak=xkc;
    else
        ak=yk;
        bk=zk;
    end
end
x=xkc;
end