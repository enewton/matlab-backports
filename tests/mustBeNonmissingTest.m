function mustBeNonmissingTest()
    %MUSTBENONMISSINGTEST Test script for mustBeNonmissing
    
    %% Negative case
    pass = false;
    try
        strLabels = ["X Label",string(missing),"My Plot"];
        mustBeNonmissing(strLabels)
    catch e
        pass = strcmp(e.identifier, 'MATLAB:validators:mustBeNonmissing') ...
            && strcmp(e.message, 'Value must not have missing data.');
    end
    assert(pass);
end
