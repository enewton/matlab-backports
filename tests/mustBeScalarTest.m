function mustBeScalarTest()
    %MUSTBESCALARTEST Test script for mustBeScalar

    %% Failure case
    try
        A = zeros(0,1);
        mustBeScalar(A)
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeScalar'));
        assert(strcmp(e.message, "Value must be a scalar."));
    end

    %% Success
    mustBeScalar(999);
end
