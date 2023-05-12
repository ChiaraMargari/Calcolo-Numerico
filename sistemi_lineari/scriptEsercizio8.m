A= [4 2 1; 2 4 2; 1 2 4;];
b= [7 8 7]';
tol= 1e-5;
xo=[1.1 1.1 1.1]';
maxiter= 50;
[xk, iter, res] = esercizio8(A, b, tol, x0, maxiter);
disp(xk);
fprintf("Numero di iterate: %d\n", iter);
fprintf("Residuo: %d", res);