function [] = draw_graph(A)
    G = graph(A);
    figure(); clf; hold on;
    plot(G, 'LineWidth', 2);
    grid on; box on;
    p = gca;
    p.GridAlpha = 0.3;
    p.LineWidth = 1;
end