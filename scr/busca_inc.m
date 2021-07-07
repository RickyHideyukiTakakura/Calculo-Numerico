function xb = busca_inc(func,xmin,xmax,ns) 

  if nargin < 3
    error('sao necessarios pelo menos 3 argumentos');
  end
  
  if nargin < 4
    ns = 50;
  end
  
  x = linspace(xmin, xmax, ns);
  f = func(x);
  nb = 0;
  xb = [];
  
  for k = 1 : length(x)-1
    if sign(f(k)) ~= sign(f(k+1))
      nb = nb + 1;
      xb(nb, 1) = x(k);
      xb(nb, 2) = x(k+1);
    end
  end
  
  if isempty(xb)
    disp('nenhum subintervalo encontrado')
    disp('verifique o intervalo ou aumente ns')
  else
    disp('numero de subintervalo: ')
    disp(nb)
  end  
  

end