function result = allfinite(array)
    result = all(isfinite(array), 'all');
end
