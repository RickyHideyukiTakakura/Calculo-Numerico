% gauss_jacobi � uma function que resolve um sistema linear (Ax = b) utilizando o m�todo
% num�rico Gauss-Jacobi.
% Entrada: 
%             A -> matriz quadrada dos coeficientes
%             b -> vetor coluna de recursos
%             x0 -> chute inicial
%             tol -> toler�ncia do m�todo
% Sa�da:
%             x -> solu��oo aproximada do sistema
% Sa�da com fprintf
%             k -> n�mero de itera��es


function x  = gauss_jacobi(A,b,x0,tol)

  if nargin < 3 
    error('s�o necess�rios pelo menos 3 argumentos')
  end 

  if nargin < 4 
    tol = 1e-4; 
  end %se tol n�o for definido na chamada, ele � definido como 1e-4

IMAX = 1000;

n = length(b);
 
k = 0;

d = diag(A);
I = eye(size(A));
D = eye(size(A));
  
  for i = 1: n
  
      D(i,i) = A(i,i);
    
  end
 
C = I - D\A;
g = D\b;
 
  while norm(b-A*x0) > tol && k < IMAX
      
    x = C * x0 + g;
    x0 = x;
    k++;    
    
  end 
 
 res = norm(b-A*x0)
 
%%%%%% Deixe esses comandos no final da fun��o
fprintf('O m�todo realizou %d itera��es.\n',k)
fprintf('Solu��o aproximada do sistema:\n')
    
end