function y = filtro_una_rama(x) 
    % Inicializar la salida con los mismos valores que la entrada
    y = x;

    beta1=0.45;
    n1=8820;

    % Aplicar el primer retardo
    y(n1+1:end) = y(n1+1:end) - beta1 * x(1:end-n1);
end;