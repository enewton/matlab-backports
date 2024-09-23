function mustBeRow(A)
    if ~isrow(A)
        throwAsCaller(MException('MATLAB:validators:mustBeRow', 'Value must be a row vector.'));
    end
end
