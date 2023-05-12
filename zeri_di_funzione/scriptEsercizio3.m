f=@(x) 1 - x^2 / 2 - x^3;
d1=@(x) -x - 3*(x)^2;
tol= 1e-10;
x0= .99;
maxiter= 100;
[xk, iter] = esercizio3(f, d1, x0, tol, maxiter);
fprintf("Risultato: %f\n", xk);
fprintf("Numero iterazioni: %d\n", iter);