clear all; close all; clc;
ds = 0.001;            % Paso entre frecuencias
s = -0.5:ds:0.5;       % Rango de frecuencias de -1/2 a 1/2

% Señal de entrada: Señal del ejercicio 1
num_alumno = 03282;
[n, x] = senial(num_alumno);

% Salidas
y_S1 = ej1_utils.y_S1(x);
y_S2 = ej1_utils.y_S2(x);
y_S3 = ej1_utils.y_S3(x);
y_S4 = ej1_utils.y_S4(x);

H_S1 = ej1_utils.calcular_respuesta_frecuencia(y_S1, s, n);
H_S2 = ej1_utils.calcular_respuesta_frecuencia(y_S2, s, n);
H_S3 = ej1_utils.calcular_respuesta_frecuencia(y_S3, s, n);
H_S4 = ej1_utils.calcular_respuesta_frecuencia(y_S4, s, n);

% Gráfico para S1
data_S1 = struct('x', {s, s}, 'y', {abs(H_S1), angle(H_S1)});
titles_S1 = {'Respuesta en Frecuencia para S1 - Módulo', 'Respuesta en Frecuencia para S1 - Fase'};
xlabels_S1 = {'s', 's'};
ylabels_S1 = {'|H(e^{j 2 \pi s})|', '\angle H(e^{j 2 \pi s})'};
plot_type_S1 = {'plot', 'plot'};
colors_S1 = {'b', 'b'}; % Azul
filename_S1 = 'TFTD_sistemas_S1.pdf';
utils.plot_signal(data_S1, 1, 2, titles_S1, xlabels_S1, ylabels_S1, plot_type_S1, filename_S1, colors_S1);

% Gráfico para S2
data_S2 = struct('x', {s, s}, 'y', {abs(H_S2), angle(H_S2)});
titles_S2 = {'Respuesta en Frecuencia para S2 - Módulo', 'Respuesta en Frecuencia para S2 - Fase'};
xlabels_S2 = {'s', 's'};
ylabels_S2 = {'|H(e^{j 2 \pi s})|', '\angle H(e^{j 2 \pi s})'};
plot_type_S2 = {'plot', 'plot'};
colors_S2 = {'r', 'r'}; % Rojo
filename_S2 = 'TFTD_sistemas_S2.pdf';
utils.plot_signal(data_S2, 1, 2, titles_S2, xlabels_S2, ylabels_S2, plot_type_S2, filename_S2, colors_S2);

% Gráfico para S3
data_S3 = struct('x', {s, s}, 'y', {abs(H_S3), angle(H_S3)});
titles_S3 = {'Respuesta en Frecuencia para S3 - Módulo', 'Respuesta en Frecuencia para S3 - Fase'};
xlabels_S3 = {'s', 's'};
ylabels_S3 = {'|H(e^{j 2 \pi s})|', '\angle H(e^{j 2 \pi s})'};
plot_type_S3 = {'plot', 'plot'};
colors_S3 = {'g', 'g'}; % Verde
filename_S3 = 'TFTD_sistemas_S3.pdf';
utils.plot_signal(data_S3, 1, 2, titles_S3, xlabels_S3, ylabels_S3, plot_type_S3, filename_S3, colors_S3);

% Gráfico para S4
data_S4 = struct('x', {s, s}, 'y', {abs(H_S4), angle(H_S4)});
titles_S4 = {'Respuesta en Frecuencia para S4 - Módulo', 'Respuesta en Frecuencia para S4 - Fase'};
xlabels_S4 = {'s', 's'};
ylabels_S4 = {'|H(e^{j 2 \pi s})|', '\angle H(e^{j 2 \pi s})'};
plot_type_S4 = {'plot', 'plot'};
colors_S4 = {'m', 'm'}; % Magenta
filename_S4 = 'TFTD_sistemas_S4.pdf';
utils.plot_signal(data_S4, 1, 2, titles_S4, xlabels_S4, ylabels_S4, plot_type_S4, filename_S4, colors_S4);

pause;