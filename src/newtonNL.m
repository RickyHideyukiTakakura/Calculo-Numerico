function x = newtonNL(F,J,x,tol)
% A função newtonNL.m é utilizada para resolver sistemas de equações não-lineares:
%                             F(X)=0
% onde F e um funcional F:R^n -> R^n e X pertence ao R^n.
% Entrada:
%         F: Funcao vetorial (Nx1)
%         J: Jacobiano de F  (NxN)
%         x: chute inicial (Nx1)
% Saida:
%         x : vetor solucao tal que F(x)  é próximo do vetor nulo
%         k:  numero de iteraçõess (utilizando fprintf)


if nargin < 3 
    error('são necessários pelo menos 3 argumentos')
end 

if nargin < 4 
    tol = 1e-4; 
end 

% Verificando se x é um vetor coluna, caso não seja, aplicar a
% transposição.
[m n] = size(x);

if m == 1 
    x = x';
end

% Número máximo de iterações
MAX = 1000;

%%%% COMPLETAR
k = 0;

while norm(F(x)) > tol && k <= MAX
  
  s = -J(x)\F(x);
  x = x + s;
  x = x;
  k++;
  
end  


fprintf('O método precisou de %d iterações para convergir.\n',k)

end