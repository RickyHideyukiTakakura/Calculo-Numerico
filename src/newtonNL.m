function x = newtonNL(F,J,x,tol)
% A fun��o newtonNL.m � utilizada para resolver sistemas de equa��es n�o-lineares:
%                             F(X)=0
% onde F e um funcional F:R^n -> R^n e X pertence ao R^n.
% Entrada:
%         F: Funcao vetorial (Nx1)
%         J: Jacobiano de F  (NxN)
%         x: chute inicial (Nx1)
% Saida:
%         x : vetor solucao tal que F(x)  � pr�ximo do vetor nulo
%         k:  numero de itera��ess (utilizando fprintf)


if nargin < 3 
    error('s�o necess�rios pelo menos 3 argumentos')
end 

if nargin < 4 
    tol = 1e-4; 
end 

% Verificando se x � um vetor coluna, caso n�o seja, aplicar a
% transposi��o.
[m n] = size(x);

if m == 1 
    x = x';
end

% N�mero m�ximo de itera��es
MAX = 1000;

%%%% COMPLETAR
k = 0;

while norm(F(x)) > tol && k <= MAX
  
  s = -J(x)\F(x);
  x = x + s;
  x = x;
  k++;
  
end  


fprintf('O m�todo precisou de %d itera��es para convergir.\n',k)

end