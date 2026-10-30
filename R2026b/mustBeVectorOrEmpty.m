function mustBeVectorOrEmpty(A)
    if ~(isvector(A) || isempty(A))
        throwAsCaller(MException('MATLAB:validators:mustBeVectorOrEmpty', 'Value must be a 1-by-n vector, an n-by-1 vector, or empty.'));
    end
end
