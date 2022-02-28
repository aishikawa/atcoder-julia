using DataStructures

function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    d = DefaultDict{Int, Int}(0)

    for a in as
        d[a] += 1
    end

    ans = 0
    r = n
    for v in values(d)
        ans += v * (r-v)
        r -= v
    end
    ans
end

println(solve())
