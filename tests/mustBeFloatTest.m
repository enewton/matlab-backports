function mustBeFloatTest()
    %MUSTBEFLOATTEST Test script for mustBeFloat
    
    %% Failure case
    try
        a = int8([2 4 8 16]);
        mustBeFloat(a);
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeFloat'));
        assert(strcmp(e.message, 'Value must be a floating-point array.'));
    end
    
    %% Success case
    mustBeFloat(0.7);
end
