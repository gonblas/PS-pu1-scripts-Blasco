clear all;close all; clc;

% Señal de entrada: Señal del ejercicio 1
num_alumno = 03282;
[n, x] = senial(num_alumno);

% Salidas
y_S1 = ej1_utils.y_S1(x);
y_S2 = ej1_utils.y_S2(x);
y_S3 = ej1_utils.y_S3(x);
y_S4 = ej1_utils.y_S4(x);


% Graficar la magnitud de la respuesta impulsional
% Sistema S1
data_S1 = struct('x', {n}, 'y', {y_S1});
title_S1 = {'Salida del sistema S1 a la señal del Ejercicio 1'};
xlabel_S1 = {'n'};
ylabel_S1 = {'|y_{S1}[n]|'};
plot_type_S1 = {'stem'};
filename_S1 = 'rta_s1.pdf';
color_S1 = {'b'}; % Azul
utils.plot_signal(data_S1, 1, 1, title_S1, xlabel_S1, ylabel_S1, plot_type_S1, filename_S1, color_S1);

% Sistema S2
data_S2 = struct('x', {n}, 'y', {y_S2});
title_S2 = {'Salida del sistema S2 a la señal del Ejercicio 1'};
xlabel_S2 = {'n'};
ylabel_S2 = {'|y_{S2}[n]|'};
plot_type_S2 = {'stem'};
filename_S2 = 'rta_s2.pdf';
color_S2 = {'r'}; % Rojo
utils.plot_signal(data_S2, 1, 1, title_S2, xlabel_S2, ylabel_S2, plot_type_S2, filename_S2, color_S2);

% Sistema S3
data_S3 = struct('x', {n}, 'y', {y_S3});
title_S3 = {'Salida del sistema S3 a la señal del Ejercicio 1'};
xlabel_S3 = {'n'};
ylabel_S3 = {'|y_{S3}[n]|'};
plot_type_S3 = {'stem'};
filename_S3 = 'rta_s3.pdf';
color_S3 = {'g'}; % Verde
utils.plot_signal(data_S3, 1, 1, title_S3, xlabel_S3, ylabel_S3, plot_type_S3, filename_S3, color_S3);

% Sistema S4
data_S4 = struct('x', {n}, 'y', {y_S4});
title_S4 = {'Salida del sistema S4 a la señal del Ejercicio 1'};
xlabel_S4 = {'n'};
ylabel_S4 = {'|y_{S4}[n]|'};
plot_type_S4 = {'stem'};
filename_S4 = 'rta_s4.pdf';
color_S4 = {'m'}; % Magenta
utils.plot_signal(data_S4, 1, 1, title_S4, xlabel_S4, ylabel_S4, plot_type_S4, filename_S4, color_S4);


pause;
