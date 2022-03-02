function [] = from_template(script_name)
    if (script_name{1}(end-1:end) == ".m")
        filename = script_name{1}(1:end-2);
        copyfile("~/Uni/PhD/MATLAB_utils/matlab_template.m", script_name);
    else
        filename = script_name;
        copyfile("~/Uni/PhD/MATLAB_utils/matlab_template.m", strcat(script_name, ".m"));
    end
    edit(filename);
end