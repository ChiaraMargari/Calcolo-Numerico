function[I] = esercizio10(f, a, b, n)
%funzione che implementa il metodo numerico di Simpson per il calcolo delgi
%integrali indefiniti

h = (b - a) / n;
I0 = f(a) + f(b);
somma_1 = 0;
somma_2 = 0;

for j = 1 : (n / 2) - 1
    somma_1 = somma_1 + f(a + 2 * j * h);
end

for j = 1 : n / 2
    somma_2 = somma_2 + f(a + 2 * (j - 1) * h);
end

I = (h / 3) * (I0 + 2 * somma_1 + 4 * somma_2);
end