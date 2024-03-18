%% Normal (classic) operation
matrix = zeros(2,3,4,5);

assert(size(matrix,1) == 2);
assert(size(matrix,2) == 3);
assert(size(matrix,3) == 4);
assert(size(matrix,4) == 5);

%% Post R2019b functionality
assert(all(size(matrix,2,3) == [3,4])); %#ok<GTARG>
assert(all(size(matrix,[2,3]) == [3,4]));
