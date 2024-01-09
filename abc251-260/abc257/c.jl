function solve()
    n = parse(Int, readline())
    s = [parse(Int, x) for x in  readline()]
    ws = [parse(Int, x) for x in split(readline())]

    numadult = sum(s)
    cur = ret = numadult

    sp = sortperm(ws)
    ws = ws[sp]
    s = s[sp]

    i = 0
    while i < n
        i += 1
        cur += s[i] == 0 ? 1 : -1
        while i ≠ n && ws[i] == ws[i+1]
            i += 1
            cur += s[i] == 0 ? 1 : -1
        end

        ret = max(cur, ret)
    end

    ret
end

println(solve())
