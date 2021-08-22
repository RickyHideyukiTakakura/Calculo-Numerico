% trapezioR.m � uma fun��o que estima por meio da regra do trap�zio a integral 
% definida de uma fun��o.
% Entrada: 
%           f: integrando
%           a, b: intervalo de integra��o
%           n: n�mero de subintervalos
% Sa�da
%          area = estima��o da �rea sob a curva f(x) no intervalo [a, b] 

function area = trapezioR(f,a,b,n)
   
   h = (b - a)/n;
   
   i = linspace(a+h,b-h,n-1);
   
   area = (h*(f(a) + 2*(sum(f(i))) + f(b)))/2;
  
end
