function method = secante(f,x0,x1,tol)

% A função secante.m utiliza o método da secante para encontrar
% uma raiz real de uma função f. 
% Entrada:
% f: função de uma variável
% x0: chute inicial
% x1: chute inicial
% tol: tolerância para encontrar o erro.
% Saída:
% Os valores: 
%  k    x(k-1)  x(k)  x(k+1)  |x(k+1)-x(k)|   |f(x(k+1))|
% para cada iteração

method = 'Metodo da Secante';

if nargin < 3 
    fprintf('Sao necessarios pelo menos 3 argumentos.\n')
    return
end 

if nargin < 4 
    tol = 1e-4; 
end %se tol não for definido na chamada, ele é definido como 1e-5


if f(x0) == 0
    fprintf('O chute inicial %f eh zero de f\n',x0)
    return
end

if f(x1) == 0
    fprintf('O chute inicial %f eh zero de f\n',x1)
    return
end

Niter = 50;
dif = abs(x1-x0); 

k = 1;


while dif > tol &&  abs(f(x1)) > tol && k <= (Niter) % Loop ends when condition is violated. 
    
x = x1 - (f(x1).*(x1 - x0))./(f(x1)-f(x0));

dif = abs(x-x1);

xx(k,:) = [x0 x1 x];
ff(k,:) = abs(f(x));
erro(k,:) = dif;

x0 = x1;
x1 = x;


k = k+1;

end

int = (1:(k-1))';

xb = [int xx(:,1) xx(:,2) xx(:,3) erro ff];
fprintf('   k     x(k-1)      x(k)      x(k+1)  |x(k+1)-x(k)||f(x(k+1)|  \n')
fprintf('%4.1d %10.4f %10.4f %10.4f %10.4f %10.4f \n',xb.')

end