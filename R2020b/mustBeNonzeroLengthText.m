function mustBeNonzeroLengthText(text)
    if ~ischar(text) && ~isstring(text) && ~iscellstr(text)
        throwAsCaller(MException('MATLAB:validators:mustBeNonzeroLengthText', 'Value must be a character vector, string array, or cell array of character vectors.'));
    end
    
    if strlength(text) == 0
        throwAsCaller(MException('MATLAB:validators:mustBeNonzeroLengthText', 'Value must be text with one or more characters.'));
    end
end

