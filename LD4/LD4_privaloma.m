% Aretas Sirvydas, EIf-25
% 4 laboratorinis darbas, 13 variantas (privaloma)
clear; clc; close all;

%% a) f(x,y) = 1 - 2x^2 - 3y^2, x = r*cos(theta), y = r*sin(theta)
r     = linspace(0, 1, 50);
theta = linspace(0, 2*pi, 100);
[R, T] = meshgrid(r, theta);
X = R .* cos(T);
Y = R .* sin(T);
Z = 1 - 2*X.^2 - 3*Y.^2;

figure(1);
h1 = surf(X, Y, Z);
colormap(gca, 'summer');           % grafiko spalva
shading interp;                    % seselio nustatymas
rotate(h1, [0 0 1], 45);           % x ir y plokstumu pasukimas 45 laipsniu
title('f(x,y) = 1 - 2x^2 - 3y^2 (polinese koordinatese)');
xlabel('x'); ylabel('y'); zlabel('f(x,y)');
colorbar; grid on;

%% b) f(x,y) = sin(|x+y|/20) * e^(-|x+y|), x,y nuo -2 iki 2
[x, y] = meshgrid(linspace(-2, 2, 100));
f = sin(abs(x + y)/20) .* exp(-abs(x + y));

figure(2);
h2 = surf(x, y, f);
colormap(gca, 'hot');
shading interp;
rotate(h2, [0 0 1], 60);           % pasukimas 60 laipsniu
title('f(x,y) = sin(|x+y|/20) \cdot e^{-|x+y|}');
xlabel('x'); ylabel('y'); zlabel('f(x,y)');
colorbar; grid on;
