function [tf,step] = isuniform(vector)

    step = mean(diff(vector));
    tf = all(abs(diff(vector) - step) <= 4*eps(max(abs(vector))));
    if ~tf
        step = NaN;
    end

end
