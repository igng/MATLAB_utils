function out_data_from_sim = simulate_model_with_status_bar(model_name, sim_time)
    fprintf("Simulating model ""%s"" (on cold start, this may take some time)\n", model_name);
    fprintf("\tINFO: don't worry if the simulation is stuck at 0%%, just wait\n\n");
    % Load the simulink model
    load_system(model_name);

    % Set the simulation time sim_time
    set_param(model_name, 'StopTime', num2str(sim_time));
    % Start a timer to update the status bar
    t = timer;
    t.Period = 2;
    t.ExecutionMode = 'fixedRate';
    t.TimerFcn = @(my_timer_obj, this_event) status_bar(model_name, sim_time);
    % Set the function to call when the timer expires
    finishup = onCleanup(@() delete_timer_on_cleanup(t));
 
    % Print the initial status bar and start the timer
    fprintf("%s\n", repmat('#', 1, 62));
    start(t);
    
    % Simulate the model
    out_data_from_sim = sim(model_name);
    done = repmat('=', 1, 20);
    full_string = sprintf("Simulation status: %s | %d%%%%\t[%5.2f/%5.2f]\n", ...
        done, 100*sim_time/sim_time, sim_time, sim_time);
    fprintf(full_string);
    fprintf("%s\n\n", repmat('#', 1, 62));
    stop(t); delete(t); clear t;
end