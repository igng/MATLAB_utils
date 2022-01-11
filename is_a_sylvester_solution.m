function [bool, norm_val] = is_a_sylvester_solution(A, B, S, PI, Gamma, tol)
    norm_val = norm(PI*S - (A*PI + B*Gamma));
    bool = (norm_val < tol);
end