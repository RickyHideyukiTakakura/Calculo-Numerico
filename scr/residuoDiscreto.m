function s = residuoDiscreto(y, r)
  
  n = length(y);
  s = 0;  
 
  
  for k = 1:n
    
    s = s + (y(k) - r(k)).^2;
    
  end
end