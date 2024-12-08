clear all; close all; clc;

addpath('./+ej2_utils', './+utils');

x = respuesta_impulsional();

% Aplicar el filtro compensador con 2 retardos
y2 = filtro_compensador_2(x, 0.45, 0.2025, 8820, 17640);

% Aplicar el filtro compensador con 3 retardos
y3 = filtro_compensador_3(x, 0.45, 0.2025, -0.18225, 8820, 17640, 26460);

% Estructura para el primer gráfico (Filtro con 2 retardos)
data_entrada = struct('x', {1:length(y2)}, 'y', {y2});
titles_entrada = {'Señal de Salida (2 retardos)'};
xlabels_entrada = {'n'};
ylabels_entrada = {'y[n]'};
plot_type_entrada = {'plot'};
filename_entrada = 'salida_2retardos.pdf';
colors_entrada = {'b'};  % Azul

% Graficar la señal de salida para el filtro de 2 retardos
plot_signal(data_entrada, 1, 1, titles_entrada, xlabels_entrada, ylabels_entrada, plot_type_entrada, filename_entrada, colors_entrada);

% Estructura para el segundo gráfico (Filtro con 3 retardos)
data_salida_3 = struct('x', {1:length(y3)}, 'y', {y3});
titles_salida_3 = {'Señal de Salida (3 retardos)'};
xlabels_salida_3 = {'n'};
ylabels_salida_3 = {'y[n]'};
plot_type_salida_3 = {'plot'};
filename_salida_3 = 'salida_3retardos.pdf';
colors_salida_3 = {'g'};  % Verde

% Graficar la señal de salida para el filtro de 3 retardos
plot_signal(data_salida_3, 1, 1, titles_salida_3, xlabels_salida_3, ylabels_salida_3, plot_type_salida_3, filename_salida_3, colors_salida_3);

pause;

