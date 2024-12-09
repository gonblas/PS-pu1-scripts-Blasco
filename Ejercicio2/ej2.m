% ej2.m: Script para ejecutar todos los archivos del Ejercicio 2
fprintf('\n~~~~~~~~~~ Ejecutando los scripts del Ejercicio 2 ~~~~~~~~~~\n');

fprintf('\nEjecutando Inciso 1:\n');
run('ej2_1.m');
wait_for_users();

fprintf('\nEjecutando Inciso 2:\n');
run('ej2_2.m');
wait_for_users();

fprintf('\nEjecutando Inciso 3:\n');
run('ej2_3.m');
wait_for_users();

fprintf('\nEjecutando Inciso 4:\n');
run('ej2_4.m');
wait_for_users();

fprintf('\nEjecutando Inciso 5:\n');
run('ej2_5.m');
wait_for_users();

fprintf('\n~~~~~~~~~~ Todos los scripts del ejercicio 2 han sido ejecutados. ~~~~~~~~~~\n');
rmpath('./ej2_utils');

clear all;
