% Función que implementa el sistema SLID con los ecos
function y = ec_canald(x)
    N = length(x);
    y = zeros(1, N);
    for n = 1:N
        y(n) = x(n);

        if n > 8820
            y(n) = y(n) + 0.45 * x(n - 8820);
        end

        if n > 17640
            y(n) = y(n) + 0.2025 * x(n - 17640);
        end
    end
end

