% Aretas Sirvydas, EIf-25
% 4 laboratorinis darbas, 3 variantas (papildoma) - colormap savybes
clear; clc; close all;

[x, y] = meshgrid(linspace(-1, 1, 60));
z = 1 - (x.^2 + y.^2);

spalvos = {'parula', 'jet', 'cool'};

figure('Name', 'colormap savybes');
for k = 1:numel(spalvos)
    ax = subplot(1, 3, k);
    surf(x, y, z);
    colormap(ax, spalvos{k});      % kiekvienai asiai atskira palete
    shading interp;
    title(['z = 1 - (x^2 + y^2), colormap: ' spalvos{k}]);
    xlabel('x'); ylabel('y'); zlabel('z');
    colorbar; grid on;
end
