function mustBeValidVariableName(name)
    if ~isvarname(name)
        throwAsCaller(MException('MATLAB:validators:mustBeValidVariableName', ...
            "The following are not valid variable names: '%s'.", name));
    end
end
