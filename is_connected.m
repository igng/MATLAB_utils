function ret_val = is_connected(A)
    G = graph(A);
    c_comp = conncomp(G);
    ret_val = (c_comp == ones(1,size(A,1)));
end