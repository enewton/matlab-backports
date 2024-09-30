function mustBeUnderlyingTypeTest()
    %MUSTBEUNDERLYINGTYPETEST Test script for mustBeUnderlyingType

    %% Failure case - single vs double
    try
        mustBeUnderlyingType(single(999), "double")
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeUnderlyingType'));
        assert(strcmp(e.message, "Value must have one of these underlying types: double."));
    end

    %% Failure case - string
    try
        mustBeUnderlyingType('apple', ["double","single"])
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeUnderlyingType'));
        assert(strcmp(e.message, "Value must have one of these underlying types: double, single."));
    end

    %% Success
    mustBeUnderlyingType(999, "double")
    mustBeUnderlyingType(999, ["double","single"])
end
