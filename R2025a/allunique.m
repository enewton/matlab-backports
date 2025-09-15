function result = allunique(array, varargin)
    result = all(size(unique(array, varargin{:})) == size(array));
end
