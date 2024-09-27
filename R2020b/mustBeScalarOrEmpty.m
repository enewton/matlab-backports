function mustBeScalarOrEmpty(A)
    if ~isscalar(A) && ~isempty(A)
        throwAsCaller(MException('MATLAB:validators:mustBeScalarOrEmpty', 'Value must be scalar or empty.'));
    end
end
