function mustBeFileTest()
    %MUSTBEFILETEST Test script for mustBeFile
    
    % Failure case
    try
        mustBeFile("C:\Users\Public")
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeFile'));
        assert(strcmp(e.message, "The following files do not exist: 'C:\Users\Public'."));
    end
end
