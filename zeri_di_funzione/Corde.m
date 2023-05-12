function[x, iter]=Corde(f,a, b, maxiter, tol)
%Risoluzione di f(x)=0 col metodo delle Corde
iter=0;
x1 = b;
x0 = a;
while iter < maxiter
    %Calcolo la prossima approssimazione di x
    x = x1 - (f(x1)*(x1 - x0) / (f(x1)-f(x0)));

    %Controllo del criterio di arresto
    if abs(x - b) < tol
        return
    end

    %aggiornamento delle variabili
    iter = iter + 1;
    x0 = x1;
    x1 = x;

end
