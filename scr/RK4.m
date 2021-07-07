% RK4.m: function que resolve um PVI na forma padrao
%                  Y' = F(x,Y)    Y(x0) = YO
% utilizando o metodo numerico de Euler
% Entrada: x0: x inicial (dimensão: 1x1)
%          y0: y inicial (dimensão: 1xn)
%          xf: x final   (dimensão: 1x1)
%           h: tamanho do passo para discretizar o intervalo [x0, xf]  (dimensão: 1x1)
%           f: funcional com as derivadas de cada componente de Y dada pelo PVI  (dimensão: nx1)         
% Saida: sol = [x, y]:  x � o vetor contendo o intervalo [x0, xf] discretizado
% com o passo de tamanho h
%                 y � o vetor onde cada linha representa as aproximacoes de y1, y2 e y3 para cada 
% elemento do vetor x 

function sol = RK4(x0, y0, xf, h, f)

k = 1;

x = (x0:h:xf)';

y(1,:) = y0;

i = 1;

n = length(x);

while i:n-1
  
  c1 = f(x(i), y(i));
  
  c2 = f(x(i)+h/2, y(i)+c1*(h/2));
  
  c3 = f(x(i)+h/2, y(i)+c2*(h/2));
  
  c4 = f(x(i+1), y(i)+c3*h);
  
  y(i+1) = y(i) + h*(c1+2*c2+2*c3+c4)/6;
  
  i++;
   
end

y = y';
sol = [x y];

end