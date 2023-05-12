S=286797;
n=5;
tol= 1e-10;
maxiter=100;
[xk, iter] = esercizio4(S, n, tol, maxiter);
fprintf("Risultato: %f\n", xk);
fprintf("Numero di iterate: %d", iter);