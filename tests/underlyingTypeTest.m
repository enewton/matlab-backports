function underlyingTypeTest()
    %UNDERLYINGTYPETEST Test script for underlyingType

    assert(strcmpi(underlyingType(1.2), 'double'));
    assert(strcmpi(underlyingType(single(1.2)), 'single'));
end
