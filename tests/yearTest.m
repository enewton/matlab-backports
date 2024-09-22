function yearTest
    assert(year(datenum('1-mar-2023')) == 2023);

    assert(isequal(year([ ...
        datenum('1-mar-2023'), datenum('1-mar-2022')
        datenum('1-mar-2021'), datenum('1-mar-2020')]), ...
        [2023, 2022; 2021, 2020]));

    assert(year(728647) == 1994)
    assert(year('19-Dec-1994') == 1994);
    assert(year("19-Dec-1994") == 1994);

    assert(year('19.05.2000','dd.mm.yyyy') == 2000)
end
