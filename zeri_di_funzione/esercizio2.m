function[x, res, iter] = esercizio2(f, d1, d2, x0,  tol, maxiter)
%funzione che implementa il metodo per il calcolo di zeri di una funzione
%chiamato Halley
iter = 0;

while iter < maxiter
    diff = (d1(x0))^2 - (f(x0) * d2(x0));

    if diff * 2 == 0
        fprintf("Denominatore nullo")
    else
        %definizione della iterata generale
        x = x0 - ((2 * f(x0) * d1(x0)) / diff * 2);
        
        
        %errore relativo
        e_rel = abs(x-x0) / abs(x);
        if e_rel < tol
            return
        end

        %aggiornamento variabili
        iter = iter + 1;
        x0 = x;
    end
    res = f(x);
end