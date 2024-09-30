function mustBeInRangeTest()
    %MUSTBEINRANGETEST Test script for mustBeInRange
    
    %% Restrict Values to Range
    try
        mustBeInRange(255,0,1)
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeInRange'));
        assert(strcmp(e.message, 'Value must be greater than or equal to 0, and less than or equal to 1.'));
    end
    
    %% Restrict Range Excluding Upper Bound
    try
        mustBeInRange([2 5 100], 0,100,"exclude-upper")
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeInRange'));
        assert(strcmp(e.message, 'Value must be greater than or equal to 0, and less than 100.'));
    end
    
    %% Restrict Range Excluding Upper Bound
    try
        mustBeInRange([0 5 100], 0,99,"exclude-lower")
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeInRange'));
        assert(strcmp(e.message, 'Value must be greater than 0, and less than or equal to 99.'));
    end
    
    %% Restrict Range Excluding Both Bounds
    try
        mustBeInRange([0 5 100], 0,100,"exclude-lower","exclude-upper")
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeInRange'));
        assert(strcmp(e.message, 'Value must be greater than 0, and less than 100.'));
    end

    %% Success
    mustBeInRange([0 5 100], 0,100)
    mustBeInRange([1 5 99], 0,100,"exclude-lower","exclude-upper")
end
