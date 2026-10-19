% Aretas Sirvydas, EIf-25
% 6 laboratorinis darbas, 23 variantas (privaloma)
% Visos funkcijos aprasytos kaip lokalios funkcijos failo gale (MATLAB R2016b+)
clear; clc; close all;

%% 1. Elementariu funkciju kurimas
disp('--- help kauliukai ---');
help LD6_privaloma>kauliukai

[a, b] = kauliukai;
disp(['Iskrito: ' num2str(a) ' ir ' num2str(b)]);

%% 2. Globaliu kintamuju naudojimas
global x y

x = 2*pi:-0.1:-2*pi;     % vektorius nuo 2*pi iki -2*pi, zingsnis -0.1
y = zeros(size(x));

neigiama                 % y = -sin(x), kai x < 0
teigiama                 % y =  sin(x), kai x >= 0

plot(x, y, 'k-.+');      % juoda, bruksnine-taskine, pliuso markeriai
grid on;
xlabel('x'); ylabel('y(x)');
title('y(x) = -sin(x), kai x < 0;  sin(x), kai x \geq 0');

%% Lokalios funkcijos

function [k1, k2] = kauliukai
%KAULIUKAI Imituoja dvieju losimo kauliuku metima.
%   [k1, k2] = KAULIUKAI grazina du atsitiktinai iskritusius
%   sveikuosius skaicius is aibes [1, 2, ..., 6].
%
%   Ivesties kintamieji: nera.
%   Isvesties kintamieji:
%       k1 - pirmojo kauliuko iskrites skaicius
%       k2 - antrojo kauliuko iskrites skaicius
%
%   Pavyzdys:
%       [a, b] = kauliukai
k1 = floor(6 * rand) + 1;
k2 = floor(6 * rand) + 1;
end

function neigiama
% NEIGIAMA apskaiciuoja y = -sin(x), kai x < 0 (per globalius kintamuosius).
global x y
y(x < 0) = -sin(x(x < 0));
end

function teigiama
% TEIGIAMA apskaiciuoja y = sin(x), kai x >= 0 (per globalius kintamuosius).
global x y
y(x >= 0) = sin(x(x >= 0));
end
