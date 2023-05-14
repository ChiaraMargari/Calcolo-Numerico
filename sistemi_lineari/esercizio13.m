function[xi] = esercizio13(A, b)
%funzione che implementa il metodo di sostituzione in avanti per la
%risoluzione dei sistemi lineari con matrice dei coefficienti triangolare
%inferiore

n = size(A, 1);
x = zeros(n, 1);
x(1) = b(1) /  A(1,1);

for i = 2 : n
    somma = 0;
    for j = 1 : i-1
    somma = somma + A(i, j) * x(j);
    end

    x(i) = (1 / A(i , 1)) * (b(i) - somma);
end
