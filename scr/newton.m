function method = newton(f, df, x0, tol)
  
  method = 'Metodo de Newton';
  
  if nargin < 3 

    fprintf('Sao necessarios pelo menos 3 argumentos.\n')
    return

  end 
 
  if nargin < 4
    tol = 1e-4;
  end
  
  
  Niter = 50;
  
  xx(1) = x0;
  ff(1) = abs(f(x0));
  erro(1) = 0;
  
  dif = 1;
  
  k = 2;
  
  while dif > tol && abs(f(x0)) > tol && k <= (Niter + 1)
      
    df0 = df(x0);
      
    if  abs(df0) < 1e-8

      fprintf('Divisão por zero.\n')
      return

    end
  
    x = x0 - (f(x0))/(df0);
    
    dif = abs(x - x0);
    
    xx(k) = x;
    ff(k) = abs(f(x));
    erro(k) = dif;
    
    x0 = x;
    
    k = k + 1;
    
  end
  
  int = 0:(k-2);
  
  xb = [int' xx' erro' ff'];
  
  fprintf('   k     x(k)   |x(k+1)-x(k)| |f(x(k)|\n');
  
  fprintf('%4.1d %10.4f %10.4f %10.4f\n', xb.');
  
end
