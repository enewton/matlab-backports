function y = year(date, format)
    if nargin < 2
        v = datevec(date);
    else
        v = datevec(date, format);
    end

    y = v(:,1);

    if ~ischar(date)
        y = reshape(y, size(date));
    end
end
