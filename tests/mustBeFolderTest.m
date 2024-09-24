function mustBeFolderTest()
    %MUSTBEFOLDERTEST Test script for mustBeFolder
    
    %% Failure case
    try
        mustBeFolder("myFunct.m")
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeFolder'));
        assert(strcmp(e.message, "The following folders do not exist: 'myFunct.m'."));
    end
end

