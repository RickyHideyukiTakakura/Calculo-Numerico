% script exemplo1.m

n = input("Digite um n�mero:");

m = input("Digite um valor inteiro:");

soma = 0;

if n > 0

 for i = 1:m

 soma = soma+n;

 end

else

 for i = 1:m

 soma = soma-n;

 end

end

disp("O valor de soma �: ")

disp(soma)