% Función para calcular la TFTD de la señal
function [s, X] = calcular_tftd(n, x)
    ds = 0.001;
    s = -0.5:ds:0.5; % Rango de frecuencias normalizadas de interés
    X = zeros(size(s));

    for k = 1:length(s)
        X(k) = sum(x .* exp(-1i * 2 * pi * s(k) * n));
    end
end