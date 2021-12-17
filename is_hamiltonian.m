function bool = is_hamiltonian(A)
    n = size(A,1);
    if (mod(n,2))
        bool = false;
        return;
    end
    n = n/2;
    I = eye(n);
    J = [zeros(n), I; -I, zeros(n)];
    JA = J*A
    AJ = transpose(JA)
    bool = isequal(JA, AJ);
end