function out = is_positive_definite(M)
    [~, p] = chol(M);
    out = ~(isempty(M) || p); 
end