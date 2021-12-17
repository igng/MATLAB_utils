function delete_timer_on_cleanup(t)
    % if timer 't' is still running, MATLAB will take care of stopping it
    delete(t);
    clear t;
end