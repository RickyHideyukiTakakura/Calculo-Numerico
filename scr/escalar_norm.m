% Essa function calcula o produto escalar de dois vetores e

% a norma dos mesmos

% Entrada: dois vetores de mesma dimensão

% Saída:

% esc: produto escalar de dois vetores

% norm1: norma euclidiana do vetor v1

% norm2: norma euclidiana do vetor v2

a = 6;

b = 2;

function [esc norm1 norm2] = escalar_norm(v1,v2)
  
  esc = dot(v1,v2);
  
  norm1 = norm(v1);
  norm2 = norm(v2);
  
endfunction
