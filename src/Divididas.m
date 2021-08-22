% Divididas.m essa função retorna uma matriz
% com valores das diferenças divididas do seguinte conjunto
% de pontos:
%      (x0, y0), (x1, y1), (x2, y2), ..., (xn, yn)    (1)
% Dados de Entrada: 
%                  x -> vetor de dimensão 1xn
%                  y -> vetor de dimensão 1xn
% Dado de Saída
%                 D -> matriz com os valores das diferenças divididas do
%                 conjunto de pontos (1).


function D = Divididas(xi, yi)
     
    n = length(xi);
    
    D = zeros(n);
    
    
    % Diferenças divididas
    D(:,1)=yi';
    
    % COMPLETE 
    for j = 2:n
      for i = 1:n-j+1
        D(i,j) = (D(i+1,j-1)-D(i,j-1))/(xi(i+j-1)-xi(i));
      end
    end  
    
end