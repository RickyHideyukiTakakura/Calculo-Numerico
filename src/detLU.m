% detLU.m  é uma função que calcula o determinante da
% matriz A mediante a decomposiçao LU
% Entrada: A (matriz n x n)
% Saida: 
%        x (valor do determinante de A)



function x = detLU(A)

[m n] = size(A);

  if m ~= n
    
    fprintf('A matriz A não é quadrada.\n')
    x = [];
    return
    
  end

  for k = 1:n - 1
    for i = k+1: n
      
      if A(k,k) == 0
        
        fprintf('Pivô igual a zero.\n')
        x = [];
        return
        
      else
      
        A(i,k:end) = A(i,k:end) - (A(i,k)/A(k,k))*A(k,k:end);
        U = A;
        
        aux = diag(U);
        x = prod(aux);
        
      end
    end  
  end

  
end