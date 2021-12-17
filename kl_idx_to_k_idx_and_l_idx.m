function [kp_idx, ki_idx, kd_idx, l_idx] = kl_idx_to_k_idx_and_l_idx(kl_idx, kp_len, ki_len, kd_len)
    l_idx = floor((kl_idx-1)/(kp_len*ki_len*kd_len)) + 1;
    kd_idx
    kp_idx = mod1(ki_idx, kp_len);
end

%%
function [a_idx, b_idx, c_idx] = idx_to_abc(idx, a_len, b_len, ~)
    c_idx = floor((idx-1)/(a_len*b_len)) + 1;
    b_idx = floor((idx - (c_idx-1)*(a_len*b_len) - 1)/a_len) + 1;
    a_idx = mod1(idx, a_len);
end