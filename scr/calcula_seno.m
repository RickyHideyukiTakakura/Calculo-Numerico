function soma = calcula_seno(n)
  
  x = pi/4;
  soma = 0;
  
    for k=1:n
      y = (-1).^(k + 1).*((x.^(2.*k - 1))/factorial(2*k - 1));
      soma = soma + y;
      k++;
     
      
    end
end