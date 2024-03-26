function filepath = mfilepath()
    %mfilepath   Path of currently executing MATLAB code file.
    % milepath returns a character vector containing the path of the most
    % recently invoked MATLAB code file. When called from within a file,
    % it returns the path of that file.
    %    
    % When called from the command line, mfilepath returns
    % an empty character vector.
    %
    % See also mfilename.
    
    stack = dbstack(1, '-completenames');
    if ~isempty(stack)
        filepath = fileparts(stack(1).file);
    else
        filepath = '';
    end
end
