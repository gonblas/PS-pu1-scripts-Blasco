##clear all; close all; clc;
##
##% Función del filtro compensador
##function y = filtro_compensador(x, beta1, beta2, n1, n2)
##    % Inicializar la salida con los mismos valores que la entrada
##    y = x;
##
##    % Aplicar el primer retardo
##    if n1 > 0
##        y(n1+1:end) = y(n1+1:end) - beta1 * x(1:end-n1);
##    end
##
##    % Aplicar el segundo retardo
##    if n2 > 0
##        y(n2+1:end) = y(n2+1:end) - beta2 * x(1:end-n2);
##    end
##end
##
##% Definir la entrada x[n] (impulso en n=0, n=8820 y n=17640)
##x = zeros(1, 60000);
##x(1) = 1;               % Impulso en n=0
##x(8821) = 0.45;         % Impulso desplazado en n=8820
##x(17641) = 0.2025;      % Impulso desplazado en n=17640
##
##% Aplicar el filtro compensador
##y = filtro_compensador(x, 0.45, 0.2025, 8820, 17640);
##
##% Graficar la señal de salida y[n]
##figure;
##stem(0:59999, y, 'filled');
##xlabel('n');
##ylabel('y[n]');
##title('Salida del sistema y[n]');
##grid on;

clear all; close all; clc;

% Función del filtro compensador con 3 retardos
function y = filtro_compensador_3(x, beta1, beta2, beta3, n1, n2, n3)
    % Inicializar la salida con los mismos valores que la entrada
    y = x;

    % Aplicar el primer retardo
    if n1 > 0
        y(n1+1:end) = y(n1+1:end) - beta1 * x(1:end-n1);
    end

    % Aplicar el segundo retardo
    if n2 > 0
        y(n2+1:end) = y(n2+1:end) - beta2 * x(1:end-n2);
    end

    % Aplicar el tercer retardo
    if n3 > 0
        y(n3+1:end) = y(n3+1:end) - beta3 * x(1:end-n3);
    end
end

% Definir la entrada x[n] (impulso en n=0, n=8820, n=17640, y un tercer eco)
x = zeros(1, 60000);
x(1) = 1;                % Impulso en n=0
x(8821) = 0.45;          % Impulso desplazado en n=8820
x(17641) = 0.2025;       % Impulso desplazado en n=17640

% Aplicar el filtro compensador con 3 retardos
y = filtro_compensador_3(x, 0.45, 0.2025, -0.18225, 8820, 17640, 26460);

% Graficar la señal de salida y[n]
figure;
stem(0:59999, y, 'filled');
xlabel('n');
ylabel('y[n]');
title('Salida del sistema y[n] con 3 retardos');
grid on;


