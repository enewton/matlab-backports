function mustBeScalar(A)
    if ~isscalar(A)
        throwAsCaller(MException('MATLAB:validators:mustBeScalar', 'Value must be a scalar.'));
    end
end
