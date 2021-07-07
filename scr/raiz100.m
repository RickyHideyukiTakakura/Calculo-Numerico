function x = raiz100(a)

x0 = a/2;

i = 1;

erro = 1;

while i <= 50 && erro >= 0.0001
    x = (99*x0 + a/x0^99)/100; 
    erro = abs((x - x0)/x);
    x0= x;
    i = i+1;
end

end