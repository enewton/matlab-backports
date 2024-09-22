function isuniformTest

    %% Normal operation
    v = [3 6 9];
    tf = isuniform(v);
    assert(tf);

    v = [12 6 9];
    tf = isuniform(v);
    assert(~tf);

    v = [6 9 12];
    tf = isuniform(v);
    assert(tf);

    v = 0:1/3:1;
    tf = isuniform(v);
    assert(tf);

    v = linspace(10,-10,5);
    tf = isuniform(v);
    assert(tf);

    %% Test step
    v = [0 4 8 12];
    [tf,step] = isuniform(v);
    assert(tf);
    assert(step == 4);

    v = [0 4 8 15];
    [tf,step] = isuniform(v);
    assert(~tf);
    assert(isnan(step));

    %% Allow up to 4*eps
    v = [0, 4+4*eps(max(abs(v))), 8, 12];
    [tf,step] = isuniform(v);
    assert(tf);
    assert(step == 4);

    %% False when 5*eps
    v = [0, 4+5*eps(max(abs(v))), 8, 12];
    [tf,step] = isuniform(v);
    assert(~tf);
    assert(isnan(step));
end
