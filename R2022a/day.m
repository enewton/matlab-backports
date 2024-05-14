function d = day(date, format)
    if nargin < 2
        v = datevec(date);
    else
        v = datevec(date, format);
    end

    d = v(:,3);
    
    if ~ischar(date)
        d = reshape(d, size(date));
    end
end
