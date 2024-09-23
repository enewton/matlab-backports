function mustBeRowTest()
    %MUSTBEROWTEST Test script for mustBeRow
    
    %% Determine If Value Is Row Vector
    pass = false;
    try
        u = ones(4,5);
        mustBeRow(u)
    catch e
        pass = strcmp(e.identifier, 'MATLAB:validators:mustBeRow') ...
            && strcmp(e.message, 'Value must be a row vector.');
    end
    assert(pass);
    
    %% Validate That Function Input Is Numeric Row Vector
    if ~isMATLABReleaseOlderThan('R2019b')
        addpath(fullfile(fileparts(which(mfilename)), 'R2019b'))
        
        w = [35 42 33 70 25 23];
        r = DailyTotalRow(w);
        assert(isequal(r, 228));
        
        % Negative case
        pass = false;
        try
            w = [35 42 33 70 25 23]';
            r = DailyTotalRow(w);
        catch e
            pass = strcmp(e.identifier, 'MATLAB:validators:mustBeRow') ...
                && strcmp(e.message, 'Invalid argument at position 1. Value must be a row vector.');
        end
        assert(pass);
    end
end
