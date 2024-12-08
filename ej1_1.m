clear all; close all; clc;

% Número de alumno utilizado
num_alumno = 03282;

% Obtener la señal
[n, x] = senial(num_alumno);

% Graficar la señal generada usando la función utils.plot_signal (stem)
data = struct('x', {n}, 'y', {x});
titles = {'Señal generada'};
xlabels = {'n'};
ylabels = {'x[n]'};
plot_type = {'stem'};
filename = 'senial-ej1.pdf';
utils.plot_signal(data, 1, 1, titles, xlabels, ylabels, plot_type, filename);

% Calcular la TFTD de la señal generada
[s, X] = ej1_utils.calcular_tftd(n, x);

% Graficar el módulo de la TFTD usando utils.plot_signal (plot)
data = struct('x', {s}, 'y', {abs(X)});
titles = {'Módulo de la TFTD de la señal generada'};
xlabels = {'s'};
ylabels = {'|X(e^{j 2 \pi s})|'};
plot_type = {'plot'};
filename = 'senial-ej1-TFTD-MOD.pdf';
utils.plot_signal(data, 1, 1, titles, xlabels, ylabels, plot_type, filename);

% Graficar la fase de la TFTD usando utils.plot_signal (plot)
data = struct('x', {s}, 'y', {angle(X)});
titles = {'Fase de la TFTD de la señal generada'};
xlabels = {'s'};
ylabels = {'Fase [rad]'};
plot_type = {'plot'};
filename = 'senial-ej1-TFTD-FASE.pdf';
utils.plot_signal(data, 1, 1, titles, xlabels, ylabels, plot_type, filename);

pause;

