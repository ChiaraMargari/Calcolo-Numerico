function[xk, iter] = esercizio1(f, x0, x1, tol, maxiter)
%funzione che implementa il metodo delle secanti per il calcolo degli zeri
%di funzione
iter = 0;

while iter < maxiter
    diff = f(x1) - f(x0);

    if diff == 0
        printf("0 al denominatore");
    else
        %iterata generale
        xk= x1-(f(x1)*(x1-x0)/diff);

        %calcolo errore relativo
        e_rel = abs(xk-x1)/abs(xk);
        if e_rel < tol
            return
        end

        %aggiornamneto delle variabili
        iter = iter+1;
        x0 = x1;
        x1 = xk;
    end

end