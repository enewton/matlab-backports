function rgb = hex2rgb(hexStr,varargin)

    if length(varargin) == 2 && strcmpi(varargin{1},'OUTPUTTYPE')
        switch upper(varargin{2})
            case 'SINGLE'
                conversion6 = @(m) single(m/255);
                conversion3 = @(m) single(m/15);
            case 'UINT8'
                conversion6 = @(m) uint8(m);
                conversion3 = @(m) uint8(m*17);
            case 'UINT16'
                conversion6 = @(m) uint16(m*257);
                conversion3 = @(m) uint16(m*17*257);
            otherwise
                error(['Unkown OutputType specified: ', char(varargin{2})]);
        end
    else
        conversion6 = @(m) double(m/255);
        conversion3 = @(m) double(m/15);
    end

    rgb = zeros(size(hexStr,1), size(hexStr,2), 3);

    for r = 1:size(hexStr,1)
        for c = 1:size(hexStr,2)
            assert(hexStr{r,c}(1) == '#');

            if length(hexStr{r,c}) == 7
                rgb(r,c,:) = conversion6([hex2dec(hexStr{r,c}(2:3)), hex2dec(hexStr{r,c}(4:5)), hex2dec(hexStr{r,c}(6:7))]);
            elseif length(hexStr{r,c}) == 4
                rgb(r,c,:) = conversion3([hex2dec(hexStr{r,c}(2)), hex2dec(hexStr{r,c}(3)), hex2dec(hexStr{r,c}(4))]);
            end
        end
    end

    if size(hexStr,1) == 1 || size(hexStr,2) == 1
        rgb = reshape(rgb,[],3);
    end
end
