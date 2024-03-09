function older = isMATLABReleaseOlderThan(release, stage, update)
    v = ver('matlab');
    older = str2double(v.Release(3:6)) < str2double(release(2:5)) ...
        | v.Release(7) < release(6);
end
