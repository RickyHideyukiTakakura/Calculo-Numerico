function method = falsaposicao(f, a, b, tol)
  
method = 'Método da Falsa Posição';
  
  if sign(f(a)) == sign(f(b))
    disp('Teorema de Bolzano não satisfeito no intervalo [a, b]');
    return
  end
  
  Niter = 50;
  
  if nargin < 3
    error('são necessarios pelo menos 3 argumentos')
    return
  end
  
  if nargin < 4
    tol = 1e-4;
  end
  
  x = (a.*(f(b)) - b.*(f(a)))./((f(b)) - f(a));
  
  aa(1) = a;
  bb(1) = b;
  xx(1) = x;
  ff(1) = abs(f(x));
  erro(1) = abs(b-a);
  
  k = 2;
  
  while abs(b-a) > tol && abs(f(x)) > tol && (k <= Niter + 1)
    if sign(f(a)) ~= sign(f(x))
      a = a;
      b = x;
    else  
      a = x;
      b = b;
    end
    
    x = (a.*(f(b)) - b.*(f(a)))./((f(b)) - f(a));
    
    aa(k) = a;
    bb(k) = b;
    xx(k) = x;
    ff(k) = abs(f(x));
    erro(k) = abs(b-a);
    
    k = k + 1;

  end 
  
   int = 0:(k-2);
   
   fprintf('   k       a          x          b         |b-a|     |f(x)|\n');
   
   xb = [int' aa' xx' bb' erro' ff'];
   fprintf('%4.1d %10.4f %10.4f %10.4f %10.4f %10.4f\n', xb.');
   
end
