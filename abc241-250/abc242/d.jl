function solve3(c, i)
    'A' + (c - 'A' + i) % 3
end

function solve2(s, t, k)
    if t == 0
        s[k]
    elseif k == 1
        solve3(s[1], t)
    else
        solve3(solve2(s, t-1, (k-1)÷2+1), (k-1)%2+1)
    end
end

function solve()
    s = readline()
    q = parse(Int, readline())

    for _=1:q
        t, k = [parse(Int, x) for x in split(readline())]
        println(solve2(s, t, k))
    end
end

solve()
