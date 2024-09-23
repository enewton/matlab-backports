function r = DailyTotalColumn(Sales)
    arguments
        Sales {mustBeColumn, mustBeNumeric}
    end
    
    if isempty(Sales)
        r = 0;
    else
        r = sum(Sales);
    end
end
