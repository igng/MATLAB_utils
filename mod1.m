function idx = mod1(num, base)
    idx = max(~mod(num, base)*base, mod(num, base));
end