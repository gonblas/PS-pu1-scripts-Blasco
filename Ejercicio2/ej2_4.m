clear all; close all;
addpath('./ej2_utils', '../utils');

x = respuesta_impulsional();

% Aplicar el filtro compensador con 1 retardo
y1 = filtro_una_rama(x);

indices_no_cero = find(y1 ~= 0);
fprintf('\nRespuesta impulsional h[n] 1 rama de retardo:\n');
for i = 1:length(indices_no_cero)
    idx = indices_no_cero(i);  % Índice de un elemento no cero
    fprintf('h[%d] = %f\n', idx, y1(idx));
end

% Aplicar el filtro compensador con 2 retardos
y2 = filtro_dos_ramas(x);

indices_no_cero = find(y2 ~= 0);
fprintf('\nRespuesta impulsional h[n] 2 ramas de retardo:\n');
for i = 1:length(indices_no_cero)
    idx = indices_no_cero(i);  % Índice de un elemento no cero
    fprintf('h[%d] = %f\n', idx, y2(idx));
end

% Aplicar el filtro compensador con 3 retardos
y3 = filtro_tres_ramas(x);

indices_no_cero = find(y3 ~= 0);
fprintf('\nRespuesta impulsional h[n] 3 ramas de retardo:\n');
for i = 1:length(indices_no_cero)
  idx = indices_no_cero(i);  % Índice de un elemento no cero
  fprintf('h[%d] = %f\n', idx, y3(idx));
end


% Estructura para el primer gráfico (Filtro con 1 retardo)
data_entrada = struct('x', {1:length(y1)}, 'y', {y1});
titles_entrada = {'Señal de Salida (1 retardo)'};
xlabels_entrada = {'n'};
ylabels_entrada = {'y[n]'};
plot_type_entrada = {'stem'};
filename_entrada = 'salida_1retardo.pdf';
colors_entrada = {'b'};  % Azul

% Graficar la señal de salida para el filtro de 1 retardo
plot_signal(data_entrada, 1, 1, titles_entrada, xlabels_entrada, ylabels_entrada, plot_type_entrada, filename_entrada, colors_entrada);


% Estructura para el segundo gráfico (Filtro con 2 retardos)
data_entrada = struct('x', {1:length(y2)}, 'y', {y2});
titles_entrada = {'Señal de Salida (2 retardos)'};
xlabels_entrada = {'n'};
ylabels_entrada = {'y[n]'};
plot_type_entrada = {'stem'};
filename_entrada = 'salida_2retardos.pdf';
colors_entrada = {'b'};  % Azul

% Graficar la señal de salida para el filtro de 2 retardos
plot_signal(data_entrada, 1, 1, titles_entrada, xlabels_entrada, ylabels_entrada, plot_type_entrada, filename_entrada, colors_entrada);

% Estructura para el tercer gráfico (Filtro con 3 retardos)
data_salida_3 = struct('x', {1:length(y3)}, 'y', {y3});
titles_salida_3 = {'Señal de Salida (3 retardos)'};
xlabels_salida_3 = {'n'};
ylabels_salida_3 = {'y[n]'};
plot_type_salida_3 = {'stem'};
filename_salida_3 = 'salida_3retardos.pdf';
colors_salida_3 = {'b'};  % Azul

% Graficar la señal de salida para el filtro de 3 retardos
plot_signal(data_salida_3, 1, 1, titles_salida_3, xlabels_salida_3, ylabels_salida_3, plot_type_salida_3, filename_salida_3, colors_salida_3);



