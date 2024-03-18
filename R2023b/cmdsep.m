function sep = cmdsep()
    if ispc()
        sep = '&&';
    else
        sep = ';';
    end
end
