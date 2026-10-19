% Aretas Sirvydas, EIf-25
% 3 laboratorinis darbas, 9 variantas (papildoma) - signalu atvaizdavimas
clear; clc; close all;

% 2 LD 3 uzduoties rezultatai
if isfile('LD2_rezultatai.mat')
    load('LD2_rezultatai.mat');
else                                   % jei failo nera - sugeneruojama is naujo
    t = 0:0.005:1; A = 7; f = 4; sigma = 2; U1 = 4.5; U2 = 2.5;
    sn = A*sin(2*pi*f*t) + sigma*randn(size(t));
    sf = sn; sf(abs(sf) < U2) = 0;
end

violet = [0.49 0.18 0.56];
zydra  = [0.30 0.75 0.93];
yLim   = [min(sn) max(sn)] + [-1 1];

figure('Name', 'Signalai');

%% a) Pradinis ir filtruotas signalai
subplot(1, 2, 1);                                         % horizontalus isdestymas
plot(t, sn, '--', 'LineWidth', 1.5); hold on;
plot(t, sf, ':',  'LineWidth', 1.5);
yline(U1,  '-.k', 'LineWidth', 1.2);
yline(U2,  '-', 'Color', violet, 'LineWidth', 1.2);
yline(-U2, '-', 'Color', violet, 'LineWidth', 1.2, 'HandleVisibility', 'off');
hold off;
title('Pradinis ir filtruotas signalai', 'Color', violet, 'FontSize', 16);
xlabel('Laikas t, s'); ylabel('Itampa U, V');
legend('Pradinis signalas', 'Filtruotas signalas', ...
       sprintf('U_1 = %.1f V', U1), sprintf('\\pmU_2 = %.1f V', U2), ...
       'Location', 'southoutside');
axis([t(1) t(end) yLim]);
grid on;

%% b) Reiksmes virsijancios U1 (diskretus formatas)
idx = sn > U1;
tv  = t(idx);
sv  = sn(idx);
iMax = sv == max(sv);                 % visos maksimalios reiksmes
iMin = sv == min(sv);                 % visos minimalios reiksmes

subplot(1, 2, 2);
stem(tv, sv, 'LineWidth', 1.5); hold on;
plot(tv(iMax), sv(iMax), '*', 'Color', zydra, 'MarkerSize', 14, 'LineWidth', 2);
plot(tv(iMin), sv(iMin), 'v', 'Color', 'r',   'MarkerSize', 10, 'LineWidth', 2);
yline(U1, '-.k', 'LineWidth', 1.2);
hold off;
title('Reiksmes, virsijancios U_1', 'Color', violet, 'FontSize', 16);
xlabel('Laikas t, s'); ylabel('Itampa U, V');
legend('U > U_1', sprintf('U_{max} = %.2f V', max(sv)), ...
       sprintf('U_{min} = %.2f V', min(sv)), sprintf('U_1 = %.1f V', U1), ...
       'Location', 'southoutside');
axis([t(1) t(end) U1-0.5 max(sv)+1]);
grid on;
