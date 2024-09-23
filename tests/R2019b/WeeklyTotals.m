function r = WeeklyTotals(DailyTotals)
    arguments
        DailyTotals {mustBeMatrix, mustBeNumeric}
    end
    if isempty(DailyTotals)
        r = 0;
    else
        r = sum(DailyTotals,1);
    end
end
