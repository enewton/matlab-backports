function mustBeNonmissing(A)
    if any(ismissing(A))
        throwAsCaller(MException('MATLAB:validators:mustBeNonmissing', 'Value must not have missing data.'));
    end
end
