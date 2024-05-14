
assert(day(datenum('14-mar-2023')) == 14);

assert(isequal(day([ ...
    datenum('12-mar-2023'), datenum('13-apr-2022')
    datenum('14-may-2021'), datenum('15-jun-2020')]), ...
    [12, 13; 14, 15]));

assert(day(728647) == 19)
assert(day('19-Dec-1994') == 19);
assert(day("19-Dec-1994") == 19);

assert(day('19.05.2000','dd.mm.yyyy') == 19)
