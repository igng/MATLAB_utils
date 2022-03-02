function [rows, cols] = rows_cols_for_square_subplots(n)
    rows = ceil(sqrt(n));
    cols = floor(n/rows) + (rem(n, rows) ~= 0);
end