function[delta_min, iter] = esercizio12(A, x0, tol, maxiter)
%funzione Matlab che implementa il metodo delle potenze inverse per il
%calcolo dell'autovalore di minimo modulo di una matrice quandrata

iter = 0;
v0 = 0;

while iter <= maxiter
    yk = x0 / norm(x0,2);
    xk =  A \ yk;
    vk = yk' * xk;

    delta_min = 1 / vk;

    %criterio di arresto per il controllo dell'errore
    errore = abs(vk - v0);
    if errore < tol * abs(vk)
        return
    end
     x0 = xk;
     v0 = vk;
     iter = iter + 1;
end
end