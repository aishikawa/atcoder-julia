function solve()
    s = readline()
    ret = 0
    c = 0
    for w in s
        if w == 'R'
            c += 1
        else
            c = 0
        end
        ret = max(ret, c)
    end
    ret
end

println(solve())
