A= [2.4, -0.8, -0.7; 0.5, 1.5, 0.7; -0.1, 0.8, 2.1 ];
b= [0.9,2.7,2.8]';
tol= 1e-5;
maxiter=100;
x0=[0.9,0.9,0.9]';
[xk, iter, res] = esercizio7(A, b, tol, x0, maxiter);
disp(xk);
fprintf("Numero iterazioni: %d\n", iter);
fprintf("Residuo: %d", res);