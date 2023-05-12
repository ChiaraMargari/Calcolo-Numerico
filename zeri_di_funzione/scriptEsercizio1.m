f=@(x) (sin(x) / x) - x;
x0= 1;
x1= 0.9;
tol= 1e-10;
maxiter= 100;
[xk, iter] = esercizio1(f, x0, x1, tol, maxiter);
fprintf("Risultato: %f\n", xk);
fprintf("Iterate effettuate: %d", iter);