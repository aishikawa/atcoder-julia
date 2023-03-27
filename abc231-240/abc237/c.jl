function solve()
    s = readline()
    len = length(s)

    l = 1
    r = len

    while  l ≤ len && s[l] == 'a'
        l += 1
    end
    while r > 0 && s[r] == 'a' 
        r -= 1
    end

    if l == len+1 && r == 0
        "Yes"
    elseif l-1 > (len-r)
        "No"
    else
        while l ≤ r
            if s[l] ≠ s[r]
                return "No"
            else
                l += 1
                r -= 1
            end
        end
        "Yes"
    end
end

println(solve())
