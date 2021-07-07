% simpsonR.m � uma fun��o que estima por meio da regra de Simpson Repetida a integral 
% definida de uma fun��o.
% Entrada: 
%           f: integrando
%           a, b: intervalo de integra��o
%           n: n�mero de subintervalos 
% Sa�da:
%           area = estima��o da �rea sob a curva f(x) no intervalo [a, b] 

function area = simpsonR(f,a,b,n)
    
% COMPLETE
  if rem(n,2) != 0
    
   fprintf('O valor n dever� ser par.\n');
   area = [];
   return;
   
  else
    
   h = (b - a)/n;
  
   i = linspace(a+h, b-h, n-1);
  
   impar = 1:2:n-1;
   par = 2:2:n-1;
  
   area = (h*(f(a)+ 4*(sum(f(i(impar)))) + 2*(sum(f(i(par)))) + f(b)))/3;
  
  end

end