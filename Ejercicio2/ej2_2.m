clear all; close all;
addpath('./ej2_utils', '../utils');

% Generar el impulso unitario de longitud 20000 (por ejemplo)
x = zeros(1, 20000);
x(1) = 1;  % Impulso unitario en n = 0

% Calcular la respuesta impulsional con la función slid
y = ec_canald(x);

% Crear estructura para el plot_signal
data = struct('x', {1:length(y)}, 'y', {y});
titles = {'Respuesta Impulsional'};
xlabels = {'n'};
ylabels = {'h_A[n]'};
plot_type = {'stem'};
filename = 'respuesta_impulsional.pdf';
colors = {'b'}; % Color azul

% Graficar utilizando plot_signal
plot_signal(data, 1, 1, titles, xlabels, ylabels, plot_type, filename, [5 4 1], colors);

