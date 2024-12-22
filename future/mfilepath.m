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

    %% Cope with Run Section
    if ispc()
        tempFolderPrefix = fullfile(getenv('TMP'),'Editor_');
    elseif ismac()
        tempFolderPrefix = '/private/var/folders';
    else
        % TODO Linux
        tempFolderPrefix = '[TODO]'; % This won't match below so will do nothing
    end

    if startsWith(filepath, tempFolderPrefix)
        filepath = fileparts(matlab.desktop.editor.getActiveFilename);
    end
end
