function x = raizquad(a)
  
  k = 0;
  x0 = a / 2;
  
  while k <= 50 && e > 0.0001
  
    x = (x0 + (a./x0))./2;
    e = abs((x - x0)./(x));
    x0 = x;
    k++;
     
  end
  
end
