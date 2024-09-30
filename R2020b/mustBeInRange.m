function mustBeInRange(value, lower, upper, boundflag1, boundflag2)

    if nargin >= 5
        userFlags = [string(boundflag1),string(boundflag2)];
    elseif nargin >= 4
        userFlags = string(boundflag1);
    else
        userFlags = string([]);
    end

    exclusive = any(strcmpi('exclusive',userFlags));
    excludeLower = exclusive || any(strcmpi('exclude-lower',userFlags));
    excludeUpper = exclusive || any(strcmpi('exclude-upper',userFlags));

    ok = ((~excludeLower && all(ge(value, lower))) || (excludeLower && all(gt(value, lower)))) ...
        && ((~excludeUpper && all(le(value, upper))) || (excludeUpper && all(lt(value, upper))));

    if ~ok
        errorMessage = 'Value must be greater than';
        if excludeLower
            errorMessage = [errorMessage, sprintf(' %g, and ', lower)];
        else
            errorMessage = [errorMessage, sprintf(' or equal to %g, and ', lower)];
        end

        if excludeUpper
            errorMessage = [errorMessage, sprintf('less than %g.', upper)];
        else
            errorMessage = [errorMessage, sprintf('less than or equal to %g.', upper)];
        end

        throwAsCaller(MException('MATLAB:validators:mustBeInRange', errorMessage));
    end
end
