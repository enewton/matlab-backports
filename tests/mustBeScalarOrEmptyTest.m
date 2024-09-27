function mustBeScalarOrEmptyTest()
    %MUSTBESCALAROREMPTYTEST Test script for mustBeScalarOrEmpty
    
    %% Failure case
    try
        mustBeScalarOrEmpty([1 2]);
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeScalarOrEmpty'));
        assert(strcmp(e.message, "Value must be scalar or empty."));
    end
    
    %% Success
    mustBeScalarOrEmpty(999);
    mustBeScalarOrEmpty([]);
end
