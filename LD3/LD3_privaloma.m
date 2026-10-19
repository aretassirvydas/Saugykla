% Aretas Sirvydas, EIf-25
% 3 laboratorinis darbas, 9 variantas (privaloma)
% VILNIUS TECH EF - Skriptinis programavimas
clear; clc; close all;

%% 1. Dvimatis grafiku vaizdavimas
% a) f(x) = 2*e^(-0.02x)*cos(0.2x), 300 tasku [0; 200]
x = linspace(0, 200, 300);
f = 2*exp(-0.02*x).*cos(0.2*x);

figure(1);
plot(x, f, 'g', 'LineWidth', 10);
axis([min(x) max(x) min(f) max(f)]);
title('f(x) = 2e^{-0.02x}cos(0.2x)');
xlabel('x'); ylabel('f(x)');
legend('f(x) = 2e^{-0.02x}cos(0.2x)', 'Location', 'bestoutside');
grid on;

% b) f(z) = cot(z), -pi<z<0 ir 0<z<pi (be neapibreztu tasku -pi, 0, pi)
n  = 200;
z1 = linspace(-pi, 0, n+2); z1 = z1(2:end-1);
z2 = linspace(0,  pi, n+2); z2 = z2(2:end-1);
f1 = cot(z1);
f2 = cot(z2);

figure(2);
plot(z1, f1, 'b', z2, f2, 'r', 'LineWidth', 1.5);
zAll = [z1 z2]; fAll = [f1 f2];
axis([min(zAll) max(zAll) min(fAll) max(fAll)]);
title('f(z) = cot(z)');
xlabel('z'); ylabel('f(z)');
legend('cot(z), -\pi < z < 0', 'cot(z), 0 < z < \pi', 'Location', 'bestoutside');
grid on;

%% 2. Specializuotu grafiku kurimas
x = 0:pi/100:10*pi;
y = sin(x).*cos(x);
z = cos(x);

figure(3);
% a) trimate kreive
subplot(2,1,1);
plot3(x, y, z, 'LineWidth', 1.2);
title('a) y(x) = sin(x)cos(x), z(x) = cos(x)');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;

% b) y(x) kampineje koordinaciu asyje
% (neigiamas spindulys -> tas pats taskas kampu +pi)
th = x; r = y;
th(r < 0) = th(r < 0) + pi;
r = abs(r);
subplot(2,1,2);
polarplot(th, r, 'LineWidth', 1.2);
title('b) y(x) = sin(x)cos(x) polarineje sistemoje');