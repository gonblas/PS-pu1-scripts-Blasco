clear all;close all; clc;

addpath('./+ej2_utils', './+utils');

% Número de alumno
num_alumno = 03282;

% Llamar a la función hcanald para obtener la respuesta impulsional
[n, h] = hcanald(num_alumno);

% Leer el archivo de audio
[x, fs] = audioread('audio.wav');
% sound(x, fs); % Si deseas escuchar el sonido original

% Llamar a la función ec_canald para procesar la señal de audio
y = ec_canald(x);

% Aplicar el sistema dado a la señal y
N = length(y); % Longitud de la señal y
y_salida_1 = filtro_compensador_2(y, 0.45, 0.2025, 8820, 17640); % Salida del sistema al pasar por el filtro de 2 retardos
y_salida_2 = filtro_compensador_3(y, 0.45, 0.2025, -0.18225, 8820, 17640, 26460); % Salida del sistema al pasar

% Graficar la señal de salida para el filtro de 2 retardos y 3 retardos
data = struct('x', {1:length(x), 1:length(y), 1:length(y_salida_1), 1:length(y_salida_2)}, 'y', {x, y, y_salida_1, y_salida_2});
titles = {'Señal de Entrada x[n]', 'Señal y[n] después de ec\_canald', 'Señal de Salida y[n] después del filtro con 2 retardos', ...
    'Señal de Salida y[n] después del filtro con 3 retardos'};
xlabels = {'Muestras', 'Muestras', 'Muestras', 'Muestras'};
ylabels = {'Amplitud', 'Amplitud', 'Amplitud', 'Amplitud'};
plot_type = {'plot', 'plot', 'plot', 'plot'};
filename = 'entrada_salida_sistema.pdf';
colors = {'r', 'b', 'g', 'm'};  % Rojo para entrada, azul para y, verde para salida
plot_signal(data, 4, 1, titles, xlabels, ylabels, plot_type, filename, colors);

pause;