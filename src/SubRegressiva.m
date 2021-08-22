function x = SubRegressiva(U,b)
% SubRegressiva.m  uma function que resolve um sistema triangular superior
% Ux = b
% Entradas: U (matriz triangular superior dos coeficientes )
%           b (vetor de recursos)
% Saida: x solução do sistenma triangular superior) 

  n = length(U);
  x = zeros(n,1);
  

  for k=n:-1:1   
    
    if U(k,k) != 0
      
      x(k) = (b(k) - U(k,k+1:n)*x(k+1:n))/U(k,k);
 
    else
     
      fprintf('A matriz dos coeficientes não possui inversa\n')
      x = 'Falhou';
      return
      
    end
      
  end
    
end