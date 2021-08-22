% DecomposicaoLU.m  são uma function que resolve um sistema  linear Ax=b
% Entradas: A (matriz dos coeficientes)
%           b (vetor de recursos)
% Saida: x (solucao do sistema linear) 
% No display

function x = DecomposicaoLUTESTE(A,b)


[m n] = size(A);

  for k = 1:n 
    for i = k+1: n
         
 
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

        fator = A(i,k)/A(k,k);
             
        b(i) = b(i) - (A(i,k)/A(k,k))*b(k);
        A(i,k:end) = A(i,k:end) - (A(i,k)/A(k,k))*A(k,k:end);
        
        U = A;
        
        A(i,k) = fator;
             
    end  
  end
  
  x = zeros(n,1);

  for k=n:-1:1   
     
    if A(k,k) != 0
      
      x(k) = (b(k) - A(k,k+1:n)*x(k+1:n))/A(k,k);
      
    else
     
      fprintf('A matriz dos coeficientes não possui inversa\n')
      x = [];
      return
      
    end
      
  end

disp('LU = ')
disp(A)
disp('x = ')
  
end