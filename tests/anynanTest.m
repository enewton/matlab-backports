function anynanTest
    result = anynan(ones(3));
    assert(result == false);

    data = ones(3);
    data(2,2) = Inf;
    result = anynan(data);
    assert(result == false);

    data = ones(3);
    data(2,2) = nan;
    result = anynan(data);
    assert(result == true);
end
