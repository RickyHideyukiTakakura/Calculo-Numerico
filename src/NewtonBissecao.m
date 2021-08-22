function method = NewtonBissecao(f,df,a,b,tol)

% A função newton.m utiliza o método de Newton para encontrar
% uma raiz real de uma função f. 
% Entrada:
% f: função de uma variável
% df: derivada de f
% x0: chute inicial
% tol: tolerância para encontrar o erro.
% Saída:
% Os valores: 
%  k      x(k)      |x(k+1)-x(k)|    |f(x(k))|
% para cada iteração

method = 'Metodo Misto Bissecao e Newton';

if nargin < 4 
    fprintf('Sao necessarios pelo menos 4 argumentos.\n')
    return
end 

if nargin < 5 
    tol = 1e-4; 
end %se tol não for definido na chamada, ele é definido como 1e-5

%verifica se há mudança de sinal 
  if sign(f(a)) == sign(f(b))
    disp('Teorema de Bolzano não satisfeito no intervalo [a, b]');
    return
  end

Niter = 50;

m = (a + b)/2;
x = m - f(m)/df(m);
dif = abs(b-a);

aa(1) = a;
bb(1) = b;
amp(1) = dif;
xx(1) = x;
ff(1) = abs(f(x));

k = 2;

while  dif > tol &&  abs(f(x)) > tol && k <= (Niter+1)

    if sign(f(a)) ~= sign(f(m))
      a = a;
      b = m;
    else  
      a = m;
      b = b;
    end
  
    m = (a + b)/2;
    x = m - f(m)/df(m);
    
    aa(k) = a;
    bb(k) = b;
    xx(k) = x; 
    ff(k) = abs(f(x));
    amp(k) = abs(b-a);  
    k = k + 1;

end

int = 0:(k-2);

xb = [int' aa' bb' xx' amp' ff'];

fprintf('   k      a(k)       b(k)       x(k)   |a(k)-b(k)|   |f(x(k)|\n')

fprintf('%4.1d %10.4f %10.4f %10.4f %10.4f %10.4f\n',xb.')

end