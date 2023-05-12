function[xk, iter] = esercizio4(S, n, tol, maxiter)
%funzione che implementa il metodo numerico per il calcolo della radice n-esima di un numero S>0

iter = 0;
if S>0
    x0 = S;
     while iter < maxiter
        if n == 0
            fprintf(" n è minore di zero, iterazione terminata\n");
        else
            %iterata generale
            xk = (1 / n) * ((n - 1) * x0 + (S / x0^(n - 1)));
    
            %criterio di arresto basato sull'errore relativo
            e_rel = abs(xk - x0) / abs(xk);
            if e_rel < tol
                return
            end
    
            %aggiornmaneto delle variabili
            x0 = xk;
            iter = iter + 1;
        end
     end
else
    fprintf("Numero negativo!");
end