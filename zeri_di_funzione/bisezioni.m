function[x,nit] = bisezioni(f,a,b,tol,maxiter) %IMPLEMENTAZIONE METODO DELLE SUCCESSIVE BISEZIONI
%Metodo delle successive bisezioni
nit = 0;
x = .5*(a+b);
fa = f(a);
fx = f(x);
while b-x > tol && nit < maxiter
    if fa * fx <0
        b = x;
    else 
        a = x;
        fa = fx;
    end
    x = .5*(a+b);
    fx = f(x);
    nit = nit + 1;
end

