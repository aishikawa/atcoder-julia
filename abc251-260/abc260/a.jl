function solve()
    s = readline()
    if s[1] == s[2] == s[3]
        -1
    elseif s[1] == s[2]
        s[3]
    elseif s[1] == s[3]
        s[2]
    elseif s[2] == s[3]
        s[1]
    else
        s[1]
    end
end

println(solve())
