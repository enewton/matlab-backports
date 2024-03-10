function runTests()
    %RUNTESTS Very simple test runner
    %   Using this as the built-in testing framework changes with MATLAB release and
    %   wanted something version agnostic.

    test_path = fullfile(fileparts(mfilename("fullpath")),'tests')
    addpath(test_path)
    d = dir(fullfile(test_path,'*.m'));

    for lp = 1:numel(d)
        fprintf('Running: %s', d(lp).name);
        try
            run(d(lp).name)
            fprintf(' PASS\n');
        catch e
            fprintf(' FAILED\n%s\n', e.message);
        end
    end
end
