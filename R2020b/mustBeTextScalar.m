function mustBeTextScalar(value)
    if (~ischar(value) && ~isstring(value) && ~all(ismissing(value))) || (~ischar(value) && length(value) > 1)
        throwAsCaller(MException('MATLAB:validators:mustBeTextScalar', ...
            'Value must be a character vector or string scalar.'));
    end
end
