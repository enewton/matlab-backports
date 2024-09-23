function mustBeSparseTest()
    %MUSTBESPARSETEST Test script for mustBeSparse

    %% Validate That Input Is Sparse
    pass = false;
    try
        X = rand(100);
        mustBeSparse(X)
    catch e
        pass = strcmp(e.identifier, 'MATLAB:validators:mustBeSparse') ...
            && strcmp(e.message, 'Value must be sparse.');
    end
    assert(pass);

    %% Restrict Property Values
    pass = false;
    try
        x = rand(100);
        obj = MySparseClass;
        obj.Prop1 = x.^2;
    catch e
        pass = strcmp(e.identifier, 'MATLAB:validators:mustBeSparse') ...
            && startsWith(e.message, "Error setting property 'Prop1'") ...
            && contains(e.message, 'Value must be sparse.');
    end
    assert(pass);

    % Positive case
    x = sparse(eye(10));
    obj = MySparseClass();
    obj.Prop1 = x.^2;

    %% Restrain Function Argument Values
    pass = false;
    try
        z = eye(10);
        r = sparseDiag(z);
    catch e
        pass = strcmp(e.identifier, 'MATLAB:validators:mustBeSparse') ...
            && strcmp(e.message, 'Invalid argument at position 1. Value must be sparse.');
    end
    assert(pass);

    % Positive case
    z = sparse(eye(10));
    r = sparseDiag(z);
end

function r = sparseDiag(z)
    arguments
        z (10,10) {mustBeSparse}
    end
    r = diag(z);
end
