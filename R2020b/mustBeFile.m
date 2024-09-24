function mustBeFile(name)
    if ~isfile(name)
        throwAsCaller(MException('MATLAB:validators:mustBeFile', "The following files do not exist: '%s'.", name));
    end
end
