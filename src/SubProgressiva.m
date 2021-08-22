function x = SubProgressiva(L,b)

% SubProgressiva.m  uma function que resolve um sistema triangular inferior
% Lx = b
% Entradas: L (matriz triangular inferior dos coeficientes )
%           b (vetor de recursos)
% Saida: x solução do sistenma triangular inferior) 


  n = length(L);
  x = zeros(n,1);
  
  for k=1:n
    
    if L(k,k) == 0
      
      fprintf('A matriz dos coeficientes não possui inversa\n')
      x = 'Falhou';
      return
 
    else
    
    x(k) = (b(k) - L(k,1:k-1)*x(1:k-1))/L(k,k);
    
    end
  
  end

end