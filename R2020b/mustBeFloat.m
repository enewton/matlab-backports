function mustBeFloat(A)
    if ~isfloat(A)
        throwAsCaller(MException('MATLAB:validators:mustBeFloat', 'Value must be a floating-point array.'));
    end
end
