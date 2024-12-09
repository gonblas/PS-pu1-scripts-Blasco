% ej1.m: Script para ejecutar todos los archivos Ejercicio 1
fprintf('\n~~~~~~~~~~ Ejecutando los scripts del Ejercicio 1 ~~~~~~~~~~\n');

fprintf('\nEjecutando Inciso 1:\n');
run('ej1_1.m');
wait_for_users();

fprintf('\nEjecutando Inciso 2:\n');
run('ej1_2.m');
wait_for_users();

fprintf('\nEjecutando Inciso 3:\n');
run('ej1_3.m');
wait_for_users();

fprintf('\nEjecutando Inciso 4:\n');
run('ej1_4.m');
wait_for_users();

fprintf('\nEjecutando Inciso 5:\n');
run('ej1_5.m');
wait_for_users();

fprintf('\n~~~~~~~~~~ Todos los scripts del ejercicio 1 han sido ejecutados. ~~~~~~~~~~\n');
rmpath('./ej1_utils');

clear all;
