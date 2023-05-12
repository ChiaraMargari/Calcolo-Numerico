function[xk, iter, res] = esercizio5(f, x0, tol, maxiter)
%Funzione che implementa il metodo numerico Steffensen per il calcolo degli zeri di
%una funzione

iter = 0;
fx = f(x0);
while iter < maxiter
    denominatore = (f(x0 + fx) - fx);
    if denominatore == 0
        fprintf("Denominatore nullo! Iterazione terminata\n");
        return
    else
        %iterata generale
        xk = x0 - ((fx)^2 / denominatore);

        %criterio di arresto basato sull'errore relativo
        e_rel = abs(xk - x0) / abs(xk);

        if e_rel < tol
            res = f(xk);
            return
        end

        %aggiornamneto delle variabili
        iter = iter + 1;
        res = f(xk);
        x0 = xk;
        fx= f(x0);
    end
end