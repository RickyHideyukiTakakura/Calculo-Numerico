function x1 = secanteNL(F,B,x0,tol)
% A função secateNL.m é utilizada para resolver sistemas de equações não-lineares:
%                           F(X)=0
% onde F é um funcional F:R^n -> R^n e X pertence ao R^n.
% Entrada:
%         F: Função vetorial (Nx1)
%         B: matriz B inicia (NxN)
%         x0: chute inicial (Nx1)
% Saida:
%         x1 : vetor solucao tal que F(x)  e próximo do vetor nulo
%         k:  numero de iteração (utilizando fprintf) 
              

if nargin < 3 
    error('são necessários pelo menos 3 argumentos')
end 

if nargin < 4 
    tol = 1e-4; 
end 

% Verificando se x é um vetor coluna, caso não seja, aplicar a
% transposição.
[m n] = size(x0);

if m == 1 
    x0 = x0';
end


MAX = 1000;

k=0;
 
n = length(x0); 

%%%%% COMPLETAR 

while norm(F(x0)) > tol && k <= MAX
  
  
  s = -B\F(x0);
  x1 = x0 + s;
  B = B + (F(x1)*(s'))/((s')*s);
  x0 = x1;
  k++;
  
end  

fprintf('O método precisou de %d iterações para convergir.\n',k)

end