clear all; close all; clc;

addpath('./ej1_utils', './utils');

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
data_imp = struct('x', {n, n, n, n}, 'y', {h_S1, h_S2, h_S3, h_S4});
titles_imp = {'Respuesta Impulsional S1', 'Respuesta Impulsional S2', ...
              'Respuesta Impulsional S3', 'Respuesta Impulsional S4'};
xlabels_imp = {'n', 'n', 'n', 'n'};
ylabels_imp = {'|h_{S1}[n]|', '|h_{S2}[n]|', '|h_{S3}[n]|', '|h_{S4}[n]|'};
plot_type_imp = {'stem', 'stem', 'stem', 'stem'};
colors_imp = {'b', 'r', 'g', 'm'}; % Azul, rojo, verde, magenta
filename_imp = 'rta_imp_num.pdf';

% Llamada para graficar respuestas impulsionales
plot_signal(data_imp, 2, 2, titles_imp, xlabels_imp, ylabels_imp, plot_type_imp, filename_imp, colors_imp);

% Configuración de gráficos para respuestas en frecuencia (módulo y fase)
data_mod = struct('x', {s, s, s, s}, ...
                  'y', {abs(H_S1), abs(H_S2), abs(H_S3), abs(H_S4)});
titles_mod = {'Respuesta en Frecuencia S1 - Módulo', ...
              'Respuesta en Frecuencia S2 - Módulo', ...
              'Respuesta en Frecuencia S3 - Módulo', ...
              'Respuesta en Frecuencia S4 - Módulo'};
xlabels_mod = {'s', 's', 's', 's'};
ylabels_mod = {'|H(e^{j 2\pi s})|', '|H(e^{j 2\pi s})|', ...
               '|H(e^{j 2\pi s})|', '|H(e^{j 2\pi s})|'};
plot_type_mod = {'plot', 'plot', 'plot', 'plot'};
colors_mod = {'b', 'r', 'g', 'm'}; % Colores para cada señal
filename_mod = 'rta_frec_mod.pdf';

% Llamada para graficar módulo de las respuestas en frecuencia
plot_signal(data_mod, 2, 2, titles_mod, xlabels_mod, ylabels_mod, plot_type_mod, filename_mod, colors_mod);

data_fase = struct('x', {s, s, s, s}, ...
                   'y', {angle(H_S1), angle(H_S2), angle(H_S3), angle(H_S4)});
titles_fase = {'Respuesta en Frecuencia S1 - Fase', ...
               'Respuesta en Frecuencia S2 - Fase', ...
               'Respuesta en Frecuencia S3 - Fase', ...
               'Respuesta en Frecuencia S4 - Fase'};
xlabels_fase = {'s', 's', 's', 's'};
ylabels_fase = {'angle(H(e^{j 2\pi s}))', 'angle(H(e^{j 2\pi s}))', ...
                'angle(H(e^{j 2\pi s}))', 'angle(H(e^{j 2\pi s}))'};
plot_type_fase = {'plot', 'plot', 'plot', 'plot'};
colors_fase = {'b', 'r', 'g', 'm'}; % Colores para cada señal
filename_fase = 'rta_frec_fase.pdf';

% Llamada para graficar fase de las respuestas en frecuencia
plot_signal(data_fase, 2, 2, titles_fase, xlabels_fase, ylabels_fase, plot_type_fase, filename_fase, colors_fase);
pause;