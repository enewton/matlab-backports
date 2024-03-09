function zscale(varargin)
    if nargin >= 2
        ax = varargin{1};
    else
        ax = gca;
        mode = varargin{1};
    end
    
    set(ax,'ZScale', mode)
end
