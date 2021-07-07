function method = newton_mod(f,df,x0,tol)

% A função newton_mod.m utiliza a fórmula de Newton
% x(k+1) = x(k)-f(x(k))/f'(x0)
% com f'(x(k)) constante em todo o processo iterativo.
% 
% Entrada:
% f: função de uma variável
% df: derivada de f
% x0: chute inicial
% tol: tolerância para encontrar o erro.
% Saída:
% Os valores: 
%  k      x(k)      |x(k+1)-x(k)|    |f(x(k))|
% para cada iteração

method = 'Metodo de Newton Modificado';

if nargin < 3 
    fprintf('Sao necessarios pelo menos 3 argumentos.\n')
    return
end 

if nargin < 4 
    tol = 1e-4; 
end %se tol não for definido na chamada, ele é definido como 1e-5

df0 = df(x0);

if abs(df0) < 1e-10 
    fprintf('A derivada de f no chute inicial eh igual a zero.\n')
    return
end

Niter = 50;

xx(1) = x0;
ff(1) = abs(f(x0));
erro(1) = 0;

dif = 1;

k = 2;

while dif > tol &&  abs(f(x0)) > tol && k <= (Niter+1)
    
x = x0 - f(x0)/df0;

dif = abs(x - x0);
    
xx(k) = x;
ff(k) = abs(f(x));
erro(k) = dif;
    
x0 = x;
    
k = k + 1;

end

int = 0:(k-2);

xb = [int' xx' erro' ff'];

fprintf('   k     x(k)   |x(k+1)-x(k)| |f(x(k)|\n')

fprintf('%4.1d %10.4f %10.4f %10.4f\n',xb.')

end