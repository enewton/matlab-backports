function mustBeValidVariableNameTest()
    %MUSTBEVALIDVARIABLENAMETEST Test script for mustBeValidVariableName
    
    %% Failure case
    try
        mustBeValidVariableName('12abc');
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeValidVariableName'));
        assert(strcmp(e.message, "The following are not valid variable names: '12abc'."));
    end
    
    %% Success
    mustBeValidVariableName('abc12');
    mustBeValidVariableName("abc12");
end
