function plot_signal(data, nrows, ncols, titles, xlabels, ylabels, plot_type, filename, aspect_ratio, colors)
    % plot_signal: Función para graficar señales con opciones de subplot y tipos de gráfico
    % Parámetros:
    % - data: struct con campos 'x' (datos del eje x) y 'y' (datos del eje y).
    % - nrows, ncols: Número de filas y columnas en el subplot.
    % - titles, xlabels, ylabels: Celdas con los títulos y etiquetas de cada gráfico.
    % - plot_type: Celda indicando el tipo de gráfico ('plot', 'stem', etc.) para cada subplot.
    % - filename: Nombre del archivo PDF a guardar.
    % - colors (opcional): Celdas con los colores para cada gráfico.
    % - aspect_ratio (opcional): Vector [ancho alto 1] para personalizar la relación de aspecto.

    % Verificar aspect_ratio
    if nargin < 9 || isempty(aspect_ratio)
        aspect_ratio = [1 1 1]; % Relación de aspecto predeterminada (cuadrada)
    end

    % Verificar colores
    if nargin < 10 || isempty(colors)
        colors = repmat({'b'}, 1, numel(data)); % Color predeterminado: azul
    end

    % Verificar que las entradas tienen tamaños consistentes
    assert( numel(data) == numel(titles) && numel(data) == numel(xlabels) && ...
            numel(data) == numel(ylabels) && numel(data) == numel(plot_type) && ...
            numel(data) == numel(colors), ...
            'El número de elementos en data, titles, xlabels, ylabels, plot_type y colors debe coincidir.');

    % Crear figura
    figure;
    set(gcf, 'Position', [100, 100, 800, 600]); % Tamaño de la figura en pantalla
    set(gcf, 'PaperPosition', [0 0 8 6]); % Tamaño y proporción del papel (en pulgadas)
    set(gcf, 'PaperSize', [8 6]); % Establecer el tamaño del papel para el PDF

    % Graficar cada subplot
    for i = 1:numel(data)
        subplot(nrows, ncols, i);
        hold on;
        
        % Selección de tipo de gráfico
        switch plot_type{i}
            case 'plot'
                plot(data(i).x, data(i).y, 'Color', colors{i}, 'LineWidth', 2);
            case 'stem'
                stem(data(i).x, data(i).y, 'filled', 'Color', colors{i}, 'MarkerFaceColor', colors{i}, 'LineWidth', 2);
            otherwise
                error('Tipo de gráfico no soportado: %s', plot_type{i});
        end
        
        % Aplicar relación de aspecto personalizada
        pbaspect(aspect_ratio);
        
        % Añadir etiquetas y título
        title(titles{i});
        xlabel(xlabels{i});
        ylabel(ylabels{i});
        grid on;
    end

    % Guardar figura como PDF
    if ~isempty(filename)
        print(gcf, filename, '-dpdfcrop','-bestfit');
    end
end
