function x = EliminaGaussPivoParcial(A,b)

% EliminaGauss.m  é uma function que resolve um sistema  linear Ax=b via
% método de eleiminação de Gauss com  pivoteamento parcial.
% Entradas: A (matriz dos coeficientes n x n)
%           b (vetor de recursos n x 1)
% Saida:    x (solução do sistema linear n x 1) 
  

% Complete o código abaixo:
  n = length(A);
  A = [A b];
  
  for k = 1:n - 1
    for i = k+1: n
      
      if A(k,k) == 0
        
        v = abs(A(k:n,k));
        [elem ind] = max(v);
        
        %atualizar o indice
        ind = ind + (k-1);

        aux = A(k, :);
        A(k, :) = A(ind, :);
        A(ind, :) = aux;
        
        aux2 = b(k, :);
        b(k, :) = b(ind, :);
        b(ind, :) = aux2;
    
       end
        
        b(i) = b(i) - (A(i,k)/A(k,k))*b(k);
        A(i,k:end) = A(i,k:end) - (A(i,k)/A(k,k))*A(k,k:end);
             
      
    end  
  end
  
  x = zeros(n,1);

  for k=n:-1:1   
     
    if A(k,k) != 0
      
      x(k) = (b(k) - A(k,k+1:n)*x(k+1:n))/A(k,k);
      
    else
     
      fprintf('A matriz dos coeficientes não possui inversa\n')
      x = 'Falhou';
      return
      
    end
      
  end

end