function[xk, iter, res] = esercizio6(f, x0, h, tol, maxiter)
%funzione che implementa il metodo quasi-Newton per il calcolo degli zeri
%di funzione

iter = 0;
if h > 0
    fx= f(x0);
    while iter < maxiter
        den = f(x0 + h) - fx;
        if den == 0
            res = f(xk);
            fprintf("Denominatore nullo\n");
            return
        else
            %iterata generale
            xk = x0 - h * (fx / den);

            %criterio di arresto basato sul controllo dell'errore relativo
            e_rel = abs(xk - x0) / abs(xk);
            if e_rel < tol
                res = f(xk);
                return
            end

            %aggiornamento variabili
            iter = iter + 1;
            x0 = xk;
            fx = f(x0);
        end

    end
end