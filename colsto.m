function M = colsto(rows, cols)
    if ~(exist('rows', 'var') || exist('cols', 'var'))
        rows = 1;
    end
    if ~exist('cols','var')
        cols = rows;
    end
    M = rowsto(rows, cols).';
end