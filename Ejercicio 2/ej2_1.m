clear all; close all; clc;

addpath('./ej2_utils', './utils');

% Número de alumno
num_alumno = 03282;

% Llamar a la función hcanald para obtener la respuesta impulsional
[n, h] = hcanald(num_alumno);

% Mostrar la respuesta impulsional
indices_no_cero = find(h ~= 0);
disp('Respuesta impulsional h[n]:');
for i = 1:length(indices_no_cero)
    idx = indices_no_cero(i);  % Índice de un elemento no cero
    fprintf('h[%d] = %f\n', n(idx), h(idx));
end

% Preparar datos para la función de graficado
data = struct('x', {n}, 'y', {h});
titles = {'Respuesta Impulsional'};
xlabels = {'n'};
ylabels = {'h_A[n]'};
plot_type = {'stem'};
colors = {'b'}; % Azul
filename = 'senial-ej2.pdf';

% Utilizar la función plot_signal para graficar
plot_signal(data, 1, 1, titles, xlabels, ylabels, plot_type, filename, colors);
