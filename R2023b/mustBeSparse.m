function mustBeSparse(A)
    if ~issparse(A)
        throwAsCaller(MException('MATLAB:validators:mustBeSparse', 'Value must be sparse.'));
    end
end
