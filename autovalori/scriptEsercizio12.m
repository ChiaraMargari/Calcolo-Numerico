A= [13 2 0; 2 1 3; 0 3 22];
x0= [1 1 1]';
tol = 1e-6;
maxiter= 20;
[delta_min, iter] = esercizio12(A, x0, tol, maxiter);
fprintf("Risultato: %f\n", delta_min);
fprintf("Numero iterate: %d", iter);