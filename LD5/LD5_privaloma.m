% VILNIUS TECH EF - Skriptinis programavimas - 5 LD, privaloma užduotis (6 variantas)
% Kiti duomenų tipai ir operacijų nuoseklumas
clc; clear; close all;

%% 1. Struktūros
% a) Struktūra su trijų valiutų supirkimo ir pardavimo kursais
%    (struktūroje laikomi įvairių tipų duomenys: char, double, logical, cell)
kursai = struct( ...
    'valiuta',   {'USD', 'GBP', 'PLN'}, ...
    'pavadinimas', {'JAV doleris', 'Svaras sterlingų', 'Lenkijos zlotas'}, ...
    'supirkimas', {1.0650, 0.8420, 4.2800}, ...
    'pardavimas', {1.0890, 0.8650, 4.3900}, ...
    'aktyvi',    {true, true, true}, ...
    'pastabos',  {{'bazinė valiuta EUR'}, {'bazinė valiuta EUR'}, {'bazinė valiuta EUR'}});

disp('Pradiniai valiutų kursai (1 EUR =):');
for k = 1:numel(kursai)
    fprintf('%s (%s): supirkimas %.4f, pardavimas %.4f\n', ...
        kursai(k).valiuta, kursai(k).pavadinimas, ...
        kursai(k).supirkimas, kursai(k).pardavimas);
end
disp(' ');
disp('Struktūros laukai:');
disp(fieldnames(kursai));

% b) Pasirinktos valiutos supirkimo kainos pakeitimas, neperrašant kitų duomenų
pasirinkta = upper(input('Kurios valiutos supirkimo kursą keisti (USD/GBP/PLN)? ', 's'));
idx = find(strcmp({kursai.valiuta}, pasirinkta));

if isempty(idx)
    disp('Tokios valiutos struktūroje nėra.');
else
    naujas = input(['Naujas ' pasirinkta ' supirkimo kursas: ']);
    kursai(idx) = setfield(kursai(idx), 'supirkimas', naujas); %#ok<SFLD>
    disp(' ');
    disp('Atnaujinti valiutų kursai (1 EUR =):');
    for k = 1:numel(kursai)
        fprintf('%s (%s): supirkimas %.4f, pardavimas %.4f\n', ...
            kursai(k).valiuta, kursai(k).pavadinimas, ...
            kursai(k).supirkimas, kursai(k).pardavimas);
    end
end

disp(' ');
pause(1);

%% 2. Srauto valdymo konstruktoriai - skaičiaus spėjimas
A = round(10 * rand + 1);   % sveikas skaičius nuo 1 iki 11

disp('Atspėkite skaičių nuo 1 iki 11.');
spejimas = input('Jūsų spėjimas: ');
bandymai = 1;

while spejimas ~= A
    if spejimas < A
        disp('skaičius per mažas');
    else
        disp('skaičius per didelis');
    end
    spejimas = input('Jūsų spėjimas: ');
    bandymai = bandymai + 1;
end

disp(['Pataikėte! Skaičius buvo ' num2str(A) ...
      '. Bandymų skaičius: ' num2str(bandymai)]);
