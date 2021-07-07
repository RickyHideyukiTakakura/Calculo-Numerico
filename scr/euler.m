% euler.m: function que resolve um PVI na forma padrão
%               y' = f(x,y)    y(x0) = x0
% utilizando o metodo numerico de Euler
% Entrada: x0: x inicial
%          y0: y inicial
%          xf: x final
%          h: tamanho do passo para discretizar o intervalo [x0, xf]
%          f: derivada de y dada pelo PVI          
% Saída: [x, y]:  x é o vetor contendo o intervalo [x0, xf] discretizado
% com o passo de tamanho h
%                 y é o vetor com as aproximacoes de y(x(i)) para cada 
% elemento do vetor x 

function sol = euler(x0,y0,xf,h,f)

x = (x0:h:xf)';

k = 1;

y(1,:) = y0;

n = length(x);

while k <= n-1

  y(k+1) = y(k) + h*f(x(k),y(k));
  k++;

end

y = y';
sol = [x y];

end