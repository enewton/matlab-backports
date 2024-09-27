function mustBeNonzeroLengthTextTest()
    %MUSTBENONZEROLENGTHTEXTTEST Test script for mustBeNonzeroLengthText
    
    %% Failure case - Empty string
    try
        mustBeNonzeroLengthText("");
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeNonzeroLengthText'));
        assert(strcmp(e.message, "Value must be text with one or more characters."));
    end
    
    %% Failure case - Empty char
    try
        mustBeNonzeroLengthText('');
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeNonzeroLengthText'));
        assert(strcmp(e.message, "Value must be text with one or more characters."));
    end
    
    %% Failure case - Numeric
    try
        mustBeNonzeroLengthText(999);
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeNonzeroLengthText'));
        assert(strcmp(e.message, "Value must be a character vector, string array, or cell array of character vectors."));
    end
    
    %% Success
    mustBeNonzeroLengthText('abc12');
    mustBeNonzeroLengthText("abc12");
end
