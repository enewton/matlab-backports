function colormaplistTest
    cmaps = colormaplist;
    for cm = 1:length(cmaps)
        cmapFcn = str2func(cmaps(cm));
        result = cmapFcn(5);
        assert(width(result) == 3);
        assert(height(result) == 5);
    end
end
