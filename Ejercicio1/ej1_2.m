clear all; close all;
addpath('./ej1_utils', '../utils');

% General
s = linspace(-0.4999, 0.4999, 512);
N = 10; delta = @(N, n0) [zeros(1, n0) 1 zeros(1, N-n0)];
n = 0:10; % Rango para n
u = @(n) (n >= 0); % Definición de la función escalón unitario

% Sistema S1
%% Respuesta impulsional
h_S1 = 0.5*(delta(N, 0) + delta(N, 1));
data_mod = struct('x', {n}, ...
                  'y', {h_S1});
titles_mod = {'Respuesta en Impulsional S1'};
xlabels_mod = {'s'};
ylabels_mod = {'|H(e^{j 2\pi s})|'};
plot_type_mod = {'stem'};
colors_mod = {'b'}; % Colores para cada señal
filename_mod = 'rta_imp_s1.pdf';
plot_signal(data_mod, 1, 1, titles_mod, xlabels_mod, ylabels_mod, plot_type_mod, filename_mod, colors_mod);

%% Respuesta en frecuencia
H_S1 = 0.5 * (1 + exp(-j * 2 * pi * s)); % Fórmula para H(e^{j2\pi s})
data_mod = struct('x', {s, s}, ...
                  'y', {abs(H_S1), angle(H_S1)});
titles_mod = {'Respuesta en Frecuencia S1 - Módulo', ...
              'Respuesta en Frecuencia S1 - Fase'};
xlabels_mod = {'s', 's'};
ylabels_mod = {'|H(e^{j 2\pi s})|', '|H(e^{j 2\pi s})|'};
plot_type_mod = {'plot', 'plot'};
colors_mod = {'b', 'b'}; % Colores para cada señal
filename_mod = 'rta_frec_s1.pdf';
plot_signal(data_mod, 1, 2, titles_mod, xlabels_mod, ylabels_mod, plot_type_mod, filename_mod, colors_mod);


% Sistema S2

%% Respuesta impulsional
h_S2 = 0.5 * (delta(N, 0) - delta(N, 1)); % Fórmula para h[n]
data_mod = struct('x', {n}, ...
                  'y', {h_S2});
titles_mod = {'Respuesta en Impulsional S2'};
xlabels_mod = {'s'};
ylabels_mod = {'|H(e^{j 2\pi s})|'};
plot_type_mod = {'stem'};
colors_mod = {'b'}; % Colores para cada señal
filename_mod = 'rta_imp_s2.pdf';
plot_signal(data_mod, 1, 1, titles_mod, xlabels_mod, ylabels_mod, plot_type_mod, filename_mod, colors_mod);

%% Respuesta en frecuencia
H_S2 = 0.5 * (1 - exp(-j * 2 * pi * s)); % Fórmula para H(e^{j2\pi s})
data_mod = struct('x', {s, s}, ...
                  'y', {abs(H_S2), angle(H_S2)});
titles_mod = {'Respuesta en Frecuencia S2 - Módulo', ...
              'Respuesta en Frecuencia S2 - Fase'};
xlabels_mod = {'s', 's'};
ylabels_mod = {'|H(e^{j 2\pi s})|', '|H(e^{j 2\pi s})|'};
plot_type_mod = {'plot', 'plot'};
colors_mod = {'b', 'b'}; % Colores para cada señal
filename_mod = 'rta_frec_mod.pdf';
plot_signal(data_mod, 1, 2, titles_mod, xlabels_mod, ylabels_mod, plot_type_mod, filename_mod, colors_mod);



% Sistema S3

%% Respuesta impulsional
h_S3 = (1/4) * (0.5.^n .* u(n) + 0.5.^(n-1) .* u(n-1)); % Fórmula para h[n]
data_mod = struct('x', {n}, ...
                  'y', {h_S3});
titles_mod = {'Respuesta en Impulsional S3'};
xlabels_mod = {'s'};
ylabels_mod = {'|H(e^{j 2\pi s})|'};
plot_type_mod = {'stem'};
colors_mod = {'b'}; % Colores para cada señal
filename_mod = 'rta_imp_s3.pdf';
plot_signal(data_mod, 1, 1, titles_mod, xlabels_mod, ylabels_mod, plot_type_mod, filename_mod, colors_mod);

%% Respuesta en frecuencia
H_S3 = (1/4) * (1 + exp(-j * 2 * pi * s)) ./ (1 - (1/2) * exp(-j * 2 * pi * s)); % Fórmula para H(e^{j2\pi s})
data_mod = struct('x', {s, s}, ...
                  'y', {abs(H_S3), angle(H_S3)});
titles_mod = {'Respuesta en Frecuencia S3 - Módulo', ...
              'Respuesta en Frecuencia S3 - Fase'};
xlabels_mod = {'s', 's'};
ylabels_mod = {'|H(e^{j 2\pi s})|', '|H(e^{j 2\pi s})|'};
plot_type_mod = {'plot', 'plot'};
colors_mod = {'b', 'b'}; % Colores para cada señal
filename_mod = 'rta_frec_mod.pdf';
plot_signal(data_mod, 1, 2, titles_mod, xlabels_mod, ylabels_mod, plot_type_mod, filename_mod, colors_mod);


% Sistema S4

%% Respuesta impulsional
h_S4 = (1/4) * ((-0.5).^n .* u(n) - (-0.5).^(n-1) .* u(n-1)); % Fórmula para h[n]
data_mod = struct('x', {n}, ...
                  'y', {h_S4});
titles_mod = {'Respuesta en Impulsional S4'};
xlabels_mod = {'s'};
ylabels_mod = {'|H(e^{j 2\pi s})|'};
plot_type_mod = {'stem'};
colors_mod = {'b'}; % Colores para cada señal
filename_mod = 'rta_imp_s4.pdf';
plot_signal(data_mod, 1, 1, titles_mod, xlabels_mod, ylabels_mod, plot_type_mod, filename_mod, colors_mod);

%% Respuesta en frecuencia
H_S4 = (1/4) * (1 - exp(-j * 2 * pi * s)) ./ (1 + (1/2) * exp(-j * 2 * pi * s)); % Fórmula para H(e^{j2\pi s})
data_mod = struct('x', {s, s}, ...
                  'y', {abs(H_S4), angle(H_S4)});
titles_mod = {'Respuesta en Frecuencia S4 - Módulo', ...
              'Respuesta en Frecuencia S4 - Fase'};
xlabels_mod = {'s', 's'};
ylabels_mod = {'|H(e^{j 2\pi s})|', '|H(e^{j 2\pi s})|'};
plot_type_mod = {'plot', 'plot'};
colors_mod = {'b', 'b'}; % Colores para cada señal
filename_mod = 'rta_frec_mod.pdf';
plot_signal(data_mod, 1, 2, titles_mod, xlabels_mod, ylabels_mod, plot_type_mod, filename_mod, colors_mod);

