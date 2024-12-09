% Función para el sistema S1: y[n] = 0.5 * x[n] + 0.5 * x[n-1]
function y_S1 = y_S1(x)
    y_S1 = 0.5 * x + 0.5 * [0, x(1:end-1)];
end