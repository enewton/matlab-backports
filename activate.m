function activate(varargin)
    %ACTIVATE the matlab-backports toolbox.
    %
    %   Adds all sub-folders to the MATLAB path which are greater than the current
    %   version number.
    %
    %   activate -verbose
    %   List which paths are being added.
    %
    %   activate -future
    %   Add bonus 'future' folder containing some other useful functions.
    %
    %   See also runTests.

    verbose = any(cellfun(@(p) strcmpi(p,'-VERBOSE'), varargin));
    future = any(cellfun(@(p) strcmpi(p,'-FUTURE'), varargin));

    if ~exist('isMATLABReleaseOlderThan','file')
        addpath(fullfile(fileparts(mfilename('fullpath')),'R2020b'))
    end

    d = dir(fullfile(fileparts(mfilename("fullpath")),'R*'));

    if verbose, fprintf('Adding backports for:'); end

    for lp = 1:numel(d)
        if d(lp).isdir && isMATLABReleaseOlderThan(d(lp).name)
            if verbose, fprintf(' %s', d(lp).name); end

            addpath(fullfile(d(lp).folder, d(lp).name))
        end
    end

    if future
        addpath(fullfile(fileparts(mfilename('fullpath')),'future'));
        if verbose, fprintf(' future'); end
    end

    if verbose, fprintf('\n'); end
end
