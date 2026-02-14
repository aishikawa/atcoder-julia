function solve()
    Q = parse(Int, readline())
    l = 0
    v = zeros(Int, 100)
    for _=1:Q
        t, x = [parse(Int, x) for x in split(readline())]
        if t == 1
            v[l+1] = x
            l += 1
        else
            println(v[l-x+1])
        end
    end
end

solve()
