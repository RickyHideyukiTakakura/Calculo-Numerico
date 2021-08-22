f = @(x) sin(x.^3)+cosh(x)
fplot(f,[-5 5])
xlabel('eixo X')
ylabel('eixo Y')