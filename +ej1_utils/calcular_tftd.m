% Función para calcular la TFTD de la señal
function [s, X] = calcular_tftd(n, x)
    s = linspace(-0.4999, 0.4999, 512);
    X = zeros(size(s));

    for k = 1:length(s)
        X(k) = sum(x .* exp(-1i * 2 * pi * s(k) * n));
    end
end