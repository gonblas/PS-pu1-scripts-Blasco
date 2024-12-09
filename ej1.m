% main.m: Script principal para ejecutar todos los archivos
clear;
clc;
addpath('./Ejercicio 1');
addpath('./Ejercicio 1/ej1_utils', './utils');
disp('Ejecutando los scripts del Ejercicio 1');

% Ejecutar los scripts de cada inciso
disp('Ejecutando Inciso 1:');
run('ej1_1.m');
wait_for_figures(); % Esperar a que se cierren las figuras

disp('Ejecutando Inciso 2:');
run('ej1_2.m');
wait_for_figures();

disp('Ejecutando Inciso 3:');
run('ej1_3.m');
wait_for_figures();

disp('Ejecutando Inciso 4:');
run('ej1_4.m');
wait_for_figures();

disp('Ejecutando Inciso 5:');
run('ej1_5.m');
wait_for_figures();

% Finalizar ejecución
disp('Todos los scripts han sido ejecutados.');
