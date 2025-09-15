function numuniqueTest
    A = [9; 2; 9; 9; 5; 2];
    result = numunique(A);
    assert(result == 3);

    A = [5; 8; NaN; NaN];
    result = numunique(A);
    assert(result == 4);

    A = ["dog" "cat" "horse" "dog "];
    result = numunique(A);
    assert(result == 4);

    A = [1 2; 3 4; 1 2; 1 2; 3 4];
    result = numunique(A);
    assert(result == 4);
    resultRows = numunique(A, "rows");
    assert(resultRows == 2);

    A = [38; 43; 38; 40];
    B = logical([1; 0; 1; 1]);
    T = table(A,B,RowNames=["Smith" "Johnson" "Williams" "Jones"]);
    result = numunique(T);
    assert(result == 3);

    A = [1 2 3 4; 2 3 4 5; 1 2 3 4];
    result = numunique(A, "rows");
    assert(result == 2);
end
