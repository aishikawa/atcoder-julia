function solve()
    s = readline()
    k = parse(Int, readline())
    lens = length(s)
    b = 1
    e = 0
    numdot = 0
    ret = 0
    while e < lens
        e += 1
        if s[e] == '.'
            numdot += 1
        end
        while numdot > k
            if s[b] == '.'
                numdot -= 1
            end
            b += 1
        end
        ret = max(ret, e-b+1)
    end
    ret
end

println(solve())
