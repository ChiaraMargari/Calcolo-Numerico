function[x,it] = regulaFalsi(f,a,b,tol, maxit) %IMPLEMENTAZIONE METODO REGULA FALSI
%Metodo Regula Falsi
it = 0;
fa = f(a);
fb = f(b);

if fa * fb >= 0
    error('La funzione non attraversa l asse x in questo intervallo');
end

while it < maxit
    %calcolo il punto medio (ovvero il punto di ascissa in cui si interseca
    %la secante)
    x = a-fa*(b-a)/(fb-fa);

    %verifico che la soluzione è stata trovata con una precisione
    %sufficiente
    if abs(fx) < tol
        return
    end

    %aggiorna l'intervallo in base alla posizione del punto intermedio
    fx = f(x);
    if fx * fa < 0 
        b = x;
        fb = fx;
    else 
        a = x;
        fa = fx;
    end
    it = it + 1;
end
