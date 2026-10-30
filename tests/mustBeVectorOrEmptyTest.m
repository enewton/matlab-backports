function mustBeVectorOrEmptyTest()
    %MUSTBEVECTOROREMPTYTEST Test script for mustBeVector

    %% Failure case
    try
        a = ones(2);
        mustBeVectorOrEmpty(a);
        assert(false, 'Exception has not been thrown');
    catch e
        assert(strcmp(e.identifier, 'MATLAB:validators:mustBeVectorOrEmpty'));
        assert(strcmp(e.message, 'Value must be a 1-by-n vector, an n-by-1 vector, or empty.'));
    end

    %% Success case
    b = reshape(a,[1,numel(a)]);
    mustBeVectorOrEmpty(b)

    %% Empty success
    mustBeVectorOrEmpty([])

    A = zeros(0,3);
    mustBeVectorOrEmpty(A)
end

