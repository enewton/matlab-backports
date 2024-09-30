function mustBeTextScalarTest()
    %MUSTBETEXTSCALARTEST Test script for mustBeScalarOrEmpty

    %% Failure case - string array
    try
        mustBeTextScalar(["this" "will" "throw" "an" "error"]);
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeTextScalar'));
        assert(strcmp(e.message, "Value must be a character vector or string scalar."));
    end

    %% Failure case - char array
    try
        mustBeTextScalar({'this', 'will', 'throw', 'an', 'error'});
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeTextScalar'));
        assert(strcmp(e.message, "Value must be a character vector or string scalar."));
    end

    %% Failure case - missing array
    try
        mustBeTextScalar([string(missing), string(missing)]);
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeTextScalar'));
        assert(strcmp(e.message, "Value must be a character vector or string scalar."));
    end

    %% Success
    mustBeTextScalar("this is ok");
    mustBeTextScalar(string(missing));
    mustBeTextScalar("");
    mustBeTextScalar('this is ok');
    mustBeTextScalar('');
end
