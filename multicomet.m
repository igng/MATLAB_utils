function multicomet(Xs, Ys, comet_len, pers_flag)
    if (size(Xs) ~= size(Ys))
        error("Xs and Ys differ in size");
    end
    min_x = min(min(Xs));
    max_x = max(max(Xs));
    min_y = min(min(Ys));
    max_y = max(max(Ys));
    limits = [min_x max_x min_y max_y];
    [samples, agents] = size(Xs);
    for s = 1:samples-comet_len-1
        if (pers_flag)
            tail = 1;
            neck = s;
        else
            tail = s;
            neck = s+comet_len;
        end
        body = tail:neck;
        head = neck;
        clf; hold on; axis(limits);
        for a = 1:agents
            color = a/(agents+1)*[1, 1, 1];
            plot(Xs(body, a), Ys(body, a), 'Color', color);
            plot(Xs(head, a), Ys(head, a), 'Color', color, 'MarkerSize', 5, 'Marker', 'o');
        end
        drawnow
    end
end