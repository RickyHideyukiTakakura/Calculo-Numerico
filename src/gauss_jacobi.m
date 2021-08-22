% gauss_jacobi é uma function que resolve um sistema linear (Ax = b) utilizando o método
% numérico Gauss-Jacobi.
% Entrada: 
%             A -> matriz quadrada dos coeficientes
%             b -> vetor coluna de recursos
%             x0 -> chute inicial
%             tol -> tolerância do método
% Saída:
%             x -> soluçãoo aproximada do sistema
% Saída com fprintf
%             k -> número de iterações


function x  = gauss_jacobi(A,b,x0,tol)

  if nargin < 3 
    error('são necessários pelo menos 3 argumentos')
  end 

  if nargin < 4 
    tol = 1e-4; 
  end %se tol não for definido na chamada, ele é definido como 1e-4

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
 
%%%%%% Deixe esses comandos no final da função
fprintf('O método realizou %d iterações.\n',k)
fprintf('Solução aproximada do sistema:\n')
    
end