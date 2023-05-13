f=@(x) tan(x);
a= 0;
b= pi / 4;
n= 4;
iter= 0;
itermax= 50;
I0 = esercizio10(f,a,b,n);

while iter <= itermax
    n= n * 2;
    I = esercizio10(f,a,b,n);
    if (I - I0) < 1e-4
        fprintf("Risultato: %.4f", I);
        iter= itermax + 1;
    else
        iter = iter + 1;
    end
    I0 = I;
end