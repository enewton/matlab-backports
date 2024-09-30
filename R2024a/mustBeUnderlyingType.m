function mustBeUnderlyingType(value, typenames)
    if ~any(strcmpi(underlyingType(value), typenames))
        throwAsCaller(MException('MATLAB:validators:mustBeUnderlyingType', ...
            "Value must have one of these underlying types: %s.", join(typenames, ', ')));
    end
end
