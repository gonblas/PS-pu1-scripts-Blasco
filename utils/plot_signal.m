
function plot_signal(data, nrows, ncols, titles, xlabels, ylabels, plot_type, filename, colors)
    % plot_signal: Función para graficar señales con opciones de subplot y tipos de gráfico
    % Parámetros:
    % - data: struct con campos 'x' (datos del eje x) y 'y' (datos del eje y).
    % - nrows, ncols: Número de filas y columnas en el subplot.
    % - titles, xlabels, ylabels: Celdas con los títulos y etiquetas de cada gráfico.
    % - plot_type: Celda indicando el tipo de gráfico ('plot', 'stem', etc.) para cada subplot.
    % - filename: Nombre del archivo PDF a guardar.
    % - colors (opcional): Celdas con los colores para cada gráfico.

    % Verificar colores
    if nargin < 9 || isempty(colors)
        colors = repmat({'b'}, 1, numel(data)); % Color predeterminado: azul
    end

    % Verificar que las entradas tienen tamaños consistentes
    assert(numel(data) == numel(titles) && numel(data) == numel(xlabels) && ...
           numel(data) == numel(ylabels) && numel(data) == numel(plot_type) && ...
           numel(data) == numel(colors), ...
           'El número de elementos en data, titles, xlabels, ylabels, plot_type y colors debe coincidir.');

    % Crear figura
    figure;
    set(gcf, 'Position', [100, 100, 800, 600]); % Ajustar tamaño de la figura

    % Graficar cada subplot
    for i = 1:numel(data)
        subplot(nrows, ncols, i);
        hold on;
        
        % Selección de tipo de gráfico
        switch plot_type{i}
            case 'plot'
                plot(data(i).x, data(i).y, 'Color', colors{i}, 'LineWidth', 2);
            case 'stem'
                stem(data(i).x, data(i).y, 'filled', 'Color', colors{i}, 'MarkerFaceColor', colors{i}, 'LineWidth', 2)
            otherwise
                error('Tipo de gráfico no soportado: %s', plot_type{i});
        end
        
        % Añadir etiquetas y título
        title(titles{i});
        xlabel(xlabels{i});
        ylabel(ylabels{i});
        grid on;
    end

    % Guardar figura como PDF
    % if ~isempty(filename)
    %     print(gcf, '-dpdf', filename, '-painters');
    % end
end
