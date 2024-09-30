function mustBeATest()
    %MUSTBEATEST   Test script for mustBeA
    
    %% Failure case - 1 type
    try
        mustBeA('red', "uint8")
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeA'));
        assert(strcmp(e.message, "Value must be one of the following types: 'uint8'."));
    end
    
    %% Failure case - 2 types
    try
        mustBeA('red', ["uint8","float"])
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeA'));
        assert(strcmp(e.message, "Value must be one of the following types: 'uint8' or 'float'."));
    end
    
    %% Failure case - 3 types
    try
        mustBeA('red', ["string","uint8","float"])
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeA'));
        assert(strcmp(e.message, "Value must be one of the following types: 'string', 'uint8', or 'float'."));
    end
    
    %% Success
    mustBeA("red", ["string","uint8","float"])
    mustBeA(999, ["string","uint8","float"])
end
