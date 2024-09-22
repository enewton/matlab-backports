function allfiniteTest
    result = allfinite(ones(3));
    assert(result == true);

    data = ones(3);
    data(2,2) = Inf;
    result = allfinite(data);
    assert(result == false);

    data = ones(3);
    data(2,2) = nan;
    result = allfinite(data);
    assert(result == false);
end
