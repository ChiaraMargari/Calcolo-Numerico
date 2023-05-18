A = [13 2 0; 2 1 3; 0 3 22;];
x0 = [1 1 1]';
tol= 1e-6;
maxiter= 100;
[delta_max, iter] = esercizio11(A, x0, tol, maxiter);
fprintf("Soluzione: %f", delta_max);
fprintf("Numero iterate: %d", iter);