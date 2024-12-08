function H = calcular_respuesta_frecuencia(h, s, n)
    % Crear un vector de ceros para la salida
    H = zeros(size(s));

    % Calcular la suma para cada valor de s
    for k = 1:length(s)
        H(k) = sum(h .* exp(-1i * 2 * pi * s(k) * n));
    end
end