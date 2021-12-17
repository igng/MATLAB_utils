function exiting(s)
    global tab_counter
    tab_counter = tab_counter - 1;
    tabs = repmat('\t', 1, tab_counter);
    fprintf(strcat(tabs, s, '\tOK\n'));
end