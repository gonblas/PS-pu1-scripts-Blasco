% Función para el sistema S3
function y_S3 = y_S3(x)
    % Inicializar la salida y_S3 con el primer término (1/4 * x[n])
    y_S3 = (1/4) * x;

    % Sumar los términos de la forma (3 / 2^(k+2)) * x[n-k] para k >= 1
    for k = 1:length(x)-1
        y_S3 = y_S3 + (3 / 2^(k+2)) * [zeros(1, k), x(1:end-k)];
    end
end