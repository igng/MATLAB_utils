function new_figure(f)
    if (nargin < 1)
        figure();
    else
        figure(f);
    end
    
    clf; grid on; box on; hold on;
end