function G = polygon_formation(n, self_loop)
    if ~exist('self_loop','var')
        self_loop = false;
    end
    if (n < 1)
        error("Invalid number of agents: %d\n", n);
    end
    
    G = zeros(n) + self_loop*eye(n);
    if (n > 1)
        for i = 1:n
            prev = 1 + mod(n + i - 2, n);
            next = 1 + mod(n + i, n);
            G(i, prev) = 1;
            G(i, next) = 1;
        end
    end
end