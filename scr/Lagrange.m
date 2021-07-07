% Lagrange.m é uma function que retorna a estimação de um
% determinando valor por um polinômio interpolador
% Dados de Entrada: 
%                  x -> vetor de dimensão 1xN
%                  y -> vetor de dimensão 1xN
%                  x0  -> pontos a serem estimados por um polinômio de ordem n-1
% Dado de Saída:
%                  y0 -> pontos estimados pelo polinômio interpolador  

function y0 = Lagrange(x, y, x0)

n = length(x);

y0 = 0;


  for i = 1:n
    
    L = 1;
   
    for j = 1:n
      
      if i != j
        
        L = L .* (x0 - x(j))/(x(i)-x(j));

      end
    
    end
    
    y0 = y0 + y(i) * L
  
  end

end