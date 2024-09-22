function heightTest
    assert(height(ones(2,3)) == 2);

    assert(height((table({'A';'B';'C'},[2; 3; 4]))) == 3);
end
