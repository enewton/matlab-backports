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

function r = WeeklyTotals(DailyTotals)
    arguments
        DailyTotals {mustBeMatrix, mustBeNumeric}
    end
    if isempty(DailyTotals)
        r = 0;
    else
        r = sum(DailyTotals,1);
    end
end
