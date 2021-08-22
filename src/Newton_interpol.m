% Newton_interpol.m é uma function que retorna a estimação de um
% determinando valor por um polinômio interpolador
% Dados de Entrada: 
%                  x -> vetor de dimensão 1 x n  
%                  y -> vetor de dimensão 1 x n 
%                  x0  -> ponto a ser estimado por um polinômio de ordem n-1
% Dado de Saída:
%                  y0 -> ponto estimado pelo polinômio interpolador 


function y = Newton_interpol(xi, yi, x)
     
    n = length(xi);
    
    D = zeros(n);
    
    N = ones(n,1);
    
    % Diferenças divididas
    D(:,1)=yi';
    
    for j = 2:n
      for i = 1:n-j+1
        D(i,j) = (D(i+1,j-1)-D(i,j-1))/(xi(i+j-1)-xi(i));
      end
    end  
    
    y = D(1,1);

    % Polinômio de Newton
    for i = 2:n       
       N(i,:) = N(i-1,:) * (x - xi(i-1));
    end
    D(1,:)
    y = D(1,:)*N;
    
end