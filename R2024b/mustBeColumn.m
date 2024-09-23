function mustBeColumn(A)
    if ~iscolumn(A)
        throwAsCaller(MException('MATLAB:validators:mustBeColumn', 'Value must be a column vector.'));
    end
end
