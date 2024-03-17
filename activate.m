function activate(verbose)

    if nargin<1, verbose=false; end

    if ~exist('isMATLABReleaseOlderThan','builtin')
        addpath(fullfile(fileparts(mfilename("fullpath")),'R2020b'))
    end
    
    d = dir(fullfile(fileparts(mfilename("fullpath")),'R*'));

    if verbose, fprintf('Adding backports for:'); end

    for lp = 1:numel(d)
        if d(lp).isdir && isMATLABReleaseOlderThan(d(lp).name)
            if verbose, fprintf(' %s', d(lp).name); end

            addpath(d(lp).name)
        end
    end

    if verbose, fprintf('\n'); end
end
