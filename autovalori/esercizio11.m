function[delta_max, iter] = esercizio11(A, x0, tol, maxiter)
%funzione Matlab che implementa il metodo delle potenze per il calcolo
%dell'autovalore di massimo modulo di una matrice quadrata

iter = 0;
v0 = 0;

while iter < maxiter
    yk = x0 / norm(x0, 2);
    xk = A * yk;
    vk = yk' * xk;

    delta_max = vk;
    
    %criterio di arresto per il controllo dell'errore
    arresto = abs(vk - v0);
    if arresto < tol * abs(vk)
        return
    end

    x0 = xk;
    v0 = vk;
    iter= iter + 1;
end
end