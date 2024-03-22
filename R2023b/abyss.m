function map = abyss(m)
    if nargin < 1
        f = get(groot,'CurrentFigure');
        if isempty(f)
            m = size(get(groot,'DefaultFigureColormap'),1);
        else
            m = size(f.Colormap,1);
        end
    end

    values = [
        0.0392, 0.1373, 0.2196;
        0.1490, 0.5490, 0.8627];

    P = size(values,1);
    map = interp1(1:P, values, linspace(1,P,m), 'linear');
end
