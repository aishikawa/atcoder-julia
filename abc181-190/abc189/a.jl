function solve()
    s = readline()
    if s[1] == s[2] && s[2] == s[3]
        "Won"
    else
        "Lost"
    end
end

println(solve())
