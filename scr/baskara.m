function x = baskara(v)
  
  a = v(1);
  b = v(2);
  c = v(3);
  
  delta = b.^2 - 4.*a.*c
  
     if a == 0 || delta < 0
       
       x = -1;
       return;
       
     else
       
       x1 = (-b + sqrt(delta))./(2.*a);
       x2 = (-b - sqrt(delta))./(2.*a);
       
       if x1 == x2
         
         x = x1;
       
     else   
       
         x = [x1 x2];
       
      end
      
      end
  
end