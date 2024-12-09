function wait_for_users(prompt)
  % Función para pausar la ejecución hasta que el usuario presione Enter
  if nargin < 1
      prompt = 'Presione Enter para continuar...';
  end
  input(prompt, 's'); % Esperar entrada del usuario (no almacena valor)
end
