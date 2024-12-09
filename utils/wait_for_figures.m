% Función para pausar la ejecución hasta que se cierren todas las figuras
function wait_for_figures()
  while ~isempty(findobj('Type', 'figure'))
    pause(0.1); % Esperar 0.1 segundos antes de verificar nuevamente
  end
end
