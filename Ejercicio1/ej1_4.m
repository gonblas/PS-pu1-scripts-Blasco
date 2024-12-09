clear all; close all;
addpath('./ej1_utils', '../utils');

% Señal de entrada: Señal del ejercicio 1
num_alumno = 03282;
[n, x] = senial(num_alumno);

% Salidas
y_S1 = y_S1(x);
y_S2 = y_S2(x);
y_S3 = y_S3(x);
y_S4 = y_S4(x);

% Configuración para el primer gráfico (S1 y S2)
data = struct('x', {n, n}, 'y', {y_S1, y_S2});
titles = {'Salida del sistema S1 a la señal del Ejercicio 1', ...
            'Salida del sistema S2 a la señal del Ejercicio 1'};
xlabels = {'n', 'n'};
ylabels = {'|y_{S1}[n]|', '|y_{S2}[n]|'};
plot_types = {'stem', 'stem'};
colors = {'b', 'r'}; % Azul y Rojo
filename = 'rta_sistemas_ej1p1.pdf';

% Llamada para graficar S1 y S2
plot_signal(data, 2, 1, titles, xlabels, ylabels, plot_types, filename, [3 1 1], colors);

% Configuración para el segundo gráfico (S3 y S4)
data = struct('x', {n, n}, 'y', {y_S3, y_S4});
titles = {'Salida del sistema S3 a la señal del Ejercicio 1', ...
            'Salida del sistema S4 a la señal del Ejercicio 1'};
xlabels = {'n', 'n'};
ylabels = {'|y_{S3}[n]|', '|y_{S4}[n]|'};
plot_types = {'stem', 'stem'};
colors = {'g', 'm'}; % Verde y Magenta
filename = 'rta_sistemas_ej1p2.pdf';

% Llamada para graficar S3 y S4
plot_signal(data, 2, 1, titles, xlabels, ylabels, plot_types, filename, [3 1 1], colors);
