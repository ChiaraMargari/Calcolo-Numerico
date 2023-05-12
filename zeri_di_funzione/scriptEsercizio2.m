f=@(x) sin(x) - x^3;
d1=@(x) cos(x) - 3*x^2;
d2=@(x) -sin(x) - 6*x;
tol=1e-12;
maxiter= 100;
x0= 1;
[x, res, iter] = esercizio2(f, d1, d2, x0,  tol, maxiter);
fprintf("Il risultato è: %f\n", x);
fprintf("Il residuo è: %f\n",res);
fprintf("Il numero di iterate è: %d", iter);