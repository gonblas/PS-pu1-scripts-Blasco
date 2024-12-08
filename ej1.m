num_dato=03282
[n, x] = senial(num_dato); % Generar la señal

% Graficar la señal
utils.plot_signal(n, x, 'n', 'x[n]', ['Gráfico de la señal del dato ', num2str(num_dato)]);

% Calcular la TFTD
[s, X] = calcular_tftd(n, x);

% Graficar la TFTD en módulo y fase
utils.plot_signal(s, abs(X), 's', '|X(e^{j2\pi s})|', 'Módulo de la TFTD');
utils.plot_signal(s, angle(X), 's', 'Fase [rad]', 'Fase de la TFTD');
