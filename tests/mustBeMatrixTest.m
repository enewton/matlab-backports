function mustBeMatrixTest()
    %MUSTBEMATRIXTEST Test script for mustBeMatrix
    
    %% Determine If Value is Matrix
    pass = false;
    try
        a = ones(2,3,2);
        mustBeMatrix(a)
    catch e
        pass = strcmp(e.identifier, 'MATLAB:validators:mustBeMatrix') ...
            && strcmp(e.message, 'Value must be a matrix.');
    end
    assert(pass);
    
    %% Validate That Function Input Is Numeric Matrix
    if ~isMATLABReleaseOlderThan('R2019b')
        addpath(fullfile(fileparts(which(mfilename)), 'R2019b'))
        
        W = magic(4);
        r = WeeklyTotals(W);
        assert(isequal(r, [34    34    34    34]));
        
        % Negative case
        pass = false;
        try
            a = ones(2,3,2);
            r = WeeklyTotals(a);
        catch e
            pass = strcmp(e.identifier, 'MATLAB:validators:mustBeMatrix') ...
                && strcmp(e.message, 'Invalid argument at position 1. Value must be a matrix.');
        end
        assert(pass);
    end
end
