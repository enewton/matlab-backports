function reverseTest

    %% String array
    str = ["airport","control tower","radar","runway"];
    newStr = reverse(str);
    assert(all(newStr == ["tropria", "rewot lortnoc", "radar", "yawnur"]));

    %% Char cell array
    str = {'airport','control tower','radar','runway'};
    newStr = reverse(str);
    assert(isequal(newStr, {'tropria', 'rewot lortnoc', 'radar', 'yawnur'}));

    %% Single string
    newStr = reverse("abcde");
    assert(all(newStr == "edcba"));

    %% Single char
    newStr = reverse('abcde');
    assert(all(newStr == 'edcba'));
end
