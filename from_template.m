function [] = from_template(script_name)
    copyfile("/home/ryuu/Uni/PhD/MATLAB_utils/matlab_template.m", strcat(script_name, ".m"));
    edit(script_name);
end