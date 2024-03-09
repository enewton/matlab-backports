function a = allfinite(matrix)
    a = ~any(isnan(matrix));
end
