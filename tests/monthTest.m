function monthTest
    assert(month(datenum('1-mar-2023')) == 3);

    assert(isequal(month([ ...
        datenum('1-mar-2023'), datenum('1-apr-2022')
        datenum('1-may-2021'), datenum('1-jun-2020')]), ...
        [3, 4; 5, 6]));

    assert(month(728647) == 12)
    assert(month('19-Dec-1994') == 12);
    assert(month("19-Dec-1994") == 12);

    assert(month('19.05.2000','dd.mm.yyyy') == 5)
end
