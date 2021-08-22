function x = EGauss(A,b)
  
  n = length(A);
  A = [A b];
  
  for k = 1:n - 1
    for i = k+1: n
      
      if A(k,k) == 0
        
        fprintf('A matriz dos coeficientes não possui inversa\n')
        x = 'Falhou';
        return
        
      else
      
        A(i,k:end) = A(i,k:end) - (A(i,k)/A(k,k))*A(k,k:end)
        
      end
    end  
  end
  
  x = SubRegressiva(A(:,1:n),A(:,end));
  
end
