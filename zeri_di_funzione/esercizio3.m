function[xk, iter] = esercizio3(f, d1, x0, tol, maxiter)
%funzione che implementa il metodo di Traub per il calcolo degli zer4i di
%funzione
iter = 0;

while iter < maxiter
    if d1(x0) == 0
        fprintl("Derivata prima nulla");
    else

        %calcolo della iterata generale
        yk = x0 - (f(x0) / d1(x0));
        xk = yk - (f(yk) / d1(x0));

        %criterio di arresto basato sull'errore relativo
        e_rel= abs(xk-x0) / abs(xk);
        if e_rel < tol
            return
        end

        %aggiornamneto variabili
        x0 = xk;
        iter = iter + 1;

    end

end