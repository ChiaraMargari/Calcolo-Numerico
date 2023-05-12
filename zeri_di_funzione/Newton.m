function[x,nit,res]= Newton(f,df,x,tol,nitmax)
%Metodo di Newton
res = [];
for nit = 1:nitmax
    dfx = df(x);
    if dfx == 0
        nit = -1; %flag di errore
        return
    end
    fx = f(x);
    deltax = -fx/dfx;
    x = x + deltax;
    res(end+1,1) = abs(fx);
    if abs(deltax) <= tol
        return
    end
end
nit=-2; %flag di errore 