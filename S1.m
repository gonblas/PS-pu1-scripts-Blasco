% Sistemas del Ejercicio 1

function y = S1(x)
    % y[n] = 0.5 * x[n] + 0.5 * x[n-1]
    y = 0.5 * x + 0.5 * [0, x(1:end-1)];
end
