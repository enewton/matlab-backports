function mustBeText(text)
    if ~ischar(text) && ~isstring(text) && ~iscellstr(text)
        throwAsCaller(MException('MATLAB:validators:mustBeText', 'Value must be a character vector, string array, or cell array of character vectors.'));
    end
end
