function map = sky(m)
    if nargin < 1
        f = get(groot,'CurrentFigure');
        if isempty(f)
            m = size(get(groot,'DefaultFigureColormap'),1);
        else
            m = size(f.Colormap,1);
        end
    end

    values = [
        0.9020, 0.9451, 0.9725
        0.0000, 0.4471, 0.7412];

    P = size(values,1);
    map = interp1(1:P, values, linspace(1,P,m), 'linear');
end
