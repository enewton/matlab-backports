function runTests()
    %RUNTESTS Very simple test runner
    %
    %   Using this as the built-in testing framework changes with MATLAB
    %   release and wanted something version agnostic.
    %
    %   All tests should pass using either the functions from this toolbox
    %   or built-in MATLAB ones.
    %
    %   See also activate.

    thisFolder = fullfile(fileparts(mfilename("fullpath")));
    addpath(fullfile(thisFolder,'tests'))
    d = dir(fullfile(thisFolder,'tests/*.m'));

    % Run 'future' tests if the functions are enabled
    if contains(path, '/future')
        addpath(fullfile(thisFolder,'future/tests'))
        d = [d; dir(fullfile(thisFolder,'future/tests/*.m'))];
    end

    % Run each test
    numFailures = 0;
    for lp = 1:numel(d)
        fprintf('Running: %s', d(lp).name);
        try
            run(d(lp).name)
            fprintf(' PASS\n');
        catch e
            numFailures = numFailures + 1;
            fprintf(' FAILED\n%s\n', e.message);
        end
    end

    % Display results
    if numFailures == 0
        fprintf('\nAll tests PASSED.\n');
    else
        fprintf('\n%d tests FAILED\n', numFailures);
    end
end
