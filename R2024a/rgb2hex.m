function hex = rgb2hex(rgb, varargin)
    persistent shortHex

    if size(rgb, ndims(rgb)) ~= 3
        error('Specify RGB values as an m-by-3 or m-by-n-by-3 matrix.');
    end

    shorthand = length(varargin) == 2 && strcmpi(varargin{1},'SHORTHAND') && varargin{2}==true;

    if shorthand && isempty(shortHex)
        % TODO Workout a function to replace this table
        shortHex = repmat('0',1,9);
        for lp = 1:14
            shortHex = [shortHex, repmat(sprintf('%X',lp),1,17)]; %#ok<AGROW>
        end
        shortHex = [shortHex, repmat('F',1,9)];
    end

    if ndims(rgb) == 2 %#ok<ISMAT>
        numCols = 1;
        rgb = reshape(rgb,size(rgb,1),1,[]);
    elseif ndims(rgb) == 3
        numCols = size(rgb,2);
    end

    if ~all(isa(rgb,'uint8'))
        if any(rgb > 1)
            error('Specify double or single values in the range [0, 1].');
        end

        rgb = round(rgb*255);
    end

    hex = strings(size(rgb,1), numCols);
    if shorthand
        for c = 1:numCols
            for r = 1:size(rgb,1)
                hex(r,c) = "#" + shortHex(rgb(r,c,:)+1);
            end
        end
    else
        for c = 1:numCols
            for r = 1:size(rgb,1)
                hex(r,c) = "#" + sprintf("%02X", rgb(r,c,:));
            end
        end
    end
end
