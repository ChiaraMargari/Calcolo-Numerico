function[I] = esercizio9(f, a, b, n)
%funzione che implementa il metodo numerico dei trapezi per il calcolo
%approssimato degli integrali indefiniti

h = (b - a) / n;
somma = 0;
I0 = f(a) + f(b);

for j = 1 : n-1
    somma = somma + f(a + j * h);
end

I = (h / 2) * (I0 + 2 * somma);
end