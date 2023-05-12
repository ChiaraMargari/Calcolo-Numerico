function[xk, iter, res] = esercizio8(A, b, tol, x0, maxiter)
%funzione che implementa il metodo Jacobi per la soluzione dei sistemi
%lineari

iter = 0;
% A = D + R
D = triu(tril(A));
R = A - D;

while iter < maxiter
     xk= D \ (b - R * x0);

     %criterio di arresto basato sul controllo dell'errore relativo in
     %norma
     e_rel = norm(xk - x0, "inf") / norm(xk, "inf");
     if e_rel < tol
         res = norm(A * xk - b, "inf");
         return
     end

     %aggiornamento variabili
     x0 = xk;
     iter = iter + 1;
end
res = norm(A * xk - b, "inf");
end
