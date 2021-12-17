function r = true_rand(rows, cols)
    if ~(exist('rows', 'var') || exist('cols', 'var'))
        rows = 1;
    end
    if ~exist('cols','var')
        cols = rows;
    end
    r = (rand(rows, cols)-0.5)*2;
end