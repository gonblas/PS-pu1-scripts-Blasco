% Función del filtro compensador con 3 retardos
function y = filtro_tres_ramas(x)
    % Inicializar la salida con los mismos valores que la entrada
    y = x;

    beta1=0.45;
    beta2=-0.091125;
    beta3=0.04100625;
    n1=8820;
    n2=26460;
    n3=35280;

    % Aplicar el primer retardo
    y(n1+1:end) = y(n1+1:end) - beta1 * x(1:end-n1);

    % Aplicar el segundo retardo
    y(n2+1:end) = y(n2+1:end) - beta2 * x(1:end-n2);

    % Aplicar el tercer retardo
    y(n3+1:end) = y(n3+1:end) - beta3 * x(1:end-n3);
end
