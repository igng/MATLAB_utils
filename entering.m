function entering(s)
    global tab_counter
    tabs = repmat('\t', 1, tab_counter);
    fprintf(strcat(tabs, s, '\n'));
    tab_counter = tab_counter + 1;
end