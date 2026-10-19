% Vardas Pavarde: Aretas Sirvydas
% Grupe: EIf-25
% 1 laboratorinis darbas, 2026-09-28
clear; clc; close all;

%% PRIVALOMA UZDUOTIS
% 7. Skriptas is 1 pav.
x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   |   F_2 [-x-]')

% 8. Pagalbos paieska (vykdyti Komandiniame lange):
%   help sin        - trumpas aprasymas Komandiniame lange
%   doc plot        - detalus aprasymas Help lange
%   docsearch title - paieska Help lange
% 9. Sintakse:
%   y = linspace(x1,x2)     -> 100 tasku; y = linspace(x1,x2,n) -> n tasku
%   sz = size(A); [m,n] = size(A); m = size(A,dim)
%   M = max(A); [M,I] = max(A); M = max(A,[],dim); C = max(A,B)
%   Susijusios f-jos: colon, logspace | length, ndims, numel | min, bounds, cummax

%% PAPILDOMA UZDUOTIS
% 1. Paskutinis studento ID skaitmuo
N = 7;                                  % <-- IRASYKITE SAVO

% 2. Vektorius nuo N+1 iki N+4, zingsnis 0.5
v = N+1 : 0.5 : N+4

% 3. 3x3 matrica, elementai didejantys vienetu (eilutemis)
A = reshape(N:N+8, 3, 3)'

% 4. Zaliai pazymeti elementai
a = A(3, 2)                             % a) 3 eilute, 2 stulpelis
b = A(2:3, 1:2)                         % b) apatinis kairysis 2x2
c = A([1 end], [1 end])                 % c) kampai

% 5. Prijungiamas vektorius (sutrumpintas iki 3 el. ir paverstas stulpeliu)
A_v = [A, v(1:3)']
