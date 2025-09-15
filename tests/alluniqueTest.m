function alluniqueTest
    A = [9; 2; 9; 9; 5; 2];
    result = allunique(A);
    assert(result == false);

    A = [5; 8; NaN; NaN];
    result = allunique(A);
    assert(result == true);

    A = ["dog" "cat" "horse" "dog "];
    result = allunique(A);
    assert(result == true);

    A = [1 2; 2 1; 3 4; 4 3];
    result = allunique(A);
    assert(result == false);
    resultRow = allunique(A,"rows");
    assert(resultRow == true);

    A = [38; 43; 38; 40];
    B = logical([1; 0; 1; 1]);
    T = table(A,B,RowNames=["Smith" "Johnson" "Williams" "Jones"]);
    result = allunique(T);
    assert(result == false);
end
