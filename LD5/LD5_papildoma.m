% VILNIUS TECH EF - Skriptinis programavimas - 5 LD, papildoma užduotis (17 variantas)
% Operacijų programoje MATLAB nuoseklumo valdymo įsisavinimas
clc; clear;

x = input('Įveskite x (eilučių skaičius): ');
y = input('Įveskite y (stulpelių skaičius): ');

for i = 1:20
    m = ceil(x * rand);     % natūralusis skaičius 1 <= m <= x
    n = ceil(y * rand);     % natūralusis skaičius 1 <= n <= y

    A = zeros(x, y);        % x*y nulių matrica
    A(m, n) = NaN;          % į elementą A(m,n) įrašomas NaN

    fprintf('Iteracija %d: m = %d, n = %d\n', i, m, n);
    disp(A);

    pause(0.5);
    clc;                    % išvalomas komandinis langas
end
