% Función para el sistema S2: y[n] = (1/2) * x[n] - (1/2) * x[n-1]
function y_S2 = y_S2(x)
    y_S2 = 0.5 * x - 0.5 * [0, x(1:end-1)];
end