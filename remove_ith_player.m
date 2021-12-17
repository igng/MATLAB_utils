function WW = remove_ith_player(W, i)
    WW = [  W(1:i-1, 1:i-1), W(1:i-1, i+1:end);
            W(i+1:end, 1:i-1), W(i+1:end, i+1:end)];
end