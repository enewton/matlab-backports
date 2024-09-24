function mustBeFolder(name)
    if ~isfolder(name)
        throwAsCaller(MException('MATLAB:validators:mustBeFolder', "The following folders do not exist: '%s'.", name));
    end
end
