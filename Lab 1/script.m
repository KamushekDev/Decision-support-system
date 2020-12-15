x = -4:0.01:4;

y = zeros(length(x));
for i = 1:length(x)
    y(i) = fx(x(i));
end

plot(x,y);

a = [-7;
    10;
    0.01];
for i = a
    sprintf("Opti: %.4f; Half: %.4f; Fibb: %.4f; GoldCut: %.4f;", Opti(i(1),i(2),i(3)), Half(i(1),i(2),i(3)), MethodFibb(i(1),i(2),i(3)), GoldCut(i(1),i(2),i(3)))
end

