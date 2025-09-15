function result = numunique(array, varargin)
    if ~isstring(array)
        result = height(unique(array, varargin{:}));
    else
        result = length(unique(array));
    end
end
