f=@(x) sin(pi * x);
a= 0;
b= 1;
n= 4;
iter=0;
itermax= 50;
I0 = esercizio9(f, a, b, n);

while iter <= itermax
    n = n * 2;
    I = esercizio9(f,a,b,n);
    if( I - I0) < 1e-3
        fprintf("Soluzione: %.4f", I);
        iter = itermax + 1; 
    else
        iter = iter + 1;
    end
    I0 = I;
end