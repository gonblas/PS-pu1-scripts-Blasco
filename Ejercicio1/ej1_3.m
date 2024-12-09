clear all; close all;
addpath('./ej1_utils', '../utils');

% Señal de entrada: impulso unitario
x = [1, zeros(1, 19)]; % Impulso unitario de longitud 20
n = 0:length(x)-1;     % Índices de la señal

% Respuesta impulsional
h_S1 = y_S1(x);
h_S2 = y_S2(x);
h_S3 = y_S3(x);
h_S4 = y_S4(x);

% Respuesta en frecuencia
[s, H_S1] = calcular_tftd(n, h_S1);
[s, H_S2] = calcular_tftd(n, h_S2);
[s, H_S3] = calcular_tftd(n, h_S3);
[s, H_S4] = calcular_tftd(n, h_S4);

% Configuración de gráficos para respuestas impulsionales
data = struct('x', {n, n}, 'y', {h_S1, h_S2});
titles = {'Respuesta Impulsional S1', 'Respuesta Impulsional S2'};
xlabels = {'n', 'n'};
ylabels = {'|h_{S1}[n]|', '|h_{S2}[n]|'};
plot_type = {'stem', 'stem'};
colors = {'b', 'r'}; % Azul y rojo
filename = 'rta_imp_num_1.pdf';

plot_signal(data, 1, 2, titles, xlabels, ylabels, plot_type, filename, colors);

data = struct('x', {n, n}, 'y', {h_S3, h_S4});
titles = {'Respuesta Impulsional S3', 'Respuesta Impulsional S4'};
xlabels = {'n', 'n'};
ylabels = {'|h_{S3}[n]|', '|h_{S4}[n]|'};
plot_type = {'stem', 'stem'};
colors = {'g', 'm'}; % Verde y magenta
filename = 'rta_imp_num_2.pdf';

% Llamada para graficar respuestas impulsionales
plot_signal(data, 1, 2, titles, xlabels, ylabels, plot_type, filename, colors);

% Configuración de gráficos para respuestas en frecuencia
H_all = {H_S1, H_S2, H_S3, H_S4};
systems = {'S1', 'S2', 'S3', 'S4'};
colors = {'b', 'r', 'g', 'm'};

for i = 1:4
    % Configuración para módulo y fase
    data = struct('x', {s, s}, ...
                        'y', {abs(H_all{i}), angle(H_all{i})});
    titles = {['Respuesta en Frecuencia ', systems{i}, ' - Módulo'], ...
                    ['Respuesta en Frecuencia ', systems{i}, ' - Fase']};
    xlabels = {'s', 's'};
    ylabels = {'|H(e^{j 2\pi s})|', 'angle(H(e^{j 2\pi s}))'};
    plot_type = {'plot', 'plot'};
    colors = {colors{i}, colors{i}};
    filename = ['rta_frec_num', systems{i}, '.pdf'];

    % Llamada para graficar módulo y fase
    plot_signal(data, 1, 2, titles, xlabels, ylabels, plot_type, filename, colors);
end
