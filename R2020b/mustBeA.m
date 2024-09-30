function mustBeA(value, classNames)
    
    ok = true(1, numel(classNames));
    for lp = 1:length(classNames)
        ok(lp) = isa(value, classNames(lp));
    end
    
    if ~any(ok)
        throwAsCaller(MException('MATLAB:validators:mustBeA', ...
            "Value must be one of the following types: %s.", prettifyClassNames(classNames)));
    end
end

function classList = prettifyClassNames(classNames)
    classList = sprintf("'%s'", classNames(1));
    if numel(classNames) > 2
        for lp = 2:(numel(classNames) - 1)
            classList = sprintf("%s, '%s'", classList, classNames(lp));
        end
        
        classList = sprintf("%s, or '%s'", classList, classNames(end));
    elseif numel(classNames) > 1
        classList = sprintf("%s or '%s'", classList, classNames(end));
    end
end
