% script exemplo2.m

a = 6;

b = 2;

contmenos = 0;
contmult = 0;

while a >= 0

   a = a - 0.2;
   contmenos++;
   b = b*a;
   contmult++;

   if b > 0

      b = b - 0.5;
      
      contmenos++;

    end
    
end

disp(contmenos);
disp(contmult);