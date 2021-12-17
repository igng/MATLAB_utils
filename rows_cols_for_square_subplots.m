function [rows, cols] = rows_cols_for_square_subplots(n)
    cols = ceil(sqrt(n));
    rows = floor(n/cols) + (rem(n, cols) ~= 0);
end