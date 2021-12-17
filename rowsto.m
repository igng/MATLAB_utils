function M = rowsto(rows, cols)
    if ~(exist('rows', 'var') || exist('cols', 'var'))
        rows = 1;
    end
    if ~exist('cols','var')
        cols = rows;
    end
    
    M = rand(rows, cols);
    M = M./(sum(M.').');
end