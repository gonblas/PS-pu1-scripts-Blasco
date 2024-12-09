clear all; close all;
addpath('./ej2_utils', '../utils');

% Número de alumno
num_alumno = 03282;

% Llamar a la función hcanald para obtener la respuesta impulsional
[n, h] = hcanald(num_alumno);

% Leer el archivo de audio
[x, fs] = audioread('../audio.wav');

% Calcular la respuesta con ec_canald
y = ec_canald(x);

% Estructura para los gráficos (Señal de Entrada y Señal de Salida)
data = struct('x', {1:length(x), 1:length(y)}, 'y', {x, y});
titles = {'Señal de Entrada', 'Señal de Salida'};
xlabels = {'t', 't'};
ylabels = {'x[n]', 'y[n]'};
plot_type = {'plot', 'plot'};
filename = 'entrada_vs_salida.pdf';
colors = {'r', 'b'};  % Rojo para entrada, azul para salida

% Graficar las señales de entrada y salida en una sola figura utilizando plot_signal
plot_signal(data, 2, 1, titles, xlabels, ylabels, plot_type, filename, colors);

pause(0.1); % Pausa para que se alcance a graficar antes de reproducir los sonidos

% Reproducir la señal de salida
sound(y, fs);

