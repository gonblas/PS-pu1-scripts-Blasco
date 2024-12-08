% Función del filtro compensador con 2 retardos
function y = filtro_compensador_2(x, beta1, beta2, n1, n2)
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
end