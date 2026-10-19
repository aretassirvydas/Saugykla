% Aretas Sirvydas, EIf-25
% 2 laboratorinis darbas, 4 variantas (privaloma)
clear; clc;

%% 1. Vienmaciai masyvai
v1 = (-pi : 0.7 : 2*pi)'               % a) vektorius-stulpelis
v2 = cos(v1)                           % b) cos reiksmes
r  = v1 .^ v2;                         % c) kelimas laipsniu panariui
disp('Atsakymas (vektorius-eilute):')
disp(r.')                              % d) .' - transponuoja be kompleksinio jungtinio

%% 2. Dvimaciai masyvai
X = [exp(5)   exp(-1i/exp(1))  log(1);
     log(pi)  -2               -sin(pi)]          % a)

X1n = [X(2,1)^2, X(1,3), X(2,3)^2];               % b)
X = [X; X1n]

detX = det(X)                                      % c)

%% 3. Signalo apdorojimas
t = 0 : 0.005 : 1;
A = 7; f = 4; sigma = 2; U1 = 4.5; U2 = 2.5;

s  = A*sin(2*pi*f*t);
n  = sigma*randn(size(t));
sn = s + n;                            % signalas su triuksmu

virsU1 = sn(sn > U1)                   % a) reiksmes > U1

sf = sn;                               % b) filtravimas
sf(abs(sf) < U2) = 0;

dydis_sn   = numel(sn)                 % c) nefiltruoto signalo dydis
dydis_virs = numel(virsU1)             % d) atrinktu reiksmiu dydis

sf_max = max(sf)                       % e)
sf_min = min(sf)

% Rezultatai 3 LD papildomai uzduociai
save('LD2_rezultatai.mat', 't', 'sn', 'sf', 'U1', 'U2');