% respuesta_en_frecuencia.m
function H_w = ec_S3(omega)
    a1 = 1/4;
    a2 = 1/4;
    b1 = 1/2;
    % Calcula la respuesta en frecuencia H(e^(jω)) con los parámetros dados
    H_w = (a1 + a2 * exp(-1j * omega)) ./ (1 - b1 * exp(-1j * omega));
end

