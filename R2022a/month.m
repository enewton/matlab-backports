function m = month(date, format)
    if nargin < 2
        v = datevec(date);
    else
        v = datevec(date, format);
    end

    m = v(:,2);
    
    if ~ischar(date)
        m = reshape(m, size(date));
    end
end
