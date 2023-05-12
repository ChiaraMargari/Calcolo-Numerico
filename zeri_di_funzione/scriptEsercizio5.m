f=@(x) sin(x) - log(x);
tol= 1e-8;
maxiter= 100;
x0= 1;
[xk, iter, res] = esercizio5(f, x0, tol, maxiter);
fprintf("Risultato: %f\n", xk);
fprintf("Residuo: %f\n", res);
fprintf("Numero iterate: %d\n", iter);