% Función del filtro compensador con 2 retardos
function y = filtro_dos_ramas(x)
    % Inicializar la salida con los mismos valores que la entrada
    y = x;

    beta1=0.45;
    beta2=-0.091125;
    n1=8820;
    n2=26460;

    % Aplicar el primer retardo
    y(n1+1:end) = y(n1+1:end) - beta1 * x(1:end-n1);

    % Aplicar el segundo retardo
    y(n2+1:end) = y(n2+1:end) - beta2 * x(1:end-n2);
end