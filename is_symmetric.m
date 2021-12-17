function ret = is_symmetric(M, tol)

    if (nargin < 2)
        tol = 1e-9;
    else
        tol = abs(tol);
    end
    
    [rows, cols] = size(M);
    if (rows ~= cols)
        fprintf(2, "is_symmetric | ERROR: M is not a square matrix\n");
        ret = false;
        return
    end
    
    norm_err = norm(M - M.');
    if (norm_err > tol)
        ret = false;
        return
    end
    
    ret = true;
end