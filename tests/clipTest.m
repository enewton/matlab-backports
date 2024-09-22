function clipTest

    %% Clip vector
    X = 1:7;

    C = clip(X,3,6);

    assert(isequal(C, [3, 3, 3, 4, 5, 6, 6]));

    %% Clip matrix columns
    col = [1:7]';
    X = repmat(col,1,4);

    lower = [1 2 3 4];
    upper = 6;
    C = clip(X,lower,upper);

    assert(isequal(C, [ ...
        1     2     3     4
        2     2     3     4
        3     3     3     4
        4     4     4     4
        5     5     5     5
        6     6     6     6
        6     6     6     6]));

    %% Clip matrix rows
    row = 1:7;
    X = repmat(row,4,1);

    % Clip the values in each row of the matrix. Each element of the lower bound,
    % specified as a column vector, sets the minimum allowed value for the
    % corresponding row of the input data. The upper bound, specified as a scalar,
    % sets the maximum allowed value for all rows of the input data.

    lower = [1; 2; 3; 4];
    upper = 6;
    C = clip(X,lower,upper);
    assert(isequal(C, [ ...
        1     2     3     4     5     6     6
        2     2     3     4     5     6     6
        3     3     3     4     5     6     6
        4     4     4     4     5     6     6]));

    %% Specify only upper bound
    X = -6:6;
    C = clip(X,-Inf,0);
    assert(isequal(C, [ ...
        -6    -5    -4    -3    -2    -1     0     0     0     0     0     0     0]));

    % TODO Test tables
end
