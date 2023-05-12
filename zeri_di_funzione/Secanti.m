function[x, iter]= Secanti(f, x0, x1, tol, maxiter)
%Metodo delle Secanti
for iter=0:maxiter
    fx0=f(x0);
    fx1=f(x1);

    if (fx1-fx0)==0
        fprintf("Iterazione terminata");
    end
    
    x= x1-(fx1*(x1-x0)/(f(x1)-f(x0)));

    %errore relativo
    eRel= abs(x1-x0)/abs(x1);
    if eRel<tol
        return
    end

    x0=x1;
    x1=x;
end
