function M = symmetrize(A)
    if (size(A, 1) ~= size(A, 2))
        error("M is not square");
    end
    
    M = triu(A, 0) + triu(A, 1).';
end