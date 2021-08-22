% DecomposicaoLU.m  são uma function que resolve um sistema  linear Ax=b
% Entradas: A (matriz dos coeficientes)
%           b (vetor de recursos)
% Saida: x (solucao do sistema linear) 
% No display

function x = DecomposicaoLU(A,b)


[m n] = size(A);

  for k = 1:n 
    for i = k+1: n

        v = abs(A(k:n,k));
        [elem ind] = max(v);

        ind = ind + (k-1);      % Atualiza os indices

        aux = A(k, :);          %
        A(k, :) = A(ind, :);    % Permuta os valores da matriz A  
        A(ind, :) = aux;        %
        
        aux2 = b(k, :);         %
        b(k, :) = b(ind, :);    % Permuta o vetor B
        b(ind, :) = aux2;       %

        fator = A(i,k)/A(k,k);  % Fator multiplicativo
             
        A(i,k:end) = A(i,k:end) - (A(i,k)/A(k,k))*A(k,k:end);   % Escalonamento
        
        A(i,k) = fator;         % Salva o fator multiplicativo em A
             
    end  
  end
  
  x = zeros(n,1);
  y = zeros(n,1);
  
  L = tril(A);   % Matriz triangular inferior de A  
  U = triu(A);   % Matriz triangular superior de A

  
  for k=1:n
    
   if L(k,k) == 0
      
      fprintf('A matriz dos coeficientes não possui inversa\n')
      x = [];
      return
      
   else   
      
      L(k,k) = A(k,k)/A(k,k);                 % Atualiza a diagonal principal de L
      y(k) = (b(k) - L(k,1:k-1)*y(1:k-1));    % Resolve o sistema linear Ly = b 
      
   end
  end
  
  for k=n:-1:1   
     
    if A(k,k) != 0
      
      x(k) = (y(k) - U(k,k+1:n)*x(k+1:n))/U(k,k);   % Resolve o sistema linear Ux = y
      
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