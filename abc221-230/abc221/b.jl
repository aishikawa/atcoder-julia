function solve()
    s = readline()
    t = readline()
    l = length(s)
    x = 0
    i = 1
    while i ≤ l-1
        if s[i] ≠ t[i]
            if x == 0 && s[i+1] == t[i] && s[i] == t[i+1]
                x += 1
                i += 1
            else
                return "No"
            end
        end
        i += 1
    end
    if i == l
        s[l] == t[l] ? "Yes" : "No"
    else
        "Yes"
    end
end

println(solve())
