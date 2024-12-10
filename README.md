# IPS-Laboratorio
## Introducción al Procesamiento de Señales - Práctica con Utilitario 1

Esta entrega contiene los archivos codificados para la resolución de la **Práctica con Utilitario 1** de la materia **Introducción al Procesamiento de Señales (IPS)**. El trabajo incluye el uso del software **Octave** para analizar y describir sistemas discretos, en particular de tipo **lineales** e **invariantes en el tiempo** (SLID). A continuación, se detallan los objetivos, requisitos y la estructura del proyecto.

## Estructura de Archivos
- `Ejercicio1/`
  - `ej1_1.m`, `ej1_2.m`, `ej1_3.m`, `ej1_4.m`, `ej1_5.m`: Scripts para los incisos del Ejercicio 1.
  - `ej1_utils/`: Funciones auxiliares para el Ejercicio 1.
    - `calcular_tftd.m`: Función para calcular la TFTD de la señal.
    - `senial.m`: Genera la señal del Ejercicio 1 y sus correspondientes instantes.
    - `y_S1.m`, `y_S2.m`, `y_S3.m`, `y_S4.m`: Funciones para los sistemas S1, S2, S3 y S4.
  - `ej1.m`: Script principal para ejecutar todos los incisos del Ejercicio 1.
- `Ejercicio2/`
  - `ej2_1.m`, `ej2_2.m`, `ej2_3.m`, `ej2_4.m`, `ej2_5.m`: Scripts para los incisos del Ejercicio 2.
  - `ej2_utils/`: Funciones auxiliares para el Ejercicio 2.
    - `ec_canald.m`: Función que implementa el sistema SLID con los ecos.
    - `filtro_una_rama.m`, `filtro_dos_ramas.m`, `filtro_tres_ramas.m`: Funciones del filtro compensador con 1, 2 y 3 rama(s) de retardo.
    - `hcanald.m`: Proporciona la respuesta impulsional del canal discreto del Ejercicio 2.
    - `respuesta_impulsional.m`: Genera la respuesta impulsional del canal.
  - `ej2.m`: Script principal para ejecutar todos los incisos del Ejercicio 2.
- `utils/`: Funciones generales de utilidad.
  - `plot_signal.m`: Función para graficar señales con opciones de subplot y tipos de gráfico.
  - `wait_for_users.m`: Función para pausar la ejecución hasta que el usuario presione Enter.
- `main.m`: Script principal para ejecutar las soluciones de cada ejercicio.

## Ejecución del Proyecto

Para ejecutar el proyecto, sigue los siguientes pasos:

1. Ejecuta el script principal `main.m` para correr todas las soluciones de los ejercicios. Puedes hacerlo escribiendo en la consola de Octave:
    ```octave
    main
    ```

2. Para ejecutar scripts individuales de cada ejercicio, navega a la carpeta correspondiente (`Ejercicio1` o `Ejercicio2`) y ejecuta el script deseado. Por ejemplo, para ejecutar el script `ej1_1.m` del Ejercicio 1, escribe en la consola de Octave:
    ```
    cd Ejercicio1
    ej1_1
    ```

> **Recomendación:** Ejecutar los programas desde la consola de Octave, ya que la ejecución es más eficiente.

___
### Integrantes del grupo:
- Romero Mateo          - 03261/0
- Blasco Gonzalo Gabino - 03282/6
