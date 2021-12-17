function M = chain(N)
    M = diag(ones(1,N-1),1) + diag(ones(1,N-1),-1);
end