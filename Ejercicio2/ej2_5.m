clear all; close all;
addpath('./ej2_utils', '../utils');

% Número de alumno
num_alumno = 03282;

% Llamar a la función hcanald para obtener la respuesta impulsional
[n, h] = hcanald(num_alumno);

% Leer el archivo de audio
[x, fs] = audioread('../audio.wav');
% sound(x, fs); % Si deseas escuchar el sonido original

% Llamar a la función ec_canald para procesar la señal de audio
y = ec_canald(x);

% Aplicar el sistema dado a la señal y
N = length(y); % Longitud de la señal y
y_salida_2 = filtro_dos_ramas(y); % Salida del sistema al pasar por el filtro de 2 retardos
y_salida_3 = filtro_tres_ramas(y); % Salida del sistema al pasar

% Graficar la señal de salida para el filtro de 2 retardos y 3 retardos
% Primer conjunto de gráficos: Entrada x[n] y señal y[n]
data1 = struct('x', {1:length(x), 1:length(y)}, 'y', {x, y});
titles1 = {'Señal de Entrada x[n]', 'Señal y[n] después del canal'};
xlabels1 = {'t', 't'};
ylabels1 = {'Amplitud', 'Amplitud'};
plot_type1 = {'plot', 'plot'};
filename1 = 'entrada_salida_parte1.pdf';
colors1 = {'r', 'b'};  % Rojo para entrada, azul para y
plot_signal(data1, 2, 1, titles1, xlabels1, ylabels1, plot_type1, filename1, colors1);

% Segundo conjunto de gráficos: Salidas con 2 y 3 retardos
data2 = struct('x', {1:length(y_salida_2), 1:length(y_salida_3)}, 'y', {y_salida_2, y_salida_3});
titles2 = {'Señal de Salida y[n] después del filtro con 2 retardos', ...
    'Señal de Salida y[n] después del filtro con 3 retardos'};
xlabels2 = {'t', 't'};
ylabels2 = {'Amplitud', 'Amplitud'};
plot_type2 = {'plot', 'plot'};
filename2 = 'entrada_salida_parte2.pdf';
colors2 = {'g', 'm'};  % Verde para salida 2, magenta para salida 3
plot_signal(data2, 2, 1, titles2, xlabels2, ylabels2, plot_type2, filename2, colors2);

pause(0.1); % Pausa para que se alcance a graficar antes de reproducir los sonidos

sound(x, fs);
sound(y_salida_2, fs);
sound(y_salida_3, fs);
