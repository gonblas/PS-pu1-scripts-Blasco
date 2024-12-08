function x = respuesta_impulsional()
  % Definir la entrada x[n] (impulso en n=0, n=8820, n=17640)
  x = zeros(1, 60000);
  x(1) = 1;               % Impulso en n=0
  x(8821) = 0.45;         % Impulso desplazado en n=8820
  x(17641) = 0.2025;      % Impulso desplazado en n=17640
end;