% Aretas Sirvydas, EIf-25
% 6 laboratorinis darbas, 21 variantas (papildoma)
% Funkcija aprasyta kaip lokali funkcija failo gale (MATLAB R2016b+)
clear; clc;

x = pi/6;

disp('--- Be isvesties kintamojo: vienasdu(x) ---');
vienasdu(x)

disp('--- Vienas isvesties kintamasis: s = vienasdu(x) ---');
s = vienasdu(x)

disp('--- Du isvesties kintamieji: [s, c] = vienasdu(x) ---');
[s, c] = vienasdu(x)

disp('--- Klaida: per daug isvesciu [a, b, d] = vienasdu(x) ---');
try
    [a, b, d] = vienasdu(x);
catch klaida
    disp(klaida.message);
end

disp('--- Klaida: du ivesties kintamieji vienasdu(1, 2) ---');
try
    vienasdu(1, 2);
catch klaida
    disp(klaida.message);
end

%% Lokali funkcija

function varargout = vienasdu(varargin)
%VIENASDU Grazina sin arba sin ir cos priklausomai nuo isvesciu skaiciaus.
%   s = VIENASDU(x)      grazina sin(x)
%   [s, c] = VIENASDU(x) grazina sin(x) ir cos(x)
if nargin ~= 1
    error('Funkcijai reikia paduoti lygiai viena kintamaji.');
end
x = varargin{1};

switch nargout
    case {0, 1}
        varargout{1} = sin(x);
    case 2
        varargout{1} = sin(x);
        varargout{2} = cos(x);
    otherwise
        error('Funkcija gali grazinti daugiausiai du kintamuosius.');
end
end
