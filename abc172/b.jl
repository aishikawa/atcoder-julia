function solve()
    s = readline()
    t = readline()

    ret = 0
    for i=1:length(s)
        if s[i] ≠ t[i]
            ret += 1
        end
    end
    ret
end

println(solve())
