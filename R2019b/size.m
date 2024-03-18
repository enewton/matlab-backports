function sz = size(A, varargin)
    if length(varargin) == 1
        dimensions = varargin{1};
    else
        dimensions = [varargin{:}];
    end
    
    sz = zeros(1,numel(dimensions));
    
    for lp = 1:numel(dimensions)
        sz(lp) = builtin('size', A, dimensions(lp));
    end
end
