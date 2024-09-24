function mustBeTextTest()
    %MUSTBETEXTTEST Test script for mustBeText
    
    %% Failure case
    try
        notText = [1 2 3];
        mustBeText(notText)
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeText'));
        assert(strcmp(e.message, 'Value must be a character vector, string array, or cell array of character vectors.'));
    end
    
    %% string array
    mustBeText(["string", "array"])
    
    %% character vector
    mustBeText('character vector')
    
    %% cell array of character vectors
    mustBeText({'cell', 'array', 'of', 'character', 'vectors'})

    %% An empty 0x0 char array
    mustBeText('')
    
    %% empty string
    mustBeText("")
    
    %% missing strings
    mustBeText(string(missing))
    
end
