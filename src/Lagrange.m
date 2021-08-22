% Lagrange.m � uma function que retorna a estima��o de um
% determinando valor por um polin�mio interpolador
% Dados de Entrada: 
%                  x -> vetor de dimens�o 1xN
%                  y -> vetor de dimens�o 1xN
%                  x0  -> pontos a serem estimados por um polin�mio de ordem n-1
% Dado de Sa�da:
%                  y0 -> pontos estimados pelo polin�mio interpolador  

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