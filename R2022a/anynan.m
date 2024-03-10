function result = anynan(array)
    result = any(isnan(array), 'all');
end
