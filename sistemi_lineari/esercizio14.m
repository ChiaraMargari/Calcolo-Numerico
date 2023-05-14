function[x] = esercizio14(A, b)
%funzione matlab che implementa il metodo di sostituzione all'indietro per
%la risoluzione dei sistemi lineari con matrice dei coefficienti
%triangolare superiore

n = size(A, 1);
x = zeros(n, 1);
x(n) = b(n) / A( n, n);

for i= n-1 : 1
    somma = 0;
    for j = i+1 : n
        somma = somma + A(i,j) * x(j);
    end

    x(i) = (1 / A(i, i)) * (b(i) - somma);
    
end