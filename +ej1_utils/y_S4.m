% Función para el sistema S4
function y_S4 = y_S4(x)
    % Calcular el primer término (1/4 * x[n])
    y_S4 = (1/4) * x;

    % Sumar los términos (-1)^k * (3 / 2^(k+2)) * x[n-k] para k >= 1
    for k = 1:length(x)-1
        y_S4 = y_S4 + (-1)^k * (3 / 2^(k+2)) * [zeros(1, k), x(1:end-k)];
    end
end