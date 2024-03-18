function newStr = reverse(str)
    
    newStr = str;
    
    if ischar(str)
        newStr = str(end:-1:1);
    elseif iscell(str)
        for lp = 1:numel(newStr)
            temp = newStr{lp};
            newStr{lp} = temp(end:-1:1);
        end
    else
        for lp = 1:numel(newStr)
            temp = newStr(lp);
            newStr(lp) = temp{1}(end:-1:1);
        end
    end
    
end
