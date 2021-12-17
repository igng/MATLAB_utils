function L = laplacian(M)
    L = M - diag(sum(M));
end