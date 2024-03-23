function C = clip(X,lower,upper)
    C = max(min(X,upper),lower);
end
