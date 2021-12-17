function blks = blks_from_blkdiag(A, blk_rows, blk_cols)
    r = size(A, 1);
    switch (nargin)
        case 1
            blk_rows = r;
            blk_cols = r;
        case 2
            blk_cols = blk_rows;
    end
    n_blks = r/blk_rows;
    blks = zeros(blk_rows*n_blks, blk_cols);
    for i = 1:n_blks
        r = blk_rows*(i-1)+1:blk_rows*i;
        c = blk_cols*(i-1)+1:blk_cols*i;
        blks(r, :) = A(r, c);
    end
end