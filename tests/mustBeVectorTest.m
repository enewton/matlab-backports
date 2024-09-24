function mustBeVectorTest()
    %MUSTBEVECTORTEST Test script for mustBeVector
    
    %% Failure case
    try
        a = rand(2);
        mustBeVector(a);
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeVector'));
        assert(strcmp(e.message, 'Value must be a 1-by-n vector or an n-by-1 vector.'));
    end
    
    %% Success case
    b = reshape(a,[1,numel(a)]);
    mustBeVector(b)
    
    %% Empty failure
    try
        mustBeVector([]);
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeVector'));
        assert(strcmp(e.message, 'Value must be a 1-by-n vector or an n-by-1 vector.'));
    end
    
    %% Empty success
    mustBeVector([],"allow-all-empties")
end

