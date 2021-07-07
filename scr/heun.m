% heun.m: function que resolve um PVI na forma padrao
%               y' = f(x,y)    y(x0) = x0
% utilizando o metodo numerico de Euler
% Entrada: x0: x inicial
%          y0: y inicial
%          xf: x final
%           h: tamanho do passo para discretizar o intervalo [x0, xf]
%           f: derivada de y dada pelo PVI          
% Saida: sol = [x, y]:  x é o vetor contendo o intervalo [x0, xf] discretizado
% com o passo de tamanho h
%                 y é o vetor com as aproximacoes de y(x(i)) para cada 
% elemento do vetor x 

function sol = heun(x0, y0, xf, h,f)

x = (x0:h:xf)';

y(1,:) = y0;

n = length(x);
% COMPLETE
i = 1;

while i <= n-1
  
  c1 = f(x(i),y(i));
  c2 = f(x(i+1),y(i) + h*c1);
  y(i+1) = y(i) + h*(c1+c2)/2;
  i++;
    
end

y = y';    
sol =[x y];

end