function[xk, iter, res] = esercizio7(A, b, tol, x0, maxiter)
%funzione che implementa il metodo di Gauss-Seidel per la soluzione dei
%sistemi lineari
L = tril(A);
U = triu(A,1);
iter=0;

while iter < maxiter

    xk = L \ (b - U * x0)  ;

    %criterio di arresto basato sul controllo dell'errore relatrivo in
    %norma
    e_rel = norm(xk - x0, "inf") / norm(xk, "inf");
    if(e_rel < tol)
        res = norm(A * xk - b, "inf");
        return
    end

    %aggiornamento variabili
    x0 = xk;
    iter = iter + 1;
end
res = norm(xk - x0, "inf") / norm(xk);
end