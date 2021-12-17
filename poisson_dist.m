function p = poisson_dist(n, lambda)
    p = exp(-lambda)*(lambda^n)/(factorial(n));
end