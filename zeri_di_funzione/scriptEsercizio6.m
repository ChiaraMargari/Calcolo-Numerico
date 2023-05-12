f=@(x) exp(x) - 1 - cos(x);
x0= .5;
h= 10^(-6);
tol= 1e-10;
maxiter= 100;
[xk, iter, res] = esercizio6(f, x0, h, tol, maxiter);
fprintf("Risultato: %f\n", xk);
fprintf("Numero di iterate: %d\n", iter);
fprintf("Residuo: %f\n", res);
