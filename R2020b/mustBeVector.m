function mustBeVector(A, option)
    allowEmpty = nargin>=2 && strcmpi(option,'allow-all-empties');
    
    if ~isvector(A) && ~(allowEmpty && isempty(A))
        throwAsCaller(MException('MATLAB:validators:mustBeVector', 'Value must be a 1-by-n vector or an n-by-1 vector.'));
    end
end
