% Aretas Sirvydas, EIf-25
% 2 laboratorinis darbas, 6 variantas (papildoma) - P1
clear; clc;

A = input('Iveskite vektoriu A, pvz. [1 2 3 4 5 6 7]: ');

% Matrix Indexing (":" ir "end")
B = A(2:2:end);              % lyginiai indeksai, didejimo tvarka
C = A(1:2:end);
C = C(end:-1:1);             % nelyginiai indeksai, mazejimo tvarka

% Logical Indexing (tas pats rezultatas)
lyg = mod(1:numel(A), 2) == 0;
B_log = A(lyg);
C_log = fliplr(A(~lyg));

disp('vektorius B yra:'); disp(B)
disp('vektorius C yra:'); disp(C)
