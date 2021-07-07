%% Questao 1
%f = @ (x) x.^3 + 3.*x - 1;

%fplot(f, [0, 0.5])

%% Questao 2

%f = @(x) 2.^x - (x.* sin)(x));

%fplot (f, [-5, 5])

%% Questao 3

f = @(x) (x.* cos(-pi.*(x./2 + 1)))/0.5 - (5.*10.^-4.*x);

