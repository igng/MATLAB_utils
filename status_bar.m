function status_bar(model_name, sim_time)
    curr_time = get_param(model_name, 'SimulationTime');
    
    done = repmat('=', 1, ceil(curr_time*20/sim_time) - 1);
    todo = repmat('-', 1, 20 - length(done));
    bar = strcat(done, todo);
    full_string = sprintf("Simulation status: %s | %d%%%%\t[%5.2f/%5.2f]\n", ...
        bar, ceil(100*curr_time/sim_time), curr_time, sim_time);
    fprintf(full_string);
end