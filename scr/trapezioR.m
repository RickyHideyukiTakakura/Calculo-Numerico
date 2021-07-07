% trapezioR.m é uma função que estima por meio da regra do trapézio a integral 
% definida de uma função.
% Entrada: 
%           f: integrando
%           a, b: intervalo de integração
%           n: número de subintervalos
% Saída
%          area = estimação da Área sob a curva f(x) no intervalo [a, b] 

function area = trapezioR(f,a,b,n)
   
   h = (b - a)/n;
   
   i = linspace(a+h,b-h,n-1);
   
   area = (h*(f(a) + 2*(sum(f(i))) + f(b)))/2;
  
end
