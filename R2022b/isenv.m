function tf = isenv(varname)
    % TODO Possibly not quite correct on unix systems where you can define empty vars
    tf = ~isempty(getenv(varname));
end
