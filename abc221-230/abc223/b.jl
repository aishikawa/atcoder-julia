function solve()
    s = readline()
    mini = maxi = s
    for _=1:length(s)-1
        s = s[2:end] * s[1]
        mini = min(mini, s)
        maxi = max(maxi, s)
    end
    println(mini)
    println(maxi)
end

solve()
