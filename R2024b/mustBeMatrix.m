function mustBeMatrix(A)
    if ~ismatrix(A)
        throwAsCaller(MException('MATLAB:validators:mustBeMatrix', 'Value must be a matrix.'));
    end
end
