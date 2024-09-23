function r = DailyTotalRow(Sales)
    arguments
        Sales {mustBeRow, mustBeNumeric}
    end
    if isempty(Sales)
        r = 0;
    else
        r = sum(Sales);
    end
end
